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
        #   Optional. Do not use this field. It is unsupported and is ignored unless
        #   explicitly documented otherwise. This is primarily for internal usage.
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
        
        # Incremental update: Adds an acl entry to an acl. Creates the acl if it does
        # not exist yet.
        # @param [String] acl
        #   Required. The name of the acl to add the acl entry to. Structured like: `
        #   projects/`project`/locations/`location`/clusters/`cluster`/acls/`acl_id``. The
        #   structure of `acl_id` defines the Resource Pattern (resource_type,
        #   resource_name, pattern_type) of the acl. See `Acl.name` for details.
        # @param [Google::Apis::ManagedkafkaV1::AclEntry] acl_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::AddAclEntryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::AddAclEntryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_location_cluster_acl_acl_entry(acl, acl_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+acl}:addAclEntry', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::AclEntry::Representation
          command.request_object = acl_entry_object
          command.response_representation = Google::Apis::ManagedkafkaV1::AddAclEntryResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::AddAclEntryResponse
          command.params['acl'] = acl unless acl.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new acl in the given project, location, and cluster.
        # @param [String] parent
        #   Required. The parent cluster in which to create the acl. Structured like `
        #   projects/`project`/locations/`location`/clusters/`cluster``.
        # @param [Google::Apis::ManagedkafkaV1::Acl] acl_object
        # @param [String] acl_id
        #   Required. The ID to use for the acl, which will become the final component of
        #   the acl's name. The structure of `acl_id` defines the Resource Pattern (
        #   resource_type, resource_name, pattern_type) of the acl. `acl_id` is structured
        #   like one of the following: For acls on the cluster: `cluster` For acls on a
        #   single resource within the cluster: `topic/`resource_name`` `consumerGroup/`
        #   resource_name`` `transactionalId/`resource_name`` For acls on all resources
        #   that match a prefix: `topicPrefixed/`resource_name`` `consumerGroupPrefixed/`
        #   resource_name`` `transactionalIdPrefixed/`resource_name`` For acls on all
        #   resources of a given type (i.e. the wildcard literal "*"): `allTopics` (
        #   represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `
        #   allTransactionalIds` (represents `transactionalId/*`)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Acl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Acl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_cluster_acl(parent, acl_object = nil, acl_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/acls', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Acl::Representation
          command.request_object = acl_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Acl::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Acl
          command.params['parent'] = parent unless parent.nil?
          command.query['aclId'] = acl_id unless acl_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an acl.
        # @param [String] name
        #   Required. The name of the acl to delete. Structured like: `projects/`project`/
        #   locations/`location`/clusters/`cluster`/acls/`acl_id``. The structure of `
        #   acl_id` defines the Resource Pattern (resource_type, resource_name,
        #   pattern_type) of the acl. See `Acl.name` for details.
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
        def delete_project_location_cluster_acl(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the properties of a single acl.
        # @param [String] name
        #   Required. The name of the acl to return. Structured like: `projects/`project`/
        #   locations/`location`/clusters/`cluster`/acls/`acl_id``. The structure of `
        #   acl_id` defines the Resource Pattern (resource_type, resource_name,
        #   pattern_type) of the acl. See `Acl.name` for details.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Acl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Acl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_acl(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Acl::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Acl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the acls in a given cluster.
        # @param [String] parent
        #   Required. The parent cluster whose acls are to be listed. Structured like `
        #   projects/`project`/locations/`location`/clusters/`cluster``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of acls to return. The service may return fewer
        #   than this value. If unset or zero, all acls for the parent is returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAcls` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAcls` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListAclsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListAclsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cluster_acls(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/acls', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListAclsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListAclsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties of a single acl.
        # @param [String] name
        #   Identifier. The name for the acl. Represents a single Resource Pattern.
        #   Structured like: projects/`project`/locations/`location`/clusters/`cluster`/
        #   acls/`acl_id` The structure of `acl_id` defines the Resource Pattern (
        #   resource_type, resource_name, pattern_type) of the acl. `acl_id` is structured
        #   like one of the following: For acls on the cluster: `cluster` For acls on a
        #   single resource within the cluster: `topic/`resource_name`` `consumerGroup/`
        #   resource_name`` `transactionalId/`resource_name`` For acls on all resources
        #   that match a prefix: `topicPrefixed/`resource_name`` `consumerGroupPrefixed/`
        #   resource_name`` `transactionalIdPrefixed/`resource_name`` For acls on all
        #   resources of a given type (i.e. the wildcard literal "*"): `allTopics` (
        #   represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `
        #   allTransactionalIds` (represents `transactionalId/*`)
        # @param [Google::Apis::ManagedkafkaV1::Acl] acl_object
        # @param [String] update_mask
        #   Optional. Field mask is used to specify the fields to be overwritten in the
        #   Acl resource by the update. The fields specified in the update_mask are
        #   relative to the resource, not the full request. A field will be overwritten if
        #   it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Acl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Acl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cluster_acl(name, acl_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::Acl::Representation
          command.request_object = acl_object
          command.response_representation = Google::Apis::ManagedkafkaV1::Acl::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Acl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Incremental update: Removes an acl entry from an acl. Deletes the acl if its
        # acl entries become empty (i.e. if the removed entry was the last one in the
        # acl).
        # @param [String] acl
        #   Required. The name of the acl to remove the acl entry from. Structured like: `
        #   projects/`project`/locations/`location`/clusters/`cluster`/acls/`acl_id``. The
        #   structure of `acl_id` defines the Resource Pattern (resource_type,
        #   resource_name, pattern_type) of the acl. See `Acl.name` for details.
        # @param [Google::Apis::ManagedkafkaV1::AclEntry] acl_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::RemoveAclEntryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::RemoveAclEntryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_cluster_acl_acl_entry(acl, acl_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+acl}:removeAclEntry', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::AclEntry::Representation
          command.request_object = acl_entry_object
          command.response_representation = Google::Apis::ManagedkafkaV1::RemoveAclEntryResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::RemoveAclEntryResponse
          command.params['acl'] = acl unless acl.nil?
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
        # @param [String] view
        #   Optional. Specifies the view (BASIC or FULL) of the ConsumerGroup resource to
        #   be returned in the response. Defaults to FULL view.
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
        def list_project_location_cluster_consumer_groups(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/consumerGroups', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListConsumerGroupsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListConsumerGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
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
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
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
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a schema registry instance.
        # @param [String] parent
        #   Required. The parent whose schema registry instance is to be created.
        #   Structured like: `projects/`project`/locations/`location``
        # @param [Google::Apis::ManagedkafkaV1::CreateSchemaRegistryRequest] create_schema_registry_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaRegistry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaRegistry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_schema_registry(parent, create_schema_registry_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/schemaRegistries', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::CreateSchemaRegistryRequest::Representation
          command.request_object = create_schema_registry_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaRegistry::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaRegistry
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a schema registry instance.
        # @param [String] name
        #   Required. The name of the schema registry instance to delete. Structured like:
        #   `projects/`project`/locations/`location`/schemaRegistries/`schema_registry``
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
        def delete_project_location_schema_registry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Empty::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema registry instance.
        # @param [String] name
        #   Required. The name of the schema registry instance to return. Structured like:
        #   `projects/`project`/locations/`location`/schemaRegistries/`schema_registry``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaRegistry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaRegistry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaRegistry::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaRegistry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List schema registries.
        # @param [String] parent
        #   Required. The parent whose schema registry instances are to be listed.
        #   Structured like: `projects/`project`/locations/`location``
        # @param [String] view
        #   Optional. Specifies the view to return for the schema registry instances. If
        #   not specified, the default view is SCHEMA_REGISTRY_VIEW_BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::ListSchemaRegistriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::ListSchemaRegistriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registries(parent, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/schemaRegistries', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::ListSchemaRegistriesResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::ListSchemaRegistriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Check compatibility of a schema with all versions or a specific version of a
        # subject.
        # @param [String] name
        #   Required. The name of the resource to check compatibility for. The format is
        #   either of following: * projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/compatibility/subjects/*/versions: Check
        #   compatibility with one or more versions of the specified subject. * projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/compatibility/
        #   subjects/`subject`/versions/`version`: Check compatibility with a specific
        #   version of the subject.
        # @param [Google::Apis::ManagedkafkaV1::CheckCompatibilityRequest] check_compatibility_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_schema_registry_compatibility_compatibility(name, check_compatibility_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::CheckCompatibilityRequest::Representation
          command.request_object = check_compatibility_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete schema config for a subject.
        # @param [String] name
        #   Required. The resource name of subject to delete the config for. The format is
        #   * projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   config/`subject`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaConfig::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get schema config at global level or for a subject.
        # @param [String] name
        #   Required. The resource name to get the config for. It can be either of
        #   following: * projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/config: Get config at global level. * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/config/`subject`: Get
        #   config for a specific subject.
        # @param [Boolean] default_to_global
        #   Optional. If true, the config will fall back to the config at the global level
        #   if no subject level config is found.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_config(name, default_to_global: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaConfig::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaConfig
          command.params['name'] = name unless name.nil?
          command.query['defaultToGlobal'] = default_to_global unless default_to_global.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update config at global level or for a subject. Creates a SchemaSubject-level
        # SchemaConfig if it does not exist.
        # @param [String] name
        #   Required. The resource name to update the config for. It can be either of
        #   following: * projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/config: Update config at global level. * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/config/`subject`:
        #   Update config for a specific subject.
        # @param [Google::Apis::ManagedkafkaV1::UpdateSchemaConfigRequest] update_schema_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_schema_registry_config(name, update_schema_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::UpdateSchemaConfigRequest::Representation
          command.request_object = update_schema_config_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaConfig::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the context.
        # @param [String] name
        #   Required. The name of the context to return. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/contexts/`
        #   context``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Context] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Context]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Context::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Context
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List contexts for a schema registry.
        # @param [String] parent
        #   Required. The parent of the contexts. Structured like: `projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_contexts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contexts', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Check compatibility of a schema with all versions or a specific version of a
        # subject.
        # @param [String] name
        #   Required. The name of the resource to check compatibility for. The format is
        #   either of following: * projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/compatibility/subjects/*/versions: Check
        #   compatibility with one or more versions of the specified subject. * projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/compatibility/
        #   subjects/`subject`/versions/`version`: Check compatibility with a specific
        #   version of the subject.
        # @param [Google::Apis::ManagedkafkaV1::CheckCompatibilityRequest] check_compatibility_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_schema_registry_context_compatibility_compatibility(name, check_compatibility_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::CheckCompatibilityRequest::Representation
          command.request_object = check_compatibility_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::CheckCompatibilityResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete schema config for a subject.
        # @param [String] name
        #   Required. The resource name of subject to delete the config for. The format is
        #   * projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   config/`subject`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_context_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaConfig::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get schema config at global level or for a subject.
        # @param [String] name
        #   Required. The resource name to get the config for. It can be either of
        #   following: * projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/config: Get config at global level. * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/config/`subject`: Get
        #   config for a specific subject.
        # @param [Boolean] default_to_global
        #   Optional. If true, the config will fall back to the config at the global level
        #   if no subject level config is found.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context_config(name, default_to_global: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaConfig::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaConfig
          command.params['name'] = name unless name.nil?
          command.query['defaultToGlobal'] = default_to_global unless default_to_global.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update config at global level or for a subject. Creates a SchemaSubject-level
        # SchemaConfig if it does not exist.
        # @param [String] name
        #   Required. The resource name to update the config for. It can be either of
        #   following: * projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/config: Update config at global level. * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/config/`subject`:
        #   Update config for a specific subject.
        # @param [Google::Apis::ManagedkafkaV1::UpdateSchemaConfigRequest] update_schema_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_schema_registry_context_config(name, update_schema_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::UpdateSchemaConfigRequest::Representation
          command.request_object = update_schema_config_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaConfig::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete schema mode for a subject.
        # @param [String] name
        #   Required. The resource name of subject to delete the mode for. The format is *
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   mode/`subject` * projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/mode/`subject`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaMode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaMode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_context_mode(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaMode::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaMode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get mode at global level or for a subject.
        # @param [String] name
        #   Required. The resource name of the mode. The format is * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/mode/`subject`: mode
        #   for a schema registry, or * projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/mode/`subject`: mode for
        #   a specific subject in a specific context
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaMode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaMode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context_mode(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaMode::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaMode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update mode at global level or for a subject.
        # @param [String] name
        #   Required. The resource name of the mode. The format is * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/mode/`subject`: mode
        #   for a schema registry, or * projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/mode/`subject`: mode for
        #   a specific subject in a specific context
        # @param [Google::Apis::ManagedkafkaV1::UpdateSchemaModeRequest] update_schema_mode_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaMode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaMode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_schema_registry_context_mode(name, update_schema_mode_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::UpdateSchemaModeRequest::Representation
          command.request_object = update_schema_mode_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaMode::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaMode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema for the given schema id.
        # @param [String] name
        #   Required. The name of the schema to return. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/schemas/ids/`
        #   schema``
        # @param [String] subject
        #   Optional. Used to limit the search for the schema ID to a specific subject,
        #   otherwise the schema ID will be searched for in all subjects in the given
        #   specified context.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context_schema(name, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Schema::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Schema
          command.params['name'] = name unless name.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema string for the given schema id. The response will be the schema
        # string.
        # @param [String] name
        #   Required. The name of the schema to return. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/schemas/ids/`
        #   schema``
        # @param [String] subject
        #   Optional. Used to limit the search for the schema ID to a specific subject,
        #   otherwise the schema ID will be searched for in all subjects in the given
        #   specified context.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context_schema_schema(name, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/schema', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List subjects which reference a particular schema id. The response will be an
        # array of subject names.
        # @param [String] parent
        #   Required. The schema resource whose associated subjects are to be listed.
        #   Structured like: `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/schemas/ids/`schema`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/schemas/ids/`
        #   schema``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted subjects. The
        #   default is false.
        # @param [String] subject
        #   Optional. The subject to filter the subjects by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_context_schema_subjects(parent, deleted: nil, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/subjects', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the supported schema types. The response will be an array of schema types.
        # @param [String] parent
        #   Required. The parent schema registry whose schema types are to be listed.
        #   Structured like: `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_context_schema_types(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/schemas/types', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the schema versions for the given schema id. The response will be an
        # array of subject-version pairs as: [`"subject":"subject1", "version":1`, `"
        # subject":"subject2", "version":2`].
        # @param [String] parent
        #   Required. The schema whose schema versions are to be listed. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   schemas/ids/`schema`` or `projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/schemas/ids/`schema``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted versions of the
        #   schema, even if the subject is soft-deleted. The default is false.
        # @param [String] subject
        #   Optional. The subject to filter the subjects by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_context_schema_versions(parent, deleted: nil, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a subject. The response will be an array of versions of the deleted
        # subject.
        # @param [String] name
        #   Required. The name of the subject to delete. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`` or `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Boolean] permanent
        #   Optional. If true, the subject and all associated metadata including the
        #   schema ID will be deleted permanently. Otherwise, only the subject is soft-
        #   deleted. The default is false. Soft-deleted subjects can still be searched in
        #   ListSubjects API call with deleted=true query parameter. A soft-delete of a
        #   subject must be performed before a hard-delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_context_subject(name, permanent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['permanent'] = permanent unless permanent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List subjects in the schema registry. The response will be an array of subject
        # names.
        # @param [String] parent
        #   Required. The parent schema registry/context whose subjects are to be listed.
        #   Structured like: `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`` or `projects/`project`/locations/`location`/schemaRegistries/
        #   `schema_registry`/contexts/`context``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted subjects. The
        #   default is false.
        # @param [String] subject_prefix
        #   Optional. The context to filter the subjects by, in the format of `:.`context`:
        #   `. If unset, all subjects in the registry are returned. Set to empty string or
        #   add as '?subjectPrefix=' at the end of this request to list subjects in the
        #   default context.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_context_subjects(parent, deleted: nil, subject_prefix: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/subjects', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['subjectPrefix'] = subject_prefix unless subject_prefix.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup a schema under the specified subject.
        # @param [String] parent
        #   Required. The subject to lookup the schema in. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`` or `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Google::Apis::ManagedkafkaV1::LookupVersionRequest] lookup_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_schema_registry_context_subject_version(parent, lookup_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::LookupVersionRequest::Representation
          command.request_object = lookup_version_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaVersion::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Register a new version under a given subject with the given schema.
        # @param [String] parent
        #   Required. The subject to create the version for. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`` or `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Google::Apis::ManagedkafkaV1::CreateVersionRequest] create_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::CreateVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::CreateVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_schema_registry_context_subject_version(parent, create_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/versions', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::CreateVersionRequest::Representation
          command.request_object = create_version_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::CreateVersionResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::CreateVersionResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a version of a subject. The response will be the deleted version id.
        # @param [String] name
        #   Required. The name of the subject version to delete. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`/versions/`version`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/subjects/`
        #   subject`/versions/`version``
        # @param [Boolean] permanent
        #   Optional. If true, both the version and the referenced schema ID will be
        #   permanently deleted. The default is false. If false, the version will be
        #   deleted but the schema ID will be retained. Soft-deleted versions can still be
        #   searched in ListVersions API call with deleted=true query parameter. A soft-
        #   delete of a version must be performed before a hard-delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_context_subject_version(name, permanent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['permanent'] = permanent unless permanent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a versioned schema (schema with subject/version) of a subject.
        # @param [String] name
        #   Required. The name of the subject to return versions. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`/versions/`version`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/subjects/`
        #   subject`/versions/`version``
        # @param [Boolean] deleted
        #   Optional. If true, no matter if the subject/version is soft-deleted or not, it
        #   returns the version details. If false, it returns NOT_FOUND error if the
        #   subject/version is soft-deleted. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context_subject_version(name, deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaVersion::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaVersion
          command.params['name'] = name unless name.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema string only for a version of a subject. The response will be
        # the schema string.
        # @param [String] name
        #   Required. The name of the subject to return versions. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`/versions/`version`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/subjects/`
        #   subject`/versions/`version``
        # @param [Boolean] deleted
        #   Optional. If true, no matter if the subject/version is soft-deleted or not, it
        #   returns the version details. If false, it returns NOT_FOUND error if the
        #   subject/version is soft-deleted. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_context_subject_version_schema(name, deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/schema', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get all versions of a subject. The response will be an array of versions of
        # the subject.
        # @param [String] parent
        #   Required. The subject whose versions are to be listed. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`` or `projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted versions of an
        #   active or soft-deleted subject. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_context_subject_versions(parent, deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of IDs of schemas that reference the schema with the given subject
        # and version.
        # @param [String] parent
        #   Required. The version to list referenced by. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`/versions/`version`` or `projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/subjects/`subject`/
        #   versions/`version``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_context_subject_version_referencedbies(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/referencedby', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete schema mode for a subject.
        # @param [String] name
        #   Required. The resource name of subject to delete the mode for. The format is *
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   mode/`subject` * projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/mode/`subject`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaMode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaMode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_mode(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaMode::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaMode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get mode at global level or for a subject.
        # @param [String] name
        #   Required. The resource name of the mode. The format is * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/mode/`subject`: mode
        #   for a schema registry, or * projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/mode/`subject`: mode for
        #   a specific subject in a specific context
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaMode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaMode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_mode(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaMode::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaMode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update mode at global level or for a subject.
        # @param [String] name
        #   Required. The resource name of the mode. The format is * projects/`project`/
        #   locations/`location`/schemaRegistries/`schema_registry`/mode/`subject`: mode
        #   for a schema registry, or * projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/mode/`subject`: mode for
        #   a specific subject in a specific context
        # @param [Google::Apis::ManagedkafkaV1::UpdateSchemaModeRequest] update_schema_mode_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaMode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaMode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_schema_registry_mode(name, update_schema_mode_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::UpdateSchemaModeRequest::Representation
          command.request_object = update_schema_mode_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaMode::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaMode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema for the given schema id.
        # @param [String] name
        #   Required. The name of the schema to return. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/schemas/ids/`
        #   schema``
        # @param [String] subject
        #   Optional. Used to limit the search for the schema ID to a specific subject,
        #   otherwise the schema ID will be searched for in all subjects in the given
        #   specified context.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_schema(name, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::Schema::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::Schema
          command.params['name'] = name unless name.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema string for the given schema id. The response will be the schema
        # string.
        # @param [String] name
        #   Required. The name of the schema to return. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/schemas/ids/`
        #   schema``
        # @param [String] subject
        #   Optional. Used to limit the search for the schema ID to a specific subject,
        #   otherwise the schema ID will be searched for in all subjects in the given
        #   specified context.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_schema_schema(name, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/schema', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List subjects which reference a particular schema id. The response will be an
        # array of subject names.
        # @param [String] parent
        #   Required. The schema resource whose associated subjects are to be listed.
        #   Structured like: `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/schemas/ids/`schema`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/schemas/ids/`
        #   schema``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted subjects. The
        #   default is false.
        # @param [String] subject
        #   Optional. The subject to filter the subjects by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_schema_subjects(parent, deleted: nil, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/subjects', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the supported schema types. The response will be an array of schema types.
        # @param [String] parent
        #   Required. The parent schema registry whose schema types are to be listed.
        #   Structured like: `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_schema_types(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/schemas/types', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the schema versions for the given schema id. The response will be an
        # array of subject-version pairs as: [`"subject":"subject1", "version":1`, `"
        # subject":"subject2", "version":2`].
        # @param [String] parent
        #   Required. The schema whose schema versions are to be listed. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   schemas/ids/`schema`` or `projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/schemas/ids/`schema``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted versions of the
        #   schema, even if the subject is soft-deleted. The default is false.
        # @param [String] subject
        #   Optional. The subject to filter the subjects by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_schema_versions(parent, deleted: nil, subject: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['subject'] = subject unless subject.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a subject. The response will be an array of versions of the deleted
        # subject.
        # @param [String] name
        #   Required. The name of the subject to delete. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`` or `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Boolean] permanent
        #   Optional. If true, the subject and all associated metadata including the
        #   schema ID will be deleted permanently. Otherwise, only the subject is soft-
        #   deleted. The default is false. Soft-deleted subjects can still be searched in
        #   ListSubjects API call with deleted=true query parameter. A soft-delete of a
        #   subject must be performed before a hard-delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_subject(name, permanent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['permanent'] = permanent unless permanent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List subjects in the schema registry. The response will be an array of subject
        # names.
        # @param [String] parent
        #   Required. The parent schema registry/context whose subjects are to be listed.
        #   Structured like: `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`` or `projects/`project`/locations/`location`/schemaRegistries/
        #   `schema_registry`/contexts/`context``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted subjects. The
        #   default is false.
        # @param [String] subject_prefix
        #   Optional. The context to filter the subjects by, in the format of `:.`context`:
        #   `. If unset, all subjects in the registry are returned. Set to empty string or
        #   add as '?subjectPrefix=' at the end of this request to list subjects in the
        #   default context.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_subjects(parent, deleted: nil, subject_prefix: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/subjects', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['subjectPrefix'] = subject_prefix unless subject_prefix.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup a schema under the specified subject.
        # @param [String] parent
        #   Required. The subject to lookup the schema in. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`` or `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Google::Apis::ManagedkafkaV1::LookupVersionRequest] lookup_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_schema_registry_subject_version(parent, lookup_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::LookupVersionRequest::Representation
          command.request_object = lookup_version_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaVersion::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Register a new version under a given subject with the given schema.
        # @param [String] parent
        #   Required. The subject to create the version for. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`` or `projects/`project`/locations/`location`/schemaRegistries/`
        #   schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Google::Apis::ManagedkafkaV1::CreateVersionRequest] create_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::CreateVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::CreateVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_schema_registry_subject_version(parent, create_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/versions', options)
          command.request_representation = Google::Apis::ManagedkafkaV1::CreateVersionRequest::Representation
          command.request_object = create_version_request_object
          command.response_representation = Google::Apis::ManagedkafkaV1::CreateVersionResponse::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::CreateVersionResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a version of a subject. The response will be the deleted version id.
        # @param [String] name
        #   Required. The name of the subject version to delete. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`/versions/`version`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/subjects/`
        #   subject`/versions/`version``
        # @param [Boolean] permanent
        #   Optional. If true, both the version and the referenced schema ID will be
        #   permanently deleted. The default is false. If false, the version will be
        #   deleted but the schema ID will be retained. Soft-deleted versions can still be
        #   searched in ListVersions API call with deleted=true query parameter. A soft-
        #   delete of a version must be performed before a hard-delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_schema_registry_subject_version(name, permanent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['permanent'] = permanent unless permanent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a versioned schema (schema with subject/version) of a subject.
        # @param [String] name
        #   Required. The name of the subject to return versions. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`/versions/`version`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/subjects/`
        #   subject`/versions/`version``
        # @param [Boolean] deleted
        #   Optional. If true, no matter if the subject/version is soft-deleted or not, it
        #   returns the version details. If false, it returns NOT_FOUND error if the
        #   subject/version is soft-deleted. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::SchemaVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::SchemaVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_subject_version(name, deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::SchemaVersion::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::SchemaVersion
          command.params['name'] = name unless name.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the schema string only for a version of a subject. The response will be
        # the schema string.
        # @param [String] name
        #   Required. The name of the subject to return versions. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`/versions/`version`` or `projects/`project`/locations/`
        #   location`/schemaRegistries/`schema_registry`/contexts/`context`/subjects/`
        #   subject`/versions/`version``
        # @param [Boolean] deleted
        #   Optional. If true, no matter if the subject/version is soft-deleted or not, it
        #   returns the version details. If false, it returns NOT_FOUND error if the
        #   subject/version is soft-deleted. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_schema_registry_subject_version_schema(name, deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/schema', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get all versions of a subject. The response will be an array of versions of
        # the subject.
        # @param [String] parent
        #   Required. The subject whose versions are to be listed. Structured like: `
        #   projects/`project`/locations/`location`/schemaRegistries/`schema_registry`/
        #   subjects/`subject`` or `projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/subjects/`subject``
        # @param [Boolean] deleted
        #   Optional. If true, the response will include soft-deleted versions of an
        #   active or soft-deleted subject. The default is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_subject_versions(parent, deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['deleted'] = deleted unless deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of IDs of schemas that reference the schema with the given subject
        # and version.
        # @param [String] parent
        #   Required. The version to list referenced by. Structured like: `projects/`
        #   project`/locations/`location`/schemaRegistries/`schema_registry`/subjects/`
        #   subject`/versions/`version`` or `projects/`project`/locations/`location`/
        #   schemaRegistries/`schema_registry`/contexts/`context`/subjects/`subject`/
        #   versions/`version``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ManagedkafkaV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ManagedkafkaV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_schema_registry_subject_version_referencedbies(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/referencedby', options)
          command.response_representation = Google::Apis::ManagedkafkaV1::HttpBody::Representation
          command.response_class = Google::Apis::ManagedkafkaV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
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
