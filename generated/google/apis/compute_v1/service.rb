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
    module ComputeV1
      # Compute Engine API
      #
      # API for the Google Compute Engine service.
      #
      # @example
      #    require 'google/apis/compute_v1'
      #
      #    Compute = Google::Apis::ComputeV1 # Alias the module
      #    service = Compute::ComputeService.new
      #
      # @see https://developers.google.com/compute/docs/reference/latest/
      class ComputeService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'compute/v1/projects/')
        end
        
        # Retrieves the list of addresses grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::AddressAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AddressAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_addresses(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/addresses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::AddressAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] address
        #   Name of the address resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_address(project, region, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses/{address}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] address
        #   Name of the address resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Address] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Address]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_address(project, region, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses/{address}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Address::Representation
          command.response_class = Google::Apis::ComputeV1::Address
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an address resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [Google::Apis::ComputeV1::Address] address_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_address(project, region, address_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Address::Representation
          command.request_object = address_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of address resources contained within the specified region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::AddressList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AddressList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_addresses(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/addresses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressList::Representation
          command.response_class = Google::Apis::ComputeV1::AddressList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of autoscalers grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::AutoscalerAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AutoscalerAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregated_list_autoscaler(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/autoscalers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AutoscalerAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::AutoscalerAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified autoscaler resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] autoscaler
        #   Name of the persistent autoscaler resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_autoscaler(project, zone, autoscaler, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/autoscalers/{autoscaler}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified autoscaler resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] autoscaler
        #   Name of the persistent autoscaler resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Autoscaler] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Autoscaler]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_autoscaler(project, zone, autoscaler, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/autoscalers/{autoscaler}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Autoscaler::Representation
          command.response_class = Google::Apis::ComputeV1::Autoscaler
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an autoscaler resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [Google::Apis::ComputeV1::Autoscaler] autoscaler_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_autoscaler(project, zone, autoscaler_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/autoscalers'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Autoscaler::Representation
          command.request_object = autoscaler_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of autoscaler resources contained within the specified zone.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::AutoscalerList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AutoscalerList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_autoscalers(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/autoscalers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AutoscalerList::Representation
          command.response_class = Google::Apis::ComputeV1::AutoscalerList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an autoscaler resource in the specified project using the data
        # included in the request. This method supports patch semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] autoscaler
        #   Name of the autoscaler resource to update.
        # @param [Google::Apis::ComputeV1::Autoscaler] autoscaler_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_autoscaler(project, zone, autoscaler, autoscaler_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/autoscalers'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::Autoscaler::Representation
          command.request_object = autoscaler_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an autoscaler resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [Google::Apis::ComputeV1::Autoscaler] autoscaler_object
        # @param [String] autoscaler
        #   Name of the autoscaler resource to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_autoscaler(project, zone, autoscaler_object = nil, autoscaler: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/autoscalers'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::Autoscaler::Representation
          command.request_object = autoscaler_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['autoscaler'] = autoscaler unless autoscaler.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified BackendService resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_backend_service(project, backend_service, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified BackendService resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::BackendService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::BackendService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backend_service(project, backend_service, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::BackendService::Representation
          command.response_class = Google::Apis::ComputeV1::BackendService
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the most recent health check results for this BackendService.
        # @param [String] project
        # @param [String] backend_service
        #   Name of the BackendService resource to which the queried instance belongs.
        # @param [Google::Apis::ComputeV1::ResourceGroupReference] resource_group_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::BackendServiceGroupHealth] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::BackendServiceGroupHealth]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backend_service_health(project, backend_service, resource_group_reference_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}/getHealth'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ResourceGroupReference::Representation
          command.request_object = resource_group_reference_object
          command.response_representation = Google::Apis::ComputeV1::BackendServiceGroupHealth::Representation
          command.response_class = Google::Apis::ComputeV1::BackendServiceGroupHealth
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a BackendService resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::BackendService] backend_service_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_backend_service(project, backend_service_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::BackendService::Representation
          command.request_object = backend_service_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of BackendService resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::BackendServiceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::BackendServiceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_backend_services(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::BackendServiceList::Representation
          command.response_class = Google::Apis::ComputeV1::BackendServiceList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the entire content of the BackendService resource. This method supports
        # patch semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to update.
        # @param [Google::Apis::ComputeV1::BackendService] backend_service_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_backend_service(project, backend_service, backend_service_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::BackendService::Representation
          command.request_object = backend_service_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the entire content of the BackendService resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] backend_service
        #   Name of the BackendService resource to update.
        # @param [Google::Apis::ComputeV1::BackendService] backend_service_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_backend_service(project, backend_service, backend_service_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/backendServices/{backendService}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::BackendService::Representation
          command.request_object = backend_service_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['backendService'] = backend_service unless backend_service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of disk type resources grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::DiskTypeAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskTypeAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_disk_types(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/diskTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskTypeAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::DiskTypeAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified disk type resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk_type
        #   Name of the disk type resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::DiskType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_disk_type(project, zone, disk_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/diskTypes/{diskType}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskType::Representation
          command.response_class = Google::Apis::ComputeV1::DiskType
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['diskType'] = disk_type unless disk_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of disk type resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::DiskTypeList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskTypeList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_disk_types(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/diskTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskTypeList::Representation
          command.response_class = Google::Apis::ComputeV1::DiskTypeList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of disks grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::DiskAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_disk(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/disks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::DiskAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a snapshot of this disk.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk
        #   Name of the persistent disk to snapshot.
        # @param [Google::Apis::ComputeV1::Snapshot] snapshot_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_disk_snapshot(project, zone, disk, snapshot_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks/{disk}/createSnapshot'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Snapshot::Representation
          command.request_object = snapshot_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['disk'] = disk unless disk.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified persistent disk. Deleting a disk removes its data
        # permanently and is irreversible. However, deleting a disk does not delete any
        # snapshots previously made from the disk. You must separately delete snapshots.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk
        #   Name of the persistent disk to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_disk(project, zone, disk, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks/{disk}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['disk'] = disk unless disk.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a specified persistent disk.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] disk
        #   Name of the persistent disk to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Disk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Disk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_disk(project, zone, disk, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks/{disk}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Disk::Representation
          command.response_class = Google::Apis::ComputeV1::Disk
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['disk'] = disk unless disk.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a persistent disk in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [Google::Apis::ComputeV1::Disk] disk_object
        # @param [String] source_image
        #   Optional. Source image to restore onto a disk.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_disk(project, zone, disk_object = nil, source_image: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Disk::Representation
          command.request_object = disk_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['sourceImage'] = source_image unless source_image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of persistent disks contained within the specified zone.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::DiskList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::DiskList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_disks(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/disks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::DiskList::Representation
          command.response_class = Google::Apis::ComputeV1::DiskList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified firewall resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_firewall(project, firewall, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified firewall resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Firewall] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Firewall]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_firewall(project, firewall, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Firewall::Representation
          command.response_class = Google::Apis::ComputeV1::Firewall
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a firewall resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Firewall] firewall_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_firewall(project, firewall_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Firewall::Representation
          command.request_object = firewall_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of firewall resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::FirewallList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::FirewallList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_firewalls(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::FirewallList::Representation
          command.response_class = Google::Apis::ComputeV1::FirewallList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified firewall resource with the data included in the request.
        # This method supports patch semantics.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to update.
        # @param [Google::Apis::ComputeV1::Firewall] firewall_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_firewall(project, firewall, firewall_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::Firewall::Representation
          command.request_object = firewall_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified firewall resource with the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] firewall
        #   Name of the firewall resource to update.
        # @param [Google::Apis::ComputeV1::Firewall] firewall_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_firewall(project, firewall, firewall_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/firewalls/{firewall}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::Firewall::Representation
          command.request_object = firewall_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['firewall'] = firewall unless firewall.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of forwarding rules grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRuleAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRuleAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_forwarding_rules(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/forwardingRules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::ForwardingRuleAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_forwarding_rule(project, region, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_forwarding_rule(project, region, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRule::Representation
          command.response_class = Google::Apis::ComputeV1::ForwardingRule
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ForwardingRule resource in the specified project and region using
        # the data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [Google::Apis::ComputeV1::ForwardingRule] forwarding_rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_forwarding_rule(project, region, forwarding_rule_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ForwardingRule::Representation
          command.request_object = forwarding_rule_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of ForwardingRule resources available to the specified
        # project and region.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRuleList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRuleList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_forwarding_rules(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleList::Representation
          command.response_class = Google::Apis::ComputeV1::ForwardingRuleList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes target url for forwarding rule.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource in which target is to be set.
        # @param [Google::Apis::ComputeV1::TargetReference] target_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_forwarding_rule_target(project, region, forwarding_rule, target_reference_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/forwardingRules/{forwardingRule}/setTarget'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetReference::Representation
          command.request_object = target_reference_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] address
        #   Name of the address resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_global_address(project, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses/{address}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified address resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] address
        #   Name of the address resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Address] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Address]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_address(project, address, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses/{address}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Address::Representation
          command.response_class = Google::Apis::ComputeV1::Address
          command.params['project'] = project unless project.nil?
          command.params['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an address resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Address] address_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_global_address(project, address_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Address::Representation
          command.request_object = address_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of global address resources.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::AddressList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::AddressList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_addresses(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/addresses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::AddressList::Representation
          command.response_class = Google::Apis::ComputeV1::AddressList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_global_forwarding_rule(project, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified ForwardingRule resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_forwarding_rule(project, forwarding_rule, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules/{forwardingRule}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRule::Representation
          command.response_class = Google::Apis::ComputeV1::ForwardingRule
          command.params['project'] = project unless project.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ForwardingRule resource in the specified project and region using
        # the data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::ForwardingRule] forwarding_rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_global_forwarding_rule(project, forwarding_rule_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ForwardingRule::Representation
          command.request_object = forwarding_rule_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of ForwardingRule resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ForwardingRuleList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ForwardingRuleList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_forwarding_rules(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ForwardingRuleList::Representation
          command.response_class = Google::Apis::ComputeV1::ForwardingRuleList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes target url for forwarding rule.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] forwarding_rule
        #   Name of the ForwardingRule resource in which target is to be set.
        # @param [Google::Apis::ComputeV1::TargetReference] target_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_global_forwarding_rule_target(project, forwarding_rule, target_reference_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/forwardingRules/{forwardingRule}/setTarget'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetReference::Representation
          command.request_object = target_reference_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['forwardingRule'] = forwarding_rule unless forwarding_rule.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of all operations grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::OperationAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_global_operation(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::OperationAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Operations resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] operation
        #   Name of the Operations resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_global_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations/{operation}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified Operations resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] operation
        #   Name of the Operations resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of Operation resources contained within the specified
        # project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_operations(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationList::Representation
          command.response_class = Google::Apis::ComputeV1::OperationList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified HttpHealthCheck resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_http_health_check(project, http_health_check, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified HttpHealthCheck resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::HttpHealthCheck] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::HttpHealthCheck]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_http_health_check(project, http_health_check, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::HttpHealthCheck::Representation
          command.response_class = Google::Apis::ComputeV1::HttpHealthCheck
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a HttpHealthCheck resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::HttpHealthCheck] http_health_check_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_http_health_check(project, http_health_check_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::HttpHealthCheck::Representation
          command.request_object = http_health_check_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of HttpHealthCheck resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::HttpHealthCheckList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::HttpHealthCheckList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_http_health_checks(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::HttpHealthCheckList::Representation
          command.response_class = Google::Apis::ComputeV1::HttpHealthCheckList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a HttpHealthCheck resource in the specified project using the data
        # included in the request. This method supports patch semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to update.
        # @param [Google::Apis::ComputeV1::HttpHealthCheck] http_health_check_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_http_health_check(project, http_health_check, http_health_check_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::HttpHealthCheck::Representation
          command.request_object = http_health_check_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a HttpHealthCheck resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] http_health_check
        #   Name of the HttpHealthCheck resource to update.
        # @param [Google::Apis::ComputeV1::HttpHealthCheck] http_health_check_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_http_health_check(project, http_health_check, http_health_check_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/httpHealthChecks/{httpHealthCheck}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::HttpHealthCheck::Representation
          command.request_object = http_health_check_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['httpHealthCheck'] = http_health_check unless http_health_check.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified image resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] image
        #   Name of the image resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_image(project, image, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images/{image}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['image'] = image unless image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the deprecation status of an image.
        # If an empty request body is given, clears the deprecation status instead.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] image
        #   Image name.
        # @param [Google::Apis::ComputeV1::DeprecationStatus] deprecation_status_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deprecate_image(project, image, deprecation_status_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images/{image}/deprecate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::DeprecationStatus::Representation
          command.request_object = deprecation_status_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['image'] = image unless image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified image resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] image
        #   Name of the image resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Image] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Image]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_image(project, image, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images/{image}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Image::Representation
          command.response_class = Google::Apis::ComputeV1::Image
          command.params['project'] = project unless project.nil?
          command.params['image'] = image unless image.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an image resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Image] image_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_image(project, image_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Image::Representation
          command.request_object = image_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of image resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ImageList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ImageList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_images(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/images'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ImageList::Representation
          command.response_class = Google::Apis::ComputeV1::ImageList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified instances from the managed instance group, and from any
        # target pools where they are a member. The instances are not deleted. The
        # managed instance group automatically reduces its targetSize value by the
        # number of instances that you abandon from the group.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ComputeV1::InstanceGroupManagersAbandonInstancesRequest] instance_group_managers_abandon_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def abandon_instance_group_manager_instances(project, zone, instance_group_manager, instance_group_managers_abandon_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/abandonInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupManagersAbandonInstancesRequest::Representation
          command.request_object = instance_group_managers_abandon_instances_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of managed instance groups, and groups them by project and
        # zone.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupManagerAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupManagerAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_instance_group_managers(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/instanceGroupManagers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupManagerAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupManagerAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified managed instance group resource.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_group_manager(project, zone, instance_group_manager, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified instances. The instances are deleted and removed from
        # the instance group and any target pools where they are a member. The managed
        # instance group automatically reduces its targetSize value by the number of
        # instances that you delete.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ComputeV1::InstanceGroupManagersDeleteInstancesRequest] instance_group_managers_delete_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_group_manager_instances(project, zone, instance_group_manager, instance_group_managers_delete_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/deleteInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupManagersDeleteInstancesRequest::Representation
          command.request_object = instance_group_managers_delete_instances_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified managed instance group resource.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupManager] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupManager]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_group_manager(project, zone, instance_group_manager, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupManager::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupManager
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a managed instance group resource in the specified project using the
        # data that is included in the request.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [Google::Apis::ComputeV1::InstanceGroupManager] instance_group_manager_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance_group_manager(project, zone, instance_group_manager_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupManager::Representation
          command.request_object = instance_group_manager_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of managed instance groups that are contained within the
        # specified project and zone.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupManagerList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupManagerList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_group_managers(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupManagerList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupManagerList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists managed instances.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the managed instance group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupManagersListManagedInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupManagersListManagedInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_group_manager_managed_instances(project, zone, instance_group_manager, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/listManagedInstances'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupManagersListManagedInstancesResponse::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupManagersListManagedInstancesResponse
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Recreates the specified instances. The instances are deleted, then recreated
        # using the managed instance group's current instance template.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ComputeV1::InstanceGroupManagersRecreateInstancesRequest] instance_group_managers_recreate_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recreate_instance_group_manager_instances(project, zone, instance_group_manager, instance_group_managers_recreate_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/recreateInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupManagersRecreateInstancesRequest::Representation
          command.request_object = instance_group_managers_recreate_instances_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resizes the managed instance group. If you increase the size, the group
        # creates new instances using the current instance template. If you decrease the
        # size, the group removes instances in the order that is outlined in Resizing a
        # managed instance group.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Fixnum] size
        #   The number of running instances that the managed instance group should
        #   maintain at any given time. The group automatically adds or removes instances
        #   to maintain the number of instances specified by this parameter.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resize_instance_group_manager(project, zone, instance_group_manager, size, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resize'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['size'] = size unless size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Specifies the instance template to use when creating new instances in this
        # group. The templates for existing instances in the group do not change unless
        # you recreate them.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ComputeV1::InstanceGroupManagersSetInstanceTemplateRequest] instance_group_managers_set_instance_template_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_group_manager_instance_template(project, zone, instance_group_manager, instance_group_managers_set_instance_template_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setInstanceTemplate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupManagersSetInstanceTemplateRequest::Representation
          command.request_object = instance_group_managers_set_instance_template_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the target pools to which all new instances in this group are
        # assigned. The target pools for existing instances in the group do not change
        # unless you recreate them.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the managed instance group is located.
        # @param [String] instance_group_manager
        #   The name of the instance group manager.
        # @param [Google::Apis::ComputeV1::InstanceGroupManagersSetTargetPoolsRequest] instance_group_managers_set_target_pools_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_group_manager_target_pools(project, zone, instance_group_manager, instance_group_managers_set_target_pools_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setTargetPools'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupManagersSetTargetPoolsRequest::Representation
          command.request_object = instance_group_managers_set_target_pools_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroupManager'] = instance_group_manager unless instance_group_manager.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a list of instances to an instance group. All of the instances in the
        # instance group must be in the same network.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] instance_group
        #   The name of the instance group where you are adding instances.
        # @param [Google::Apis::ComputeV1::InstanceGroupsAddInstancesRequest] instance_groups_add_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_instance_group_instances(project, zone, instance_group, instance_groups_add_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups/{instanceGroup}/addInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupsAddInstancesRequest::Representation
          command.request_object = instance_groups_add_instances_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroup'] = instance_group unless instance_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of instance groups, and sorts them by zone.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_instance_groups(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/instanceGroups'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified instance group.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] instance_group
        #   The name of the instance group to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_group(project, zone, instance_group, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups/{instanceGroup}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroup'] = instance_group unless instance_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified instance group resource.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] instance_group
        #   The name of the instance group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_group(project, zone, instance_group, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups/{instanceGroup}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroup::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroup
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroup'] = instance_group unless instance_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an instance group in the specified project using the parameters that
        # are included in the request.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [Google::Apis::ComputeV1::InstanceGroup] instance_group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance_group(project, zone, instance_group_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroup::Representation
          command.request_object = instance_group_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of instance groups that are located in the specified
        # project and zone.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_groups(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists instances in an instance group. The parameters for this method specify
        # whether the list filters instances by state and named ports information.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] instance_group
        #   The name of the instance group from which you want to generate a list of
        #   included instances.
        # @param [Google::Apis::ComputeV1::InstanceGroupsListInstancesRequest] instance_groups_list_instances_request_object
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceGroupsListInstances] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceGroupsListInstances]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_group_instances(project, zone, instance_group, instance_groups_list_instances_request_object = nil, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups/{instanceGroup}/listInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupsListInstancesRequest::Representation
          command.request_object = instance_groups_list_instances_request_object
          command.response_representation = Google::Apis::ComputeV1::InstanceGroupsListInstances::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceGroupsListInstances
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroup'] = instance_group unless instance_group.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a list of instances from an instance group.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] instance_group
        #   The name of the instance group where the specified instances will be removed.
        # @param [Google::Apis::ComputeV1::InstanceGroupsRemoveInstancesRequest] instance_groups_remove_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_instance_group_instances(project, zone, instance_group, instance_groups_remove_instances_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups/{instanceGroup}/removeInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupsRemoveInstancesRequest::Representation
          command.request_object = instance_groups_remove_instances_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroup'] = instance_group unless instance_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the named ports in an instance group.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] zone
        #   The URL of the zone where the instance group is located.
        # @param [String] instance_group
        #   The name of the instance group where the named ports are updated.
        # @param [Google::Apis::ComputeV1::InstanceGroupsSetNamedPortsRequest] instance_groups_set_named_ports_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_group_named_ports(project, zone, instance_group, instance_groups_set_named_ports_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instanceGroups/{instanceGroup}/setNamedPorts'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceGroupsSetNamedPortsRequest::Representation
          command.request_object = instance_groups_set_named_ports_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instanceGroup'] = instance_group unless instance_group.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified instance template.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] instance_template
        #   The name of the instance template to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_template(project, instance_template, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates/{instanceTemplate}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['instanceTemplate'] = instance_template unless instance_template.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified instance template resource.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] instance_template
        #   The name of the instance template.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_template(project, instance_template, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates/{instanceTemplate}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceTemplate::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceTemplate
          command.params['project'] = project unless project.nil?
          command.params['instanceTemplate'] = instance_template unless instance_template.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an instance template in the specified project using the data that is
        # included in the request.
        # @param [String] project
        #   The project ID for this request.
        # @param [Google::Apis::ComputeV1::InstanceTemplate] instance_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance_template(project, instance_template_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceTemplate::Representation
          command.request_object = instance_template_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of instance templates that are contained within the specified
        # project and zone.
        # @param [String] project
        #   The project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceTemplateList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceTemplateList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_templates(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/instanceTemplates'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceTemplateList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceTemplateList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an access config to an instance's network interface.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   The instance name for this request.
        # @param [String] network_interface
        #   The name of the network interface to add to this instance.
        # @param [Google::Apis::ComputeV1::AccessConfig] access_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_instance_access_config(project, zone, instance, network_interface, access_config_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/addAccessConfig'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AccessConfig::Representation
          command.request_object = access_config_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['networkInterface'] = network_interface unless network_interface.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_instances(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/instances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Attaches a Disk resource to an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Instance name.
        # @param [Google::Apis::ComputeV1::AttachedDisk] attached_disk_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def attach_disk(project, zone, instance, attached_disk_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/attachDisk'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AttachedDisk::Representation
          command.request_object = attached_disk_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Instance resource. For more information, see Shutting
        # down an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an access config from an instance's network interface.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   The instance name for this request.
        # @param [String] access_config
        #   The name of the access config to delete.
        # @param [String] network_interface
        #   The name of the network interface.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance_access_config(project, zone, instance, access_config, network_interface, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/deleteAccessConfig'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['accessConfig'] = access_config unless access_config.nil?
          command.query['networkInterface'] = network_interface unless network_interface.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Detaches a disk from an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Instance name.
        # @param [String] device_name
        #   Disk device name to detach.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detach_disk(project, zone, instance, device_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/detachDisk'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['deviceName'] = device_name unless device_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified instance resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Instance::Representation
          command.response_class = Google::Apis::ComputeV1::Instance
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified instance's serial port output.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [Fixnum] port
        #   Specifies which COM or serial port to retrieve data from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::SerialPortOutput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::SerialPortOutput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_serial_port_output(project, zone, instance, port: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/serialPort'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::SerialPortOutput::Representation
          command.response_class = Google::Apis::ComputeV1::SerialPortOutput
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['port'] = port unless port.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an instance resource in the specified project using the data included
        # in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [Google::Apis::ComputeV1::Instance] instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance(project, zone, instance_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of instance resources contained within the specified zone.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::InstanceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::InstanceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instances(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::InstanceList::Representation
          command.response_class = Google::Apis::ComputeV1::InstanceList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a hard reset on the instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/reset'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the auto-delete flag for a disk attached to an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   The instance name.
        # @param [Boolean] auto_delete
        #   Whether to auto-delete the disk when the instance is deleted.
        # @param [String] device_name
        #   The device name of the disk to modify.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_disk_auto_delete(project, zone, instance, auto_delete, device_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setDiskAutoDelete'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['autoDelete'] = auto_delete unless auto_delete.nil?
          command.query['deviceName'] = device_name unless device_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets metadata for the specified instance to the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [Google::Apis::ComputeV1::Metadata] metadata_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_metadata(project, zone, instance, metadata_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setMetadata'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Metadata::Representation
          command.request_object = metadata_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets an instance's scheduling options.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Instance name.
        # @param [Google::Apis::ComputeV1::Scheduling] scheduling_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_scheduling(project, zone, instance, scheduling_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setScheduling'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Scheduling::Representation
          command.request_object = scheduling_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets tags for the specified instance to the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance scoping this request.
        # @param [Google::Apis::ComputeV1::Tags] tags_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_tags(project, zone, instance, tags_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/setTags'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Tags::Representation
          command.request_object = tags_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method starts an instance that was stopped using the using the instances()
        # .stop method. For more information, see Restart an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to start.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/start'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method stops a running instance, shutting it down cleanly, and allows you
        # to restart the instance at a later time. Stopped instances do not incur per-
        # minute, virtual machine usage charges while they are stopped, but any
        # resources that the virtual machine is using, such as persistent disks and
        # static IP addresses,will continue to be charged until they are deleted. For
        # more information, see Stopping an instance.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] instance
        #   Name of the instance resource to stop.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_instance(project, zone, instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/instances/{instance}/stop'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified license resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] license
        #   Name of the license resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::License] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::License]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_license(project, license, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/licenses/{license}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::License::Representation
          command.response_class = Google::Apis::ComputeV1::License
          command.params['project'] = project unless project.nil?
          command.params['license'] = license unless license.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of machine type resources grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::MachineTypeAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::MachineTypeAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_machine_types(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/machineTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::MachineTypeAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::MachineTypeAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified machine type resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] machine_type
        #   Name of the machine type resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::MachineType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::MachineType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_machine_type(project, zone, machine_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/machineTypes/{machineType}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::MachineType::Representation
          command.response_class = Google::Apis::ComputeV1::MachineType
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['machineType'] = machine_type unless machine_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of machine type resources available to the specified
        # project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   The name of the zone for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::MachineTypeList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::MachineTypeList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_machine_types(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/machineTypes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::MachineTypeList::Representation
          command.response_class = Google::Apis::ComputeV1::MachineTypeList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified network resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] network
        #   Name of the network resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_network(project, network, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks/{network}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['network'] = network unless network.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified network resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] network
        #   Name of the network resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Network] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Network]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_network(project, network, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks/{network}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Network::Representation
          command.response_class = Google::Apis::ComputeV1::Network
          command.params['project'] = project unless project.nil?
          command.params['network'] = network unless network.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a network resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Network] network_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_network(project, network_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Network::Representation
          command.request_object = network_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of network resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::NetworkList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::NetworkList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_networks(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/networks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::NetworkList::Representation
          command.response_class = Google::Apis::ComputeV1::NetworkList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified project resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(project, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Project::Representation
          command.response_class = Google::Apis::ComputeV1::Project
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a persistent disk from one zone to another.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::MoveDiskRequest] move_disk_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_disk(project, move_disk_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/moveDisk'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::MoveDiskRequest::Representation
          command.request_object = move_disk_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves an instance and its attached persistent disks from one zone to another.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::MoveInstanceRequest] move_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_instance(project, move_instance_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/moveInstance'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::MoveInstanceRequest::Representation
          command.request_object = move_instance_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets metadata common to all instances within the specified project using the
        # data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::Metadata] metadata_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_common_instance_metadata(project, metadata_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/setCommonInstanceMetadata'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Metadata::Representation
          command.request_object = metadata_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables the usage export feature and sets the usage export bucket where
        # reports are stored. If you provide an empty request body using this method,
        # the usage export feature will be disabled.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ComputeV1::UsageExportLocation] usage_export_location_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_usage_export_bucket(project, usage_export_location_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/setUsageExportBucket'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UsageExportLocation::Representation
          command.request_object = usage_export_location_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified region-specific Operations resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] operation
        #   Name of the Operations resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_region_operation(project, region, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/operations/{operation}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified region-specific Operations resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the Operations resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_region_operation(project, region, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of Operation resources contained within the specified
        # region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_region_operations(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationList::Representation
          command.response_class = Google::Apis::ComputeV1::OperationList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified region resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   Name of the region resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_region(project, region, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Region::Representation
          command.response_class = Google::Apis::ComputeV1::Region
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of region resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::RegionList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::RegionList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_regions(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::RegionList::Representation
          command.response_class = Google::Apis::ComputeV1::RegionList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified route resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] route
        #   Name of the route resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_route(project, route, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes/{route}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['route'] = route unless route.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified route resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] route
        #   Name of the route resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Route] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Route]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_route(project, route, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes/{route}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Route::Representation
          command.response_class = Google::Apis::ComputeV1::Route
          command.params['project'] = project unless project.nil?
          command.params['route'] = route unless route.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a route resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::Route] route_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_route(project, route_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::Route::Representation
          command.request_object = route_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of route resources available to the specified project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::RouteList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::RouteList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_routes(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/routes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::RouteList::Representation
          command.response_class = Google::Apis::ComputeV1::RouteList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Snapshot resource. Keep in mind that deleting a single
        # snapshot might not necessarily delete all the data on that snapshot. If any
        # data on the snapshot that is marked for deletion is needed for subsequent
        # snapshots, the data will be moved to the next corresponding snapshot.
        # For more information, see Deleting snaphots.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] snapshot
        #   Name of the Snapshot resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_snapshot(project, snapshot, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/snapshots/{snapshot}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['snapshot'] = snapshot unless snapshot.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified Snapshot resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] snapshot
        #   Name of the Snapshot resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Snapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Snapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_snapshot(project, snapshot, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/snapshots/{snapshot}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Snapshot::Representation
          command.response_class = Google::Apis::ComputeV1::Snapshot
          command.params['project'] = project unless project.nil?
          command.params['snapshot'] = snapshot unless snapshot.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of Snapshot resources contained within the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::SnapshotList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::SnapshotList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_snapshots(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/snapshots'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::SnapshotList::Representation
          command.response_class = Google::Apis::ComputeV1::SnapshotList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TargetHttpProxy resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] target_http_proxy
        #   Name of the TargetHttpProxy resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_http_proxy(project, target_http_proxy, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies/{targetHttpProxy}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['targetHttpProxy'] = target_http_proxy unless target_http_proxy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified TargetHttpProxy resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] target_http_proxy
        #   Name of the TargetHttpProxy resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetHttpProxy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetHttpProxy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_http_proxy(project, target_http_proxy, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies/{targetHttpProxy}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetHttpProxy::Representation
          command.response_class = Google::Apis::ComputeV1::TargetHttpProxy
          command.params['project'] = project unless project.nil?
          command.params['targetHttpProxy'] = target_http_proxy unless target_http_proxy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetHttpProxy resource in the specified project using the data
        # included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::TargetHttpProxy] target_http_proxy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_http_proxy(project, target_http_proxy_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetHttpProxy::Representation
          command.request_object = target_http_proxy_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of TargetHttpProxy resources available to the specified
        # project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetHttpProxyList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetHttpProxyList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_http_proxies(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/targetHttpProxies'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetHttpProxyList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetHttpProxyList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes the URL map for TargetHttpProxy.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] target_http_proxy
        #   Name of the TargetHttpProxy resource whose URL map is to be set.
        # @param [Google::Apis::ComputeV1::UrlMapReference] url_map_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_target_http_proxy_url_map(project, target_http_proxy, url_map_reference_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/targetHttpProxies/{targetHttpProxy}/setUrlMap'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMapReference::Representation
          command.request_object = url_map_reference_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['targetHttpProxy'] = target_http_proxy unless target_http_proxy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of target instances grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetInstanceAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetInstanceAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_target_instance(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/targetInstances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetInstanceAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetInstanceAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TargetInstance resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] target_instance
        #   Name of the TargetInstance resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_instance(project, zone, target_instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances/{targetInstance}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['targetInstance'] = target_instance unless target_instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified TargetInstance resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] target_instance
        #   Name of the TargetInstance resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_instance(project, zone, target_instance, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances/{targetInstance}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetInstance::Representation
          command.response_class = Google::Apis::ComputeV1::TargetInstance
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['targetInstance'] = target_instance unless target_instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetInstance resource in the specified project and zone using the
        # data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [Google::Apis::ComputeV1::TargetInstance] target_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_instance(project, zone, target_instance_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetInstance::Representation
          command.request_object = target_instance_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of TargetInstance resources available to the specified
        # project and zone.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetInstanceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetInstanceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_instances(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/targetInstances'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetInstanceList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetInstanceList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds health check URL to targetPool.
        # @param [String] project
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which health_check_url is to be added.
        # @param [Google::Apis::ComputeV1::AddTargetPoolsHealthCheckRequest] add_target_pools_health_check_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_target_pool_health_check(project, region, target_pool, add_target_pools_health_check_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/addHealthCheck'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AddTargetPoolsHealthCheckRequest::Representation
          command.request_object = add_target_pools_health_check_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds instance url to targetPool.
        # @param [String] project
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which instance_url is to be added.
        # @param [Google::Apis::ComputeV1::AddTargetPoolsInstanceRequest] add_target_pools_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_target_pool_instance(project, region, target_pool, add_target_pools_instance_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/addInstance'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::AddTargetPoolsInstanceRequest::Representation
          command.request_object = add_target_pools_instance_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of target pools grouped by scope.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetPoolAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPoolAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_target_pools(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/targetPools'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetPoolAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetPoolAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TargetPool resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_pool(project, region, target_pool, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified TargetPool resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_pool(project, region, target_pool, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetPool::Representation
          command.response_class = Google::Apis::ComputeV1::TargetPool
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the most recent health check results for each IP for the given instance
        # that is referenced by given TargetPool.
        # @param [String] project
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which the queried instance belongs.
        # @param [Google::Apis::ComputeV1::InstanceReference] instance_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetPoolInstanceHealth] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPoolInstanceHealth]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_pool_health(project, region, target_pool, instance_reference_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/getHealth'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::InstanceReference::Representation
          command.request_object = instance_reference_object
          command.response_representation = Google::Apis::ComputeV1::TargetPoolInstanceHealth::Representation
          command.response_class = Google::Apis::ComputeV1::TargetPoolInstanceHealth
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetPool resource in the specified project and region using the
        # data included in the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [Google::Apis::ComputeV1::TargetPool] target_pool_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_pool(project, region, target_pool_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetPool::Representation
          command.request_object = target_pool_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of TargetPool resources available to the specified project
        # and region.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetPoolList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetPoolList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_pools(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetPoolList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetPoolList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes health check URL from targetPool.
        # @param [String] project
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which health_check_url is to be removed.
        # @param [Google::Apis::ComputeV1::RemoveTargetPoolsHealthCheckRequest] remove_target_pools_health_check_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_target_pool_health_check(project, region, target_pool, remove_target_pools_health_check_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/removeHealthCheck'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::RemoveTargetPoolsHealthCheckRequest::Representation
          command.request_object = remove_target_pools_health_check_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes instance URL from targetPool.
        # @param [String] project
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource to which instance_url is to be removed.
        # @param [Google::Apis::ComputeV1::RemoveTargetPoolsInstanceRequest] remove_target_pools_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_target_pool_instance(project, region, target_pool, remove_target_pools_instance_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/removeInstance'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::RemoveTargetPoolsInstanceRequest::Representation
          command.request_object = remove_target_pools_instance_request_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes backup pool configurations.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] region
        #   Name of the region scoping this request.
        # @param [String] target_pool
        #   Name of the TargetPool resource for which the backup is to be set.
        # @param [Google::Apis::ComputeV1::TargetReference] target_reference_object
        # @param [Float] failover_ratio
        #   New failoverRatio value for the containing target pool.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_target_pool_backup(project, region, target_pool, target_reference_object = nil, failover_ratio: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetPools/{targetPool}/setBackup'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetReference::Representation
          command.request_object = target_reference_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetPool'] = target_pool unless target_pool.nil?
          command.query['failoverRatio'] = failover_ratio unless failover_ratio.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of target VPN gateways grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_target_vpn_gateways(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/targetVpnGateways'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified TargetVpnGateway resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] target_vpn_gateway
        #   Name of the TargetVpnGateway resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_target_vpn_gateway(project, region, target_vpn_gateway, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetVpnGateway'] = target_vpn_gateway unless target_vpn_gateway.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified TargetVpnGateway resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] target_vpn_gateway
        #   Name of the TargetVpnGateway resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetVpnGateway] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetVpnGateway]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_target_vpn_gateway(project, region, target_vpn_gateway, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetVpnGateway::Representation
          command.response_class = Google::Apis::ComputeV1::TargetVpnGateway
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['targetVpnGateway'] = target_vpn_gateway unless target_vpn_gateway.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetVpnGateway resource in the specified project and region using
        # the data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [Google::Apis::ComputeV1::TargetVpnGateway] target_vpn_gateway_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_target_vpn_gateway(project, region, target_vpn_gateway_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::TargetVpnGateway::Representation
          command.request_object = target_vpn_gateway_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of TargetVpnGateway resources available to the specified
        # project and region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::TargetVpnGatewayList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::TargetVpnGatewayList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_target_vpn_gateways(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/targetVpnGateways'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::TargetVpnGatewayList::Representation
          command.response_class = Google::Apis::ComputeV1::TargetVpnGatewayList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified UrlMap resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_url_map(project, url_map, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified UrlMap resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::UrlMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::UrlMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_url_map(project, url_map, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::UrlMap::Representation
          command.response_class = Google::Apis::ComputeV1::UrlMap
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a UrlMap resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [Google::Apis::ComputeV1::UrlMap] url_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_url_map(project, url_map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMap::Representation
          command.request_object = url_map_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of UrlMap resources available to the specified project.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::UrlMapList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::UrlMapList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_url_maps(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::UrlMapList::Representation
          command.response_class = Google::Apis::ComputeV1::UrlMapList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the entire content of the UrlMap resource. This method supports patch
        # semantics.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to update.
        # @param [Google::Apis::ComputeV1::UrlMap] url_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_url_map(project, url_map, url_map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMap::Representation
          command.request_object = url_map_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the entire content of the UrlMap resource.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to update.
        # @param [Google::Apis::ComputeV1::UrlMap] url_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_url_map(project, url_map, url_map_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ComputeV1::UrlMap::Representation
          command.request_object = url_map_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Run static validation for the UrlMap. In particular, the tests of the provided
        # UrlMap will be run. Calling this method does NOT create the UrlMap.
        # @param [String] project
        #   Name of the project scoping this request.
        # @param [String] url_map
        #   Name of the UrlMap resource to be validated as.
        # @param [Google::Apis::ComputeV1::ValidateUrlMapsRequest] validate_url_maps_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ValidateUrlMapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ValidateUrlMapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_url_map(project, url_map, validate_url_maps_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/global/urlMaps/{urlMap}/validate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::ValidateUrlMapsRequest::Representation
          command.request_object = validate_url_maps_request_object
          command.response_representation = Google::Apis::ComputeV1::ValidateUrlMapsResponse::Representation
          command.response_class = Google::Apis::ComputeV1::ValidateUrlMapsResponse
          command.params['project'] = project unless project.nil?
          command.params['urlMap'] = url_map unless url_map.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of VPN tunnels grouped by scope.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::VpnTunnelAggregatedList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::VpnTunnelAggregatedList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_aggregated_vpn_tunnel(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/aggregated/vpnTunnels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::VpnTunnelAggregatedList::Representation
          command.response_class = Google::Apis::ComputeV1::VpnTunnelAggregatedList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified VpnTunnel resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] vpn_tunnel
        #   Name of the VpnTunnel resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_vpn_tunnel(project, region, vpn_tunnel, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels/{vpnTunnel}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['vpnTunnel'] = vpn_tunnel unless vpn_tunnel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified VpnTunnel resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] vpn_tunnel
        #   Name of the VpnTunnel resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::VpnTunnel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::VpnTunnel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vpn_tunnel(project, region, vpn_tunnel, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels/{vpnTunnel}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::VpnTunnel::Representation
          command.response_class = Google::Apis::ComputeV1::VpnTunnel
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.params['vpnTunnel'] = vpn_tunnel unless vpn_tunnel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a VpnTunnel resource in the specified project and region using the
        # data included in the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [Google::Apis::ComputeV1::VpnTunnel] vpn_tunnel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_vpn_tunnel(project, region, vpn_tunnel_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ComputeV1::VpnTunnel::Representation
          command.request_object = vpn_tunnel_object
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of VpnTunnel resources contained in the specified project
        # and region.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] region
        #   The name of the region for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::VpnTunnelList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::VpnTunnelList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_vpn_tunnels(project, region, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/regions/{region}/vpnTunnels'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::VpnTunnelList::Representation
          command.response_class = Google::Apis::ComputeV1::VpnTunnelList
          command.params['project'] = project unless project.nil?
          command.params['region'] = region unless region.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified zone-specific Operations resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the Operations resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
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
        def delete_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/operations/{operation}'
          command =  make_simple_command(:delete, path, options)
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified zone-specific Operations resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] operation
        #   Name of the Operations resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone_operation(project, zone, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/operations/{operation}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Operation::Representation
          command.response_class = Google::Apis::ComputeV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of Operation resources contained within the specified zone.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone scoping this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zone_operations(project, zone, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}/operations'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::OperationList::Representation
          command.response_class = Google::Apis::ComputeV1::OperationList
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified zone resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::Zone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::Zone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_zone(project, zone, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones/{zone}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::Zone::Representation
          command.response_class = Google::Apis::ComputeV1::Zone
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of zone resources available to the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: FIELD_NAME
        #   COMPARISON_STRING LITERAL_STRING.
        #   The FIELD_NAME is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The COMPARISON_STRING must be
        #   either eq (equals) or ne (not equals). The LITERAL_STRING is the string value
        #   to filter to. The literal value must be valid for the type of field (string,
        #   number, boolean). For string fields, the literal value is interpreted as a
        #   regular expression using RE2 syntax. The literal value must match the entire
        #   field.
        #   For example, filter=name ne example-instance.
        # @param [Fixnum] max_results
        #   Maximum count of results to be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Use this parameter if you want to list the next
        #   page of results. Set pageToken to the nextPageToken returned by a previous
        #   list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ComputeV1::ZoneList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ComputeV1::ZoneList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_zones(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{project}/zones'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ComputeV1::ZoneList::Representation
          command.response_class = Google::Apis::ComputeV1::ZoneList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
