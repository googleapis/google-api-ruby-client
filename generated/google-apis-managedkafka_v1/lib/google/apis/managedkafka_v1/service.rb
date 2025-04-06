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
    module ManagedkafkaV1
      # Managed Service for Apache Kafka API
      #
      # Manage Apache Kafka clusters and resources.
      #
      # @example
      #    require 'google/apis/managedkafka_v1'
      #
      #    Managedkafka = Google::Apis::ManagedkafkaV1 # Alias the module
      #    service = Managedkafka::ManagedKafkaService.new
      #
      # @see https://cloud.google.com/managed-service-for-apache-kafka/docs
      class ManagedKafkaService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://managedkafka.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-managedkafka_v1',
                client_version: Google::Apis::ManagedkafkaV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Location::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new cluster in a given project and location.
        # @param [String] parent
        #   Required. The parent region in which to create the cluster. Structured like `
        #   projects/`project`/locations/`location``.
        # @param [Google::Apis::ManagedkafkaV1::Cluster] cluster_object
        # @param [String] cluster_id
        #   Required. The ID to use for the cluster, which will become the final component
        #   of the cluster's name. The ID must be 1-63 characters long, and match the
        #   regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` to comply with RFC 1035. This
        #   value is structured like: `my-cluster-id`.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID to avoid duplication of requests. If a request times out or fails,
        #   retrying with the same ID allows the server to recognize the previous attempt.
        #   For at least 60 minutes, the server ignores duplicate requests bearing the
        #   same ID. For example, consider a situation where you make an initial request
        #   and the request times out. If you make the request again with the same request
        #   ID within 60 minutes of the last request, the server checks if an original
        #   operation with the same request ID was received. If so, the server ignores the
        #   second request. The request ID must be a valid UUID. A zero UUID is not
        #   supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_cluster(parent, cluster_object = nil, cluster_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/clusters', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single cluster.
        # @param [String] name
        #   Required. The name of the cluster to delete.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID to avoid duplication of requests. If a request times out or fails,
        #   retrying with the same ID allows the server to recognize the previous attempt.
        #   For at least 60 minutes, the server ignores duplicate requests bearing the
        #   same ID. For example, consider a situation where you make an initial request
        #   and the request times out. If you make the request again with the same request
        #   ID within 60 minutes of the last request, the server checks if an original
        #   operation with the same request ID was received. If so, the server ignores the
        #   second request. The request ID must be a valid UUID. A zero UUID is not
        #   supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cluster(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the properties of a single cluster.
        # @param [String] name
        #   Required. The name of the cluster whose configuration to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Cluster::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Cluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the clusters in a given project and location.
        # @param [String] parent
        #   Required. The parent location whose clusters are to be listed. Structured like
        #   `projects/`project`/locations/`location``.
        # @param [String] filter
        #   Optional. Filter expression for the result.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of clusters to return. The service may return
        #   fewer than this value. If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListClusters` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListClusters` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_clusters(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/clusters', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListClustersResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties of a single cluster.
        # @param [String] name
        #   Identifier. The name of the cluster. Structured like: projects/`project_number`
        #   /locations/`location`/clusters/`cluster_id`
        # @param [Google::Apis::ManagedkafkaV1::Cluster] cluster_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID to avoid duplication of requests. If a request times out or fails,
        #   retrying with the same ID allows the server to recognize the previous attempt.
        #   For at least 60 minutes, the server ignores duplicate requests bearing the
        #   same ID. For example, consider a situation where you make an initial request
        #   and the request times out. If you make the request again with the same request
        #   ID within 60 minutes of the last request, the server checks if an original
        #   operation with the same request ID was received. If so, the server ignores the
        #   second request. The request ID must be a valid UUID. A zero UUID is not
        #   supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   cluster resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The mask is required and a value of * will update all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cluster(name, cluster_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single consumer group.
        # @param [String] name
        #   Required. The name of the consumer group to delete. `projects/`project`/
        #   locations/`location`/clusters/`cluster`/consumerGroups/`consumerGroup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cluster_consumer_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the properties of a single consumer group.
        # @param [String] name
        #   Required. The name of the consumer group whose configuration to return. `
        #   projects/`project`/locations/`location`/clusters/`cluster`/consumerGroups/`
        #   consumerGroup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ConsumerGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ConsumerGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_consumer_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ConsumerGroup::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ConsumerGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the consumer groups in a given cluster.
        # @param [String] parent
        #   Required. The parent cluster whose consumer groups are to be listed.
        #   Structured like `projects/`project`/locations/`location`/clusters/`cluster``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of consumer groups to return. The service may
        #   return fewer than this value. If unset or zero, all consumer groups for the
        #   parent is returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListConsumerGroups` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListConsumerGroups` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListConsumerGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListConsumerGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cluster_consumer_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/consumerGroups', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListConsumerGroupsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListConsumerGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties of a single consumer group.
        # @param [String] name
        #   Identifier. The name of the consumer group. The `consumer_group` segment is
        #   used when connecting directly to the cluster. Structured like: projects/`
        #   project`/locations/`location`/clusters/`cluster`/consumerGroups/`
        #   consumer_group`
        # @param [Google::Apis::ManagedkafkaV1::ConsumerGroup] consumer_group_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   ConsumerGroup resource by the update. The fields specified in the update_mask
        #   are relative to the resource, not the full request. A field will be
        #   overwritten if it is in the mask. The mask is required and a value of * will
        #   update all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ConsumerGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ConsumerGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cluster_consumer_group(name, consumer_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::ConsumerGroup::Representation
          command.request_object = consumer_group_object
          command.response_representation = Google::Apis::ManagedkafkaV1::ConsumerGroup::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ConsumerGroup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new topic in a given project and location.
        # @param [String] parent
        #   Required. The parent cluster in which to create the topic. Structured like `
        #   projects/`project`/locations/`location`/clusters/`cluster``.
        # @param [Google::Apis::ManagedkafkaV1::Topic] topic_object
        # @param [String] topic_id
        #   Required. The ID to use for the topic, which will become the final component
        #   of the topic's name. This value is structured like: `my-topic-name`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_cluster_topic(parent, topic_object = nil, topic_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/topics', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Topic::Representation
          command.request_object = topic_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Topic::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Topic
          command.params['parent'] = parent unless parent.nil?
          command.query['topicId'] = topic_id unless topic_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single topic.
        # @param [String] name
        #   Required. The name of the topic to delete. `projects/`project`/locations/`
        #   location`/clusters/`cluster`/topics/`topic``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cluster_topic(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the properties of a single topic.
        # @param [String] name
        #   Required. The name of the topic whose configuration to return. Structured like:
        #   projects/`project`/locations/`location`/clusters/`cluster`/topics/`topic`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_topic(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Topic::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Topic
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the topics in a given cluster.
        # @param [String] parent
        #   Required. The parent cluster whose topics are to be listed. Structured like `
        #   projects/`project`/locations/`location`/clusters/`cluster``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of topics to return. The service may return fewer
        #   than this value. If unset or zero, all topics for the parent is returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListTopics` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListTopics` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListTopicsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListTopicsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cluster_topics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/topics', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListTopicsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListTopicsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties of a single topic.
        # @param [String] name
        #   Identifier. The name of the topic. The `topic` segment is used when connecting
        #   directly to the cluster. Structured like: projects/`project`/locations/`
        #   location`/clusters/`cluster`/topics/`topic`
        # @param [Google::Apis::ManagedkafkaV1::Topic] topic_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   Topic resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The mask is required and a value of * will update all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Topic] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Topic]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cluster_topic(name, topic_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Topic::Representation
          command.request_object = topic_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Topic::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Topic
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Kafka Connect cluster in a given project and location.
        # @param [String] parent
        #   Required. The parent project/location in which to create the Kafka Connect
        #   cluster. Structured like `projects/`project`/locations/`location`/`.
        # @param [Google::Apis::ManagedkafkaV1::ConnectCluster] connect_cluster_object
        # @param [String] connect_cluster_id
        #   Required. The ID to use for the Connect cluster, which will become the final
        #   component of the cluster's name. The ID must be 1-63 characters long, and
        #   match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` to comply with RFC
        #   1035. This value is structured like: `my-cluster-id`.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID to avoid duplication of requests. If a request times out or fails,
        #   retrying with the same ID allows the server to recognize the previous attempt.
        #   For at least 60 minutes, the server ignores duplicate requests bearing the
        #   same ID. For example, consider a situation where you make an initial request
        #   and the request times out. If you make the request again with the same request
        #   ID within 60 minutes of the last request, the server checks if an original
        #   operation with the same request ID was received. If so, the server ignores the
        #   second request. The request ID must be a valid UUID. A zero UUID is not
        #   supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connect_cluster(parent, connect_cluster_object = nil, connect_cluster_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectClusters', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::ConnectCluster::Representation
          command.request_object = connect_cluster_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['connectClusterId'] = connect_cluster_id unless connect_cluster_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single Connect cluster.
        # @param [String] name
        #   Required. The name of the Kafka Connect cluster to delete. Structured like `
        #   projects/`project`/locations/`location`/connectClusters/`connect_cluster_id``.
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID to avoid duplication of requests. If a request times out or fails,
        #   retrying with the same ID allows the server to recognize the previous attempt.
        #   For at least 60 minutes, the server ignores duplicate requests bearing the
        #   same ID. For example, consider a situation where you make an initial request
        #   and the request times out. If you make the request again with the same request
        #   ID within 60 minutes of the last request, the server checks if an original
        #   operation with the same request ID was received. If so, the server ignores the
        #   second request. The request ID must be a valid UUID. A zero UUID is not
        #   supported (00000000-0000-0000-0000-000000000000).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connect_cluster(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the properties of a single Kafka Connect cluster.
        # @param [String] name
        #   Required. The name of the Kafka Connect cluster whose configuration to return.
        #   Structured like `projects/`project`/locations/`location`/connectClusters/`
        #   connect_cluster_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ConnectCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ConnectCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connect_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ConnectCluster::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ConnectCluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Kafka Connect clusters in a given project and location.
        # @param [String] parent
        #   Required. The parent project/location whose Connect clusters are to be listed.
        #   Structured like `projects/`project`/locations/`location``.
        # @param [String] filter
        #   Optional. Filter expression for the result.
        # @param [String] order_by
        #   Optional. Order by fields for the result.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of Connect clusters to return. The service may
        #   return fewer than this value. If unspecified, server will pick an appropriate
        #   default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListConnectClusters` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListConnectClusters` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListConnectClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListConnectClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connect_clusters(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/connectClusters', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListConnectClustersResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListConnectClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties of a single Kafka Connect cluster.
        # @param [String] name
        #   Identifier. The name of the Kafka Connect cluster. Structured like: projects/`
        #   project_number`/locations/`location`/connectClusters/`connect_cluster_id`
        # @param [Google::Apis::ManagedkafkaV1::ConnectCluster] connect_cluster_object
        # @param [String] request_id
        #   Optional. An optional request ID to identify requests. Specify a unique
        #   request ID to avoid duplication of requests. If a request times out or fails,
        #   retrying with the same ID allows the server to recognize the previous attempt.
        #   For at least 60 minutes, the server ignores duplicate requests bearing the
        #   same ID. For example, consider a situation where you make an initial request
        #   and the request times out. If you make the request again with the same request
        #   ID within 60 minutes of the last request, the server checks if an original
        #   operation with the same request ID was received. If so, the server ignores the
        #   second request. The request ID must be a valid UUID. A zero UUID is not
        #   supported (00000000-0000-0000-0000-000000000000).
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   cluster resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The mask is required and a value of * will update all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connect_cluster(name, connect_cluster_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::ConnectCluster::Representation
          command.request_object = connect_cluster_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new connector in a given Connect cluster.
        # @param [String] parent
        #   Required. The parent Connect cluster in which to create the connector.
        #   Structured like `projects/`project`/locations/`location`/connectClusters/`
        #   connect_cluster_id``.
        # @param [Google::Apis::ManagedkafkaV1::Connector] connector_object
        # @param [String] connector_id
        #   Required. The ID to use for the connector, which will become the final
        #   component of the connector's name. The ID must be 1-63 characters long, and
        #   match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` to comply with RFC
        #   1035. This value is structured like: `my-connector-id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Connector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Connector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connect_cluster_connector(parent, connector_object = nil, connector_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/connectors', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Connector::Representation
          command.request_object = connector_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Connector::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Connector
          command.params['parent'] = parent unless parent.nil?
          command.query['connectorId'] = connector_id unless connector_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a connector.
        # @param [String] name
        #   Required. The name of the connector to delete. Structured like: projects/`
        #   project`/locations/`location`/connectClusters/`connectCluster`/connectors/`
        #   connector`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connect_cluster_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the properties of a single connector.
        # @param [String] name
        #   Required. The name of the connector whose configuration to return. Structured
        #   like: projects/`project`/locations/`location`/connectClusters/`connectCluster`/
        #   connectors/`connector`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Connector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Connector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connect_cluster_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Connector::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Connector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the connectors in a given Connect cluster.
        # @param [String] parent
        #   Required. The parent Connect cluster whose connectors are to be listed.
        #   Structured like `projects/`project`/locations/`location`/connectClusters/`
        #   connect_cluster_id``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of connectors to return. The service may return
        #   fewer than this value. If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListConnectors` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListConnectors` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListConnectorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListConnectorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connect_cluster_connectors(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/connectors', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListConnectorsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListConnectorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties of a connector.
        # @param [String] name
        #   Identifier. The name of the connector. Structured like: projects/`project`/
        #   locations/`location`/connectClusters/`connect_cluster`/connectors/`connector`
        # @param [Google::Apis::ManagedkafkaV1::Connector] connector_object
        # @param [String] update_mask
        #   Required. Field mask is used to specify the fields to be overwritten in the
        #   cluster resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask. The mask is required and a value of * will update all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Connector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Connector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connect_cluster_connector(name, connector_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Connector::Representation
          command.request_object = connector_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Connector::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Connector
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses the connector and its tasks.
        # @param [String] name
        #   Required. The name of the connector to pause. Structured like: projects/`
        #   project`/locations/`location`/connectClusters/`connectCluster`/connectors/`
        #   connector`
        # @param [Google::Apis::ManagedkafkaV1::PauseConnectorRequest] pause_connector_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::PauseConnectorResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::PauseConnectorResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_connector(name, pause_connector_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:pause', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::PauseConnectorRequest::Representation
          command.request_object = pause_connector_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::PauseConnectorResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::PauseConnectorResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restarts the connector.
        # @param [String] name
        #   Required. The name of the connector to restart. Structured like: projects/`
        #   project`/locations/`location`/connectClusters/`connectCluster`/connectors/`
        #   connector`
        # @param [Google::Apis::ManagedkafkaV1::RestartConnectorRequest] restart_connector_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::RestartConnectorResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::RestartConnectorResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_connector(name, restart_connector_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:restart', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::RestartConnectorRequest::Representation
          command.request_object = restart_connector_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::RestartConnectorResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::RestartConnectorResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes the connector and its tasks.
        # @param [String] name
        #   Required. The name of the connector to pause. Structured like: projects/`
        #   project`/locations/`location`/connectClusters/`connectCluster`/connectors/`
        #   connector`
        # @param [Google::Apis::ManagedkafkaV1::ResumeConnectorRequest] resume_connector_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ResumeConnectorResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ResumeConnectorResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_connector(name, resume_connector_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resume', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::ResumeConnectorRequest::Representation
          command.request_object = resume_connector_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::ResumeConnectorResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ResumeConnectorResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops the connector.
        # @param [String] name
        #   Required. The name of the connector to stop. Structured like: projects/`
        #   project`/locations/`location`/connectClusters/`connectCluster`/connectors/`
        #   connector`
        # @param [Google::Apis::ManagedkafkaV1::StopConnectorRequest] stop_connector_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::StopConnectorResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::StopConnectorResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_connector(name, stop_connector_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:stop', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::StopConnectorRequest::Representation
          command.request_object = stop_connector_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::StopConnectorResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::StopConnectorResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::ManagedkafkaV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Operation::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
