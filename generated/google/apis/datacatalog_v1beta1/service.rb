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
    module DatacatalogV1beta1
      # Google Cloud Data Catalog API
      #
      # A fully managed and highly scalable data discovery and metadata management
      #  service.
      #
      # @example
      #    require 'google/apis/datacatalog_v1beta1'
      #
      #    Datacatalog = Google::Apis::DatacatalogV1beta1 # Alias the module
      #    service = Datacatalog::DataCatalogService.new
      #
      # @see https://cloud.google.com/data-catalog/docs/
      class DataCatalogService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://datacatalog.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Searches Data Catalog for multiple resources like entries, tags that match a
        # query. This is a custom method (https://cloud.google.com/apis/design/
        # custom_methods) and does not return the complete resource, only the resource
        # identifier and high level fields. Clients can subsequentally call `Get`
        # methods. Note that Data Catalog search queries do not guarantee full recall.
        # Query results that match your query may not be returned, even in subsequent
        # result pages. Also note that results returned (and not returned) can vary
        # across repeated search queries. See [Data Catalog Search Syntax](https://cloud.
        # google.com/data-catalog/docs/how-to/search-reference) for more information.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogRequest] google_cloud_datacatalog_v1beta1_search_catalog_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_catalogs(google_cloud_datacatalog_v1beta1_search_catalog_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/catalog:search', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogRequest::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_search_catalog_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an entry by target resource name. This method allows clients to use the
        # resource name from the source Google Cloud Platform service to get the Data
        # Catalog Entry.
        # @param [String] linked_resource
        #   The full name of the Google Cloud Platform resource the Data Catalog entry
        #   represents. See: https://cloud.google.com/apis/design/resource_names#
        #   full_resource_name. Full names are case-sensitive. Examples: * //bigquery.
        #   googleapis.com/projects/projectId/datasets/datasetId/tables/tableId * //pubsub.
        #   googleapis.com/projects/projectId/topics/topicId
        # @param [String] sql_resource
        #   The SQL name of the entry. SQL names are case-sensitive. Examples: * `pubsub.
        #   project_id.topic_id` * ``pubsub.project_id.`topic.id.with.dots` `` * `bigquery.
        #   table.project_id.dataset_id.table_id` * `bigquery.dataset.project_id.
        #   dataset_id` * `datacatalog.entry.project_id.location_id.entry_group_id.
        #   entry_id` `*_id`s shoud satisfy the standard SQL rules for identifiers. https:/
        #   /cloud.google.com/bigquery/docs/reference/standard-sql/lexical.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_entry(linked_resource: nil, sql_resource: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/entries:lookup', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry
          command.query['linkedResource'] = linked_resource unless linked_resource.nil?
          command.query['sqlResource'] = sql_resource unless sql_resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # A maximum of 10,000 entry groups may be created per organization across all
        # locations. Users should enable the Data Catalog API in the project identified
        # by the `parent` parameter (see [Data Catalog Resource Project] (https://cloud.
        # google.com/data-catalog/docs/concepts/resource-project) for more information).
        # @param [String] parent
        #   Required. The name of the project this entry group is in. Example: * projects/`
        #   project_id`/locations/`location` Note that this EntryGroup and its child
        #   resources may not actually be stored in the location in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup] google_cloud_datacatalog_v1beta1_entry_group_object
        # @param [String] entry_group_id
        #   Required. The id of the entry group to create. The id must begin with a letter
        #   or underscore, contain only English letters, numbers and underscores, and be
        #   at most 64 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group(parent, google_cloud_datacatalog_v1beta1_entry_group_object = nil, entry_group_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/entryGroups', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_entry_group_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['entryGroupId'] = entry_group_id unless entry_group_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an EntryGroup. Only entry groups that do not contain entries can be
        # deleted. Users should enable the Data Catalog API in the project identified by
        # the `name` parameter (see [Data Catalog Resource Project] (https://cloud.
        # google.com/data-catalog/docs/concepts/resource-project) for more information).
        # @param [String] name
        #   Required. The name of the entry group. For example, `projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id``.
        # @param [Boolean] force
        #   Optional. If true, deletes all entries in the entry group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an EntryGroup.
        # @param [String] name
        #   Required. The name of the entry group. For example, `projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id``.
        # @param [String] read_mask
        #   The fields to return. If not set or empty, all fields are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. A `NOT_FOUND` error is returned
        # if the resource does not exist. An empty policy is returned if the resource
        # exists but does not have a policy set on it. Supported resources are: - Tag
        # templates. - Entries. - Entry groups. Note, this method cannot be used to
        # manage policies for BigQuery, Pub/Sub and any external Google Cloud Platform
        # resources synced to Data Catalog. Callers must have following Google IAM
        # permission - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
        # templates. - `datacatalog.entries.getIamPolicy` to get policies on entries. - `
        # datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entry_group_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists entry groups.
        # @param [String] parent
        #   Required. The name of the location that contains the entry groups, which can
        #   be provided in URL format. Example: * projects/`project_id`/locations/`
        #   location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. Default is 10. Max limit is
        #   1000. Throws an invalid argument for `page_size > 1000`.
        # @param [String] page_token
        #   Optional. Token that specifies which page is requested. If empty, the first
        #   page is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/entryGroups', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an EntryGroup. The user should enable the Data Catalog API in the
        # project identified by the `entry_group.name` parameter (see [Data Catalog
        # Resource Project] (https://cloud.google.com/data-catalog/docs/concepts/
        # resource-project) for more information).
        # @param [String] name
        #   The resource name of the entry group in URL format. Example: * projects/`
        #   project_id`/locations/`location`/entryGroups/`entry_group_id` Note that this
        #   EntryGroup and its child resources may not actually be stored in the location
        #   in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup] google_cloud_datacatalog_v1beta1_entry_group_object
        # @param [String] update_mask
        #   The fields to update on the entry group. If absent or empty, all modifiable
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group(name, google_cloud_datacatalog_v1beta1_entry_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_entry_group_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for a resource. Replaces any existing policy.
        # Supported resources are: - Tag templates. - Entries. - Entry groups. Note,
        # this method cannot be used to manage policies for BigQuery, Pub/Sub and any
        # external Google Cloud Platform resources synced to Data Catalog. Callers must
        # have following Google IAM permission - `datacatalog.tagTemplates.setIamPolicy`
        # to set policies on tag templates. - `datacatalog.entries.setIamPolicy` to set
        # policies on entries. - `datacatalog.entryGroups.setIamPolicy` to set policies
        # on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_entry_group_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a resource. If the resource does not exist,
        # an empty set of permissions is returned (We don't return a `NOT_FOUND` error).
        # Supported resources are: - Tag templates. - Entries. - Entry groups. Note,
        # this method cannot be used to manage policies for BigQuery, Pub/Sub and any
        # external Google Cloud Platform resources synced to Data Catalog. A caller is
        # not required to have Google IAM permission to make this request.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_entry_group_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entry. Only entries of 'FILESET' type or user-specified type can be
        # created. Users should enable the Data Catalog API in the project identified by
        # the `parent` parameter (see [Data Catalog Resource Project] (https://cloud.
        # google.com/data-catalog/docs/concepts/resource-project) for more information).
        # A maximum of 100,000 entries may be created per entry group.
        # @param [String] parent
        #   Required. The name of the entry group this entry is in. Example: * projects/`
        #   project_id`/locations/`location`/entryGroups/`entry_group_id` Note that this
        #   Entry and its child resources may not actually be stored in the location in
        #   this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry] google_cloud_datacatalog_v1beta1_entry_object
        # @param [String] entry_id
        #   Required. The id of the entry to create.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_entry(parent, google_cloud_datacatalog_v1beta1_entry_object = nil, entry_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/entries', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_entry_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry
          command.params['parent'] = parent unless parent.nil?
          command.query['entryId'] = entry_id unless entry_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing entry. Only entries created through CreateEntry method can
        # be deleted. Users should enable the Data Catalog API in the project identified
        # by the `name` parameter (see [Data Catalog Resource Project] (https://cloud.
        # google.com/data-catalog/docs/concepts/resource-project) for more information).
        # @param [String] name
        #   Required. The name of the entry. Example: * projects/`project_id`/locations/`
        #   location`/entryGroups/`entry_group_id`/entries/`entry_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an entry.
        # @param [String] name
        #   Required. The name of the entry. Example: * projects/`project_id`/locations/`
        #   location`/entryGroups/`entry_group_id`/entries/`entry_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. A `NOT_FOUND` error is returned
        # if the resource does not exist. An empty policy is returned if the resource
        # exists but does not have a policy set on it. Supported resources are: - Tag
        # templates. - Entries. - Entry groups. Note, this method cannot be used to
        # manage policies for BigQuery, Pub/Sub and any external Google Cloud Platform
        # resources synced to Data Catalog. Callers must have following Google IAM
        # permission - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
        # templates. - `datacatalog.entries.getIamPolicy` to get policies on entries. - `
        # datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entry_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists entries.
        # @param [String] parent
        #   Required. The name of the entry group that contains the entries, which can be
        #   provided in URL format. Example: * projects/`project_id`/locations/`location`/
        #   entryGroups/`entry_group_id`
        # @param [Fixnum] page_size
        #   The maximum number of items to return. Default is 10. Max limit is 1000.
        #   Throws an invalid argument for `page_size > 1000`.
        # @param [String] page_token
        #   Token that specifies which page is requested. If empty, the first page is
        #   returned.
        # @param [String] read_mask
        #   The fields to return for each Entry. If not set or empty, all fields are
        #   returned. For example, setting read_mask to contain only one path "name" will
        #   cause ListEntries to return a list of Entries with only "name" field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_entries(parent, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/entries', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntriesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing entry. Users should enable the Data Catalog API in the
        # project identified by the `entry.name` parameter (see [Data Catalog Resource
        # Project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project)
        # for more information).
        # @param [String] name
        #   The Data Catalog resource name of the entry in URL format. Example: * projects/
        #   `project_id`/locations/`location`/entryGroups/`entry_group_id`/entries/`
        #   entry_id` Note that this Entry and its child resources may not actually be
        #   stored in the location in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry] google_cloud_datacatalog_v1beta1_entry_object
        # @param [String] update_mask
        #   The fields to update on the entry. If absent or empty, all modifiable fields
        #   are updated. The following fields are modifiable: * For entries with type `
        #   DATA_STREAM`: * `schema` * For entries with type `FILESET` * `schema` * `
        #   display_name` * `description` * `gcs_fileset_spec` * `gcs_fileset_spec.
        #   file_patterns` * For entries with `user_specified_type` * `schema` * `
        #   display_name` * `description` * user_specified_type * user_specified_system *
        #   linked_resource * source_system_timestamps
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_entry(name, google_cloud_datacatalog_v1beta1_entry_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_entry_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a resource. If the resource does not exist,
        # an empty set of permissions is returned (We don't return a `NOT_FOUND` error).
        # Supported resources are: - Tag templates. - Entries. - Entry groups. Note,
        # this method cannot be used to manage policies for BigQuery, Pub/Sub and any
        # external Google Cloud Platform resources synced to Data Catalog. A caller is
        # not required to have Google IAM permission to make this request.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_entry_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag on an Entry. Note: The project identified by the `parent`
        # parameter for the [tag](https://cloud.google.com/data-catalog/docs/reference/
        # rest/v1beta1/projects.locations.entryGroups.entries.tags/create#path-
        # parameters) and the [tag template](https://cloud.google.com/data-catalog/docs/
        # reference/rest/v1beta1/projects.locations.tagTemplates/create#path-parameters)
        # used to create the tag must be from the same organization.
        # @param [String] parent
        #   Required. The name of the resource to attach this tag to. Tags can be attached
        #   to Entries. Example: * projects/`project_id`/locations/`location`/entryGroups/`
        #   entry_group_id`/entries/`entry_id` Note that this Tag and its child resources
        #   may not actually be stored in the location in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] google_cloud_datacatalog_v1beta1_tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_entry_tag(parent, google_cloud_datacatalog_v1beta1_tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/tags', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag.
        # @param [String] name
        #   Required. The name of the tag to delete. Example: * projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id`/entries/`entry_id`/tags/`
        #   tag_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_entry_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tags on an Entry.
        # @param [String] parent
        #   Required. The name of the Data Catalog resource to list the tags of. The
        #   resource could be an Entry or an EntryGroup. Examples: * projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id` * projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id`/entries/`entry_id`
        # @param [Fixnum] page_size
        #   The maximum number of tags to return. Default is 10. Max limit is 1000.
        # @param [String] page_token
        #   Token that specifies which page is requested. If empty, the first page is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_entry_tags(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/tags', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing tag.
        # @param [String] name
        #   The resource name of the tag in URL format. Example: * projects/`project_id`/
        #   locations/`location`/entrygroups/`entry_group_id`/entries/`entry_id`/tags/`
        #   tag_id` where `tag_id` is a system-generated identifier. Note that this Tag
        #   may not actually be stored in the location in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] google_cloud_datacatalog_v1beta1_tag_object
        # @param [String] update_mask
        #   The fields to update on the Tag. If absent or empty, all modifiable fields are
        #   updated. Currently the only modifiable field is the field `fields`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_entry_tag(name, google_cloud_datacatalog_v1beta1_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag on an Entry. Note: The project identified by the `parent`
        # parameter for the [tag](https://cloud.google.com/data-catalog/docs/reference/
        # rest/v1beta1/projects.locations.entryGroups.entries.tags/create#path-
        # parameters) and the [tag template](https://cloud.google.com/data-catalog/docs/
        # reference/rest/v1beta1/projects.locations.tagTemplates/create#path-parameters)
        # used to create the tag must be from the same organization.
        # @param [String] parent
        #   Required. The name of the resource to attach this tag to. Tags can be attached
        #   to Entries. Example: * projects/`project_id`/locations/`location`/entryGroups/`
        #   entry_group_id`/entries/`entry_id` Note that this Tag and its child resources
        #   may not actually be stored in the location in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] google_cloud_datacatalog_v1beta1_tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_tag(parent, google_cloud_datacatalog_v1beta1_tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/tags', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag.
        # @param [String] name
        #   Required. The name of the tag to delete. Example: * projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id`/entries/`entry_id`/tags/`
        #   tag_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tags on an Entry.
        # @param [String] parent
        #   Required. The name of the Data Catalog resource to list the tags of. The
        #   resource could be an Entry or an EntryGroup. Examples: * projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id` * projects/`project_id`/
        #   locations/`location`/entryGroups/`entry_group_id`/entries/`entry_id`
        # @param [Fixnum] page_size
        #   The maximum number of tags to return. Default is 10. Max limit is 1000.
        # @param [String] page_token
        #   Token that specifies which page is requested. If empty, the first page is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_tags(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/tags', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing tag.
        # @param [String] name
        #   The resource name of the tag in URL format. Example: * projects/`project_id`/
        #   locations/`location`/entrygroups/`entry_group_id`/entries/`entry_id`/tags/`
        #   tag_id` where `tag_id` is a system-generated identifier. Note that this Tag
        #   may not actually be stored in the location in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] google_cloud_datacatalog_v1beta1_tag_object
        # @param [String] update_mask
        #   The fields to update on the Tag. If absent or empty, all modifiable fields are
        #   updated. Currently the only modifiable field is the field `fields`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_tag(name, google_cloud_datacatalog_v1beta1_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag template. The user should enable the Data Catalog API in the
        # project identified by the `parent` parameter (see [Data Catalog Resource
        # Project](https://cloud.google.com/data-catalog/docs/concepts/resource-project)
        # for more information).
        # @param [String] parent
        #   Required. The name of the project and the template location [region](https://
        #   cloud.google.com/data-catalog/docs/concepts/regions. Example: * projects/`
        #   project_id`/locations/us-central1
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate] google_cloud_datacatalog_v1beta1_tag_template_object
        # @param [String] tag_template_id
        #   Required. The id of the tag template to create.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tag_template(parent, google_cloud_datacatalog_v1beta1_tag_template_object = nil, tag_template_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/tagTemplates', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_template_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['tagTemplateId'] = tag_template_id unless tag_template_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag template and all tags using the template. Users should enable
        # the Data Catalog API in the project identified by the `name` parameter (see [
        # Data Catalog Resource Project] (https://cloud.google.com/data-catalog/docs/
        # concepts/resource-project) for more information).
        # @param [String] name
        #   Required. The name of the tag template to delete. Example: * projects/`
        #   project_id`/locations/`location`/tagTemplates/`tag_template_id`
        # @param [Boolean] force
        #   Required. Currently, this field must always be set to `true`. This confirms
        #   the deletion of any possible tags using this template. `force = false` will be
        #   supported in the future.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tag_template(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a tag template.
        # @param [String] name
        #   Required. The name of the tag template. Example: * projects/`project_id`/
        #   locations/`location`/tagTemplates/`tag_template_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tag_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. A `NOT_FOUND` error is returned
        # if the resource does not exist. An empty policy is returned if the resource
        # exists but does not have a policy set on it. Supported resources are: - Tag
        # templates. - Entries. - Entry groups. Note, this method cannot be used to
        # manage policies for BigQuery, Pub/Sub and any external Google Cloud Platform
        # resources synced to Data Catalog. Callers must have following Google IAM
        # permission - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
        # templates. - `datacatalog.entries.getIamPolicy` to get policies on entries. - `
        # datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tag_template_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a tag template. This method cannot be used to update the fields of a
        # template. The tag template fields are represented as separate resources and
        # should be updated using their own create/update/delete methods. Users should
        # enable the Data Catalog API in the project identified by the `tag_template.
        # name` parameter (see [Data Catalog Resource Project] (https://cloud.google.com/
        # data-catalog/docs/concepts/resource-project) for more information).
        # @param [String] name
        #   The resource name of the tag template in URL format. Example: * projects/`
        #   project_id`/locations/`location`/tagTemplates/`tag_template_id` Note that this
        #   TagTemplate and its child resources may not actually be stored in the location
        #   in this name.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate] google_cloud_datacatalog_v1beta1_tag_template_object
        # @param [String] update_mask
        #   The field mask specifies the parts of the template to overwrite. Allowed
        #   fields: * `display_name` If absent or empty, all of the allowed fields above
        #   will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tag_template(name, google_cloud_datacatalog_v1beta1_tag_template_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_template_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplate
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for a resource. Replaces any existing policy.
        # Supported resources are: - Tag templates. - Entries. - Entry groups. Note,
        # this method cannot be used to manage policies for BigQuery, Pub/Sub and any
        # external Google Cloud Platform resources synced to Data Catalog. Callers must
        # have following Google IAM permission - `datacatalog.tagTemplates.setIamPolicy`
        # to set policies on tag templates. - `datacatalog.entries.setIamPolicy` to set
        # policies on entries. - `datacatalog.entryGroups.setIamPolicy` to set policies
        # on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_tag_template_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a resource. If the resource does not exist,
        # an empty set of permissions is returned (We don't return a `NOT_FOUND` error).
        # Supported resources are: - Tag templates. - Entries. - Entry groups. Note,
        # this method cannot be used to manage policies for BigQuery, Pub/Sub and any
        # external Google Cloud Platform resources synced to Data Catalog. A caller is
        # not required to have Google IAM permission to make this request.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_tag_template_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a field in a tag template. The user should enable the Data Catalog API
        # in the project identified by the `parent` parameter (see [Data Catalog
        # Resource Project](https://cloud.google.com/data-catalog/docs/concepts/resource-
        # project) for more information).
        # @param [String] parent
        #   Required. The name of the project and the template location [region](https://
        #   cloud.google.com/data-catalog/docs/concepts/regions). Example: * projects/`
        #   project_id`/locations/us-central1/tagTemplates/`tag_template_id`
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField] google_cloud_datacatalog_v1beta1_tag_template_field_object
        # @param [String] tag_template_field_id
        #   Required. The ID of the tag template field to create. Field ids can contain
        #   letters (both uppercase and lowercase), numbers (0-9), underscores (_) and
        #   dashes (-). Field IDs must be at least 1 character long and at most 128
        #   characters long. Field IDs must also be unique within their template.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tag_template_field(parent, google_cloud_datacatalog_v1beta1_tag_template_field_object = nil, tag_template_field_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fields', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_template_field_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField
          command.params['parent'] = parent unless parent.nil?
          command.query['tagTemplateFieldId'] = tag_template_field_id unless tag_template_field_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a field in a tag template and all uses of that field. Users should
        # enable the Data Catalog API in the project identified by the `name` parameter (
        # see [Data Catalog Resource Project] (https://cloud.google.com/data-catalog/
        # docs/concepts/resource-project) for more information).
        # @param [String] name
        #   Required. The name of the tag template field to delete. Example: * projects/`
        #   project_id`/locations/`location`/tagTemplates/`tag_template_id`/fields/`
        #   tag_template_field_id`
        # @param [Boolean] force
        #   Required. Currently, this field must always be set to `true`. This confirms
        #   the deletion of this field from any tags using this field. `force = false`
        #   will be supported in the future.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tag_template_field(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a field in a tag template. This method cannot be used to update the
        # field type. Users should enable the Data Catalog API in the project identified
        # by the `name` parameter (see [Data Catalog Resource Project] (https://cloud.
        # google.com/data-catalog/docs/concepts/resource-project) for more information).
        # @param [String] name
        #   Required. The name of the tag template field. Example: * projects/`project_id`/
        #   locations/`location`/tagTemplates/`tag_template_id`/fields/`
        #   tag_template_field_id`
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField] google_cloud_datacatalog_v1beta1_tag_template_field_object
        # @param [String] update_mask
        #   Optional. The field mask specifies the parts of the template to be updated.
        #   Allowed fields: * `display_name` * `type.enum_type` * `is_required` If `
        #   update_mask` is not set or empty, all of the allowed fields above will be
        #   updated. When updating an enum type, the provided values will be merged with
        #   the existing values. Therefore, enum values can only be added, existing enum
        #   values cannot be deleted nor renamed. Updating a template field from optional
        #   to required is NOT allowed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tag_template_field(name, google_cloud_datacatalog_v1beta1_tag_template_field_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_tag_template_field_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renames a field in a tag template. The user should enable the Data Catalog API
        # in the project identified by the `name` parameter (see [Data Catalog Resource
        # Project](https://cloud.google.com/data-catalog/docs/concepts/resource-project)
        # for more information).
        # @param [String] name
        #   Required. The name of the tag template. Example: * projects/`project_id`/
        #   locations/`location`/tagTemplates/`tag_template_id`/fields/`
        #   tag_template_field_id`
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest] google_cloud_datacatalog_v1beta1_rename_tag_template_field_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_project_location_tag_template_field(name, google_cloud_datacatalog_v1beta1_rename_tag_template_field_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:rename', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_rename_tag_template_field_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renames an enum value in a tag template. The enum values have to be unique
        # within one enum field. Thus, an enum value cannot be renamed with a name used
        # in any other enum value within the same enum field.
        # @param [String] name
        #   Required. The name of the enum field value. Example: * projects/`project_id`/
        #   locations/`location`/tagTemplates/`tag_template_id`/fields/`
        #   tag_template_field_id`/enumValues/`enum_value_display_name`
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest] google_cloud_datacatalog_v1beta1_rename_tag_template_field_enum_value_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_project_location_tag_template_field_enum_value(name, google_cloud_datacatalog_v1beta1_rename_tag_template_field_enum_value_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:rename', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_rename_tag_template_field_enum_value_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a taxonomy in the specified project.
        # @param [String] parent
        #   Required. Resource name of the project that the taxonomy will belong to.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy] google_cloud_datacatalog_v1beta1_taxonomy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_taxonomy(parent, google_cloud_datacatalog_v1beta1_taxonomy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/taxonomies', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_taxonomy_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a taxonomy. This operation will also delete all policy tags in this
        # taxonomy along with their associated policies.
        # @param [String] name
        #   Required. Resource name of the taxonomy to be deleted. All policy tags in this
        #   taxonomy will also be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_taxonomy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports all taxonomies and their policy tags in a project. This method
        # generates SerializedTaxonomy protos with nested policy tags that can be used
        # as an input for future ImportTaxonomies calls.
        # @param [String] parent
        #   Required. Resource name of the project that taxonomies to be exported will
        #   share.
        # @param [Boolean] serialized_taxonomies
        #   Export taxonomies as serialized taxonomies.
        # @param [Array<String>, String] taxonomies
        #   Required. Resource names of the taxonomies to be exported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_taxonomy(parent, serialized_taxonomies: nil, taxonomies: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/taxonomies:export', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['serializedTaxonomies'] = serialized_taxonomies unless serialized_taxonomies.nil?
          command.query['taxonomies'] = taxonomies unless taxonomies.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a taxonomy.
        # @param [String] name
        #   Required. Resource name of the requested taxonomy.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_taxonomy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for a taxonomy or a policy tag.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_taxonomy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports all taxonomies and their policy tags to a project as new taxonomies.
        # This method provides a bulk taxonomy / policy tag creation using nested proto
        # structure.
        # @param [String] parent
        #   Required. Resource name of project that the imported taxonomies will belong to.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest] google_cloud_datacatalog_v1beta1_import_taxonomies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_taxonomy(parent, google_cloud_datacatalog_v1beta1_import_taxonomies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/taxonomies:import', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_import_taxonomies_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all taxonomies in a project in a particular location that the caller has
        # permission to view.
        # @param [String] parent
        #   Required. Resource name of the project to list the taxonomies of.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. Must be a value between 1 and 1000. If
        #   not set, defaults to 50.
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any. If
        #   not set, defaults to an empty string.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_taxonomies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/taxonomies', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a taxonomy.
        # @param [String] name
        #   Output only. Resource name of this taxonomy, whose format is: "projects/`
        #   project_number`/locations/`location_id`/taxonomies/`id`".
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy] google_cloud_datacatalog_v1beta1_taxonomy_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask If not set, defaults to all of the fields that are allowed to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_taxonomy(name, google_cloud_datacatalog_v1beta1_taxonomy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_taxonomy_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy for a taxonomy or a policy tag.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_taxonomy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the permissions that a caller has on the specified taxonomy or policy
        # tag.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_taxonomy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a policy tag in the specified taxonomy.
        # @param [String] parent
        #   Required. Resource name of the taxonomy that the policy tag will belong to.
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag] google_cloud_datacatalog_v1beta1_policy_tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_taxonomy_policy_tag(parent, google_cloud_datacatalog_v1beta1_policy_tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/policyTags', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_policy_tag_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy tag. Also deletes all of its descendant policy tags.
        # @param [String] name
        #   Required. Resource name of the policy tag to be deleted. All of its descendant
        #   policy tags will also be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_taxonomy_policy_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy tag.
        # @param [String] name
        #   Required. Resource name of the requested policy tag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_taxonomy_policy_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for a taxonomy or a policy tag.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_policy_tag_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all policy tags in a taxonomy.
        # @param [String] parent
        #   Required. Resource name of the taxonomy to list the policy tags of.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. Must be a value between 1 and 1000. If
        #   not set, defaults to 50.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any. If
        #   not set, defaults to an empty string.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_taxonomy_policy_tags(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/policyTags', options)
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a policy tag.
        # @param [String] name
        #   Output only. Resource name of this policy tag, whose format is: "projects/`
        #   project_number`/locations/`location_id`/taxonomies/`taxonomy_id`/policyTags/`
        #   id`".
        # @param [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag] google_cloud_datacatalog_v1beta1_policy_tag_object
        # @param [String] update_mask
        #   The update mask applies to the resource. Only display_name, description and
        #   parent_policy_tag can be updated and thus can be listed in the mask. If
        #   update_mask is not provided, all allowed fields (i.e. display_name,
        #   description and parent) will be updated. For more information including the `
        #   FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#fieldmask If not set, defaults to all of the fields
        #   that are allowed to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_taxonomy_policy_tag(name, google_cloud_datacatalog_v1beta1_policy_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag::Representation
          command.request_object = google_cloud_datacatalog_v1beta1_policy_tag_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy for a taxonomy or a policy tag.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_policy_tag_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the permissions that a caller has on the specified taxonomy or policy
        # tag.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_policy_tag_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
