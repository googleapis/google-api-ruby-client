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
    module DatacatalogV1
      # Google Cloud Data Catalog API
      #
      # A fully managed and highly scalable data discovery and metadata management
      #  service.
      #
      # @example
      #    require 'google/apis/datacatalog_v1'
      #
      #    Datacatalog = Google::Apis::DatacatalogV1 # Alias the module
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
          super('https://datacatalog.googleapis.com/', '',
                client_name: 'google-apis-datacatalog_v1',
                client_version: Google::Apis::DatacatalogV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Searches Data Catalog for multiple resources like entries and tags that match
        # a query. This is a [Custom Method] (https://cloud.google.com/apis/design/
        # custom_methods) that doesn't return all information on a resource, only its ID
        # and high level fields. To get more information, you can subsequently call
        # specific get methods. Note: Data Catalog search queries don't guarantee full
        # recall. Results that match your query might not be returned, even in
        # subsequent result pages. Additionally, returned (and not returned) results can
        # vary if you repeat search queries. For more information, see [Data Catalog
        # search syntax] (https://cloud.google.com/data-catalog/docs/how-to/search-
        # reference).
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogRequest] google_cloud_datacatalog_v1_search_catalog_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_catalogs(google_cloud_datacatalog_v1_search_catalog_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/catalog:search', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_search_catalog_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an entry by its target resource name. The resource name comes from the
        # source Google Cloud Platform service.
        # @param [String] fully_qualified_name
        #   Fully qualified name (FQN) of the resource. FQNs take two forms: * For non-
        #   regionalized resources: ``SYSTEM`:`PROJECT`.`
        #   PATH_TO_RESOURCE_SEPARATED_WITH_DOTS`` * For regionalized resources: ``SYSTEM`:
        #   `PROJECT`.`LOCATION_ID`.`PATH_TO_RESOURCE_SEPARATED_WITH_DOTS`` Example for a
        #   DPMS table: `dataproc_metastore:`PROJECT_ID`.`LOCATION_ID`.`INSTANCE_ID`.`
        #   DATABASE_ID`.`TABLE_ID``
        # @param [String] linked_resource
        #   The full name of the Google Cloud Platform resource the Data Catalog entry
        #   represents. For more information, see [Full Resource Name] (https://cloud.
        #   google.com/apis/design/resource_names#full_resource_name). Full names are case-
        #   sensitive. For example: * `//bigquery.googleapis.com/projects/`PROJECT_ID`/
        #   datasets/`DATASET_ID`/tables/`TABLE_ID`` * `//pubsub.googleapis.com/projects/`
        #   PROJECT_ID`/topics/`TOPIC_ID``
        # @param [String] sql_resource
        #   The SQL name of the entry. SQL names are case-sensitive. Examples: * `pubsub.
        #   topic.`PROJECT_ID`.`TOPIC_ID`` * `pubsub.topic.`PROJECT_ID`.`\```TOPIC.ID.
        #   SEPARATED.WITH.DOTS``\` * `bigquery.table.`PROJECT_ID`.`DATASET_ID`.`TABLE_ID``
        #   * `bigquery.dataset.`PROJECT_ID`.`DATASET_ID`` * `datacatalog.entry.`
        #   PROJECT_ID`.`LOCATION_ID`.`ENTRY_GROUP_ID`.`ENTRY_ID`` Identifiers (`*_ID`)
        #   should comply with the [Lexical structure in Standard SQL] (https://cloud.
        #   google.com/bigquery/docs/reference/standard-sql/lexical).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_entry(fully_qualified_name: nil, linked_resource: nil, sql_resource: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/entries:lookup', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry
          command.query['fullyQualifiedName'] = fully_qualified_name unless fully_qualified_name.nil?
          command.query['linkedResource'] = linked_resource unless linked_resource.nil?
          command.query['sqlResource'] = sql_resource unless sql_resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entry group. An entry group contains logically related entries
        # together with [Cloud Identity and Access Management](/data-catalog/docs/
        # concepts/iam) policies. These policies specify users who can create, edit, and
        # view entries within entry groups. Data Catalog automatically creates entry
        # groups with names that start with the `@` symbol for the following resources: *
        # BigQuery entries (`@bigquery`) * Pub/Sub topics (`@pubsub`) * Dataproc
        # Metastore services (`@dataproc_metastore_`SERVICE_NAME_HASH``) You can create
        # your own entry groups for Cloud Storage fileset entries and custom entries
        # together with the corresponding IAM policies. User-created entry groups can't
        # contain the `@` symbol, it is reserved for automatically created groups. Entry
        # groups, like entries, can be searched. A maximum of 10,000 entry groups may be
        # created per organization across all locations. You must enable the Data
        # Catalog API in the project identified by the `parent` parameter. For more
        # information, see [Data Catalog resource project](https://cloud.google.com/data-
        # catalog/docs/concepts/resource-project).
        # @param [String] parent
        #   Required. The names of the project and location that the new entry group
        #   belongs to. Note: The entry group itself and its child resources might not be
        #   stored in the location specified in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup] google_cloud_datacatalog_v1_entry_group_object
        # @param [String] entry_group_id
        #   Required. The ID of the entry group to create. The ID must contain only
        #   letters (a-z, A-Z), numbers (0-9), underscores (_), and must start with a
        #   letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group(parent, google_cloud_datacatalog_v1_entry_group_object = nil, entry_group_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entryGroups', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup::Representation
          command.request_object = google_cloud_datacatalog_v1_entry_group_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['entryGroupId'] = entry_group_id unless entry_group_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an entry group. You must enable the Data Catalog API in the project
        # identified by the `name` parameter. For more information, see [Data Catalog
        # resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-
        # project).
        # @param [String] name
        #   Required. The name of the entry group to delete.
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
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an entry group.
        # @param [String] name
        #   Required. The name of the entry group to get.
        # @param [String] read_mask
        #   The fields to return. If empty or omitted, all fields are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. May return: * A`NOT_FOUND`
        # error if the resource doesn't exist or you don't have the permission to view
        # it. * An empty policy if the resource exists but doesn't have a set policy.
        # Supported resources are: - Tag templates - Entry groups Note: This method
        # doesn't get policies from Google Cloud Platform resources ingested into Data
        # Catalog. To call this method, you must have the following Google IAM
        # permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
        # templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry
        # groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entry_group_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists entry groups.
        # @param [String] parent
        #   Required. The name of the location that contains the entry groups to list. Can
        #   be provided as a URL.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. Default is 10. Maximum limit
        #   is 1000. Throws an invalid argument if `page_size` is greater than 1000.
        # @param [String] page_token
        #   Optional. Pagination token that specifies the next page to return. If empty,
        #   returns the first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntryGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntryGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entryGroups', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntryGroupsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntryGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an entry group. You must enable the Data Catalog API in the project
        # identified by the `entry_group.name` parameter. For more information, see [
        # Data Catalog resource project](https://cloud.google.com/data-catalog/docs/
        # concepts/resource-project).
        # @param [String] name
        #   The resource name of the entry group in URL format. Note: The entry group
        #   itself and its child resources might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup] google_cloud_datacatalog_v1_entry_group_object
        # @param [String] update_mask
        #   Names of fields whose values to overwrite on an entry group. If this parameter
        #   is absent or empty, all modifiable fields are overwritten. If such fields are
        #   non-required and omitted in the request body, their values are emptied.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group(name, google_cloud_datacatalog_v1_entry_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup::Representation
          command.request_object = google_cloud_datacatalog_v1_entry_group_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets an access control policy for a resource. Replaces any existing policy.
        # Supported resources are: - Tag templates - Entry groups Note: This method sets
        # policies only within Data Catalog and can't be used to manage policies in
        # BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform
        # resources synced with the Data Catalog. To call this method, you must have the
        # following Google IAM permissions: - `datacatalog.tagTemplates.setIamPolicy` to
        # set policies on tag templates. - `datacatalog.entryGroups.setIamPolicy` to set
        # policies on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_entry_group_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets your permissions on a resource. Returns an empty set of permissions if
        # the resource doesn't exist. Supported resources are: - Tag templates - Entry
        # groups Note: This method gets policies only within Data Catalog and can't be
        # used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any
        # external Google Cloud Platform resources ingested into Data Catalog. No Google
        # IAM permissions are required to call this method.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_entry_group_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entry. You can create entries only with 'FILESET', 'CLUSTER', '
        # DATA_STREAM', or custom types. Data Catalog automatically creates entries with
        # other types during metadata ingestion from integrated systems. You must enable
        # the Data Catalog API in the project identified by the `parent` parameter. For
        # more information, see [Data Catalog resource project](https://cloud.google.com/
        # data-catalog/docs/concepts/resource-project). An entry group can have a
        # maximum of 100,000 entries.
        # @param [String] parent
        #   Required. The name of the entry group this entry belongs to. Note: The entry
        #   itself and its child resources might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry] google_cloud_datacatalog_v1_entry_object
        # @param [String] entry_id
        #   Required. The ID of the entry to create. The ID must contain only letters (a-z,
        #   A-Z), numbers (0-9), and underscores (_). The maximum size is 64 bytes when
        #   encoded in UTF-8.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_entry(parent, google_cloud_datacatalog_v1_entry_object = nil, entry_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entries', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
          command.request_object = google_cloud_datacatalog_v1_entry_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry
          command.params['parent'] = parent unless parent.nil?
          command.query['entryId'] = entry_id unless entry_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing entry. You can delete only the entries created by the
        # CreateEntry method. You must enable the Data Catalog API in the project
        # identified by the `name` parameter. For more information, see [Data Catalog
        # resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-
        # project).
        # @param [String] name
        #   Required. The name of the entry to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an entry.
        # @param [String] name
        #   Required. The name of the entry to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_entry_group_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. May return: * A`NOT_FOUND`
        # error if the resource doesn't exist or you don't have the permission to view
        # it. * An empty policy if the resource exists but doesn't have a set policy.
        # Supported resources are: - Tag templates - Entry groups Note: This method
        # doesn't get policies from Google Cloud Platform resources ingested into Data
        # Catalog. To call this method, you must have the following Google IAM
        # permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
        # templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry
        # groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entry_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports entries from a source, such as data previously dumped into a Cloud
        # Storage bucket, into Data Catalog. Import of entries is a sync operation that
        # reconciles the state of the third-party system with the Data Catalog. `
        # ImportEntries` accepts source data snapshots of a third-party system. Snapshot
        # should be delivered as a .wire or base65-encoded .txt file containing a
        # sequence of Protocol Buffer messages of DumpItem type. `ImportEntries` returns
        # a long-running operation resource that can be queried with Operations.
        # GetOperation to return ImportEntriesMetadata and an ImportEntriesResponse
        # message.
        # @param [String] parent
        #   Required. Target entry group for ingested entries.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportEntriesRequest] google_cloud_datacatalog_v1_import_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_entry_group_entry(parent, google_cloud_datacatalog_v1_import_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entries:import', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportEntriesRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_import_entries_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Operation::Representation
          command.response_class = Google::Apis::DatacatalogV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists entries. Note: Currently, this method can list only custom entries. To
        # get a list of both custom and automatically created entries, use SearchCatalog.
        # @param [String] parent
        #   Required. The name of the entry group that contains the entries to list. Can
        #   be provided in URL format.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. Default is 10. Maximum limit is 1000.
        #   Throws an invalid argument if `page_size` is more than 1000.
        # @param [String] page_token
        #   Pagination token that specifies the next page to return. If empty, the first
        #   page is returned.
        # @param [String] read_mask
        #   The fields to return for each entry. If empty or omitted, all fields are
        #   returned. For example, to return a list of entries with only the `name` field,
        #   set `read_mask` to only one path with the `name` value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_entries(parent, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entries', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntriesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies contacts, part of the business context of an Entry. To call this
        # method, you must have the `datacatalog.entries.updateContacts` IAM permission
        # on the corresponding project.
        # @param [String] name
        #   Required. The full resource name of the entry.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ModifyEntryContactsRequest] google_cloud_datacatalog_v1_modify_entry_contacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_project_location_entry_group_entry_entry_contacts(name, google_cloud_datacatalog_v1_modify_entry_contacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:modifyEntryContacts', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ModifyEntryContactsRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_modify_entry_contacts_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies entry overview, part of the business context of an Entry. To call
        # this method, you must have the `datacatalog.entries.updateOverview` IAM
        # permission on the corresponding project.
        # @param [String] name
        #   Required. The full resource name of the entry.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ModifyEntryOverviewRequest] google_cloud_datacatalog_v1_modify_entry_overview_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_project_location_entry_group_entry_entry_overview(name, google_cloud_datacatalog_v1_modify_entry_overview_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:modifyEntryOverview', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ModifyEntryOverviewRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_modify_entry_overview_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing entry. You must enable the Data Catalog API in the project
        # identified by the `entry.name` parameter. For more information, see [Data
        # Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/
        # resource-project).
        # @param [String] name
        #   Output only. The resource name of an entry in URL format. Note: The entry
        #   itself and its child resources might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry] google_cloud_datacatalog_v1_entry_object
        # @param [String] update_mask
        #   Names of fields whose values to overwrite on an entry. If this parameter is
        #   absent or empty, all modifiable fields are overwritten. If such fields are non-
        #   required and omitted in the request body, their values are emptied. You can
        #   modify only the fields listed below. For entries with type `DATA_STREAM`: * `
        #   schema` For entries with type `FILESET`: * `schema` * `display_name` * `
        #   description` * `gcs_fileset_spec` * `gcs_fileset_spec.file_patterns` For
        #   entries with `user_specified_type`: * `schema` * `display_name` * `description`
        #   * `user_specified_type` * `user_specified_system` * `linked_resource` * `
        #   source_system_timestamps`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_entry(name, google_cloud_datacatalog_v1_entry_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
          command.request_object = google_cloud_datacatalog_v1_entry_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an Entry as starred by the current user. Starring information is private
        # to each user.
        # @param [String] name
        #   Required. The name of the entry to mark as starred.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StarEntryRequest] google_cloud_datacatalog_v1_star_entry_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StarEntryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StarEntryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def star_project_location_entry_group_entry(name, google_cloud_datacatalog_v1_star_entry_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:star', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StarEntryRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_star_entry_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StarEntryResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StarEntryResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets your permissions on a resource. Returns an empty set of permissions if
        # the resource doesn't exist. Supported resources are: - Tag templates - Entry
        # groups Note: This method gets policies only within Data Catalog and can't be
        # used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any
        # external Google Cloud Platform resources ingested into Data Catalog. No Google
        # IAM permissions are required to call this method.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_entry_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an Entry as NOT starred by the current user. Starring information is
        # private to each user.
        # @param [String] name
        #   Required. The name of the entry to mark as **not** starred.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UnstarEntryRequest] google_cloud_datacatalog_v1_unstar_entry_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UnstarEntryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UnstarEntryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unstar_project_location_entry_group_entry(name, google_cloud_datacatalog_v1_unstar_entry_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:unstar', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UnstarEntryRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_unstar_entry_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UnstarEntryResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UnstarEntryResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag and assigns it to: * An Entry if the method name is `projects.
        # locations.entryGroups.entries.tags.create`. * Or EntryGroupif the method name
        # is `projects.locations.entryGroups.tags.create`. Note: The project identified
        # by the `parent` parameter for the [tag] (https://cloud.google.com/data-catalog/
        # docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-
        # parameters) and the [tag template] (https://cloud.google.com/data-catalog/docs/
        # reference/rest/v1/projects.locations.tagTemplates/create#path-parameters) used
        # to create the tag must be in the same organization.
        # @param [String] parent
        #   Required. The name of the resource to attach this tag to. Tags can be attached
        #   to entries or entry groups. An entry can have up to 1000 attached tags. Note:
        #   The tag and its child resources might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] google_cloud_datacatalog_v1_tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_entry_tag(parent, google_cloud_datacatalog_v1_tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tags', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag.
        # @param [String] name
        #   Required. The name of the tag to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_entry_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists tags assigned to an Entry. The columns in the response are lowercased.
        # @param [String] parent
        #   Required. The name of the Data Catalog resource to list the tags of. The
        #   resource can be an Entry or an EntryGroup (without `/entries/`entries`` at the
        #   end).
        # @param [Fixnum] page_size
        #   The maximum number of tags to return. Default is 10. Maximum limit is 1000.
        # @param [String] page_token
        #   Pagination token that specifies the next page to return. If empty, the first
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
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_entry_tags(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tags', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing tag.
        # @param [String] name
        #   The resource name of the tag in URL format where tag ID is a system-generated
        #   identifier. Note: The tag itself might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] google_cloud_datacatalog_v1_tag_object
        # @param [String] update_mask
        #   Names of fields whose values to overwrite on a tag. Currently, a tag has the
        #   only modifiable field with the name `fields`. In general, if this parameter is
        #   absent or empty, all modifiable fields are overwritten. If such fields are non-
        #   required and omitted in the request body, their values are emptied.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_entry_tag(name, google_cloud_datacatalog_v1_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # `ReconcileTags` creates or updates a list of tags on the entry. If the
        # ReconcileTagsRequest.force_delete_missing parameter is set, the operation
        # deletes tags not included in the input tag list. `ReconcileTags` returns a
        # long-running operation resource that can be queried with Operations.
        # GetOperation to return ReconcileTagsMetadata and a ReconcileTagsResponse
        # message.
        # @param [String] parent
        #   Required. Name of Entry to be tagged.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ReconcileTagsRequest] google_cloud_datacatalog_v1_reconcile_tags_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reconcile_project_location_entry_group_entry_tag(parent, google_cloud_datacatalog_v1_reconcile_tags_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tags:reconcile', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ReconcileTagsRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_reconcile_tags_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Operation::Representation
          command.response_class = Google::Apis::DatacatalogV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag and assigns it to: * An Entry if the method name is `projects.
        # locations.entryGroups.entries.tags.create`. * Or EntryGroupif the method name
        # is `projects.locations.entryGroups.tags.create`. Note: The project identified
        # by the `parent` parameter for the [tag] (https://cloud.google.com/data-catalog/
        # docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-
        # parameters) and the [tag template] (https://cloud.google.com/data-catalog/docs/
        # reference/rest/v1/projects.locations.tagTemplates/create#path-parameters) used
        # to create the tag must be in the same organization.
        # @param [String] parent
        #   Required. The name of the resource to attach this tag to. Tags can be attached
        #   to entries or entry groups. An entry can have up to 1000 attached tags. Note:
        #   The tag and its child resources might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] google_cloud_datacatalog_v1_tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_entry_group_tag(parent, google_cloud_datacatalog_v1_tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tags', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag.
        # @param [String] name
        #   Required. The name of the tag to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_entry_group_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists tags assigned to an Entry. The columns in the response are lowercased.
        # @param [String] parent
        #   Required. The name of the Data Catalog resource to list the tags of. The
        #   resource can be an Entry or an EntryGroup (without `/entries/`entries`` at the
        #   end).
        # @param [Fixnum] page_size
        #   The maximum number of tags to return. Default is 10. Maximum limit is 1000.
        # @param [String] page_token
        #   Pagination token that specifies the next page to return. If empty, the first
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
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_entry_group_tags(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/tags', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing tag.
        # @param [String] name
        #   The resource name of the tag in URL format where tag ID is a system-generated
        #   identifier. Note: The tag itself might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] google_cloud_datacatalog_v1_tag_object
        # @param [String] update_mask
        #   Names of fields whose values to overwrite on a tag. Currently, a tag has the
        #   only modifiable field with the name `fields`. In general, if this parameter is
        #   absent or empty, all modifiable fields are overwritten. If such fields are non-
        #   required and omitted in the request body, their values are emptied.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_entry_group_tag(name, google_cloud_datacatalog_v1_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
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
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
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
        # @yieldparam result [Google::Apis::DatacatalogV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Operation::Representation
          command.response_class = Google::Apis::DatacatalogV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
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
        # @yieldparam result [Google::Apis::DatacatalogV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::DatacatalogV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a tag template. You must enable the Data Catalog API in the project
        # identified by the `parent` parameter. For more information, see [Data Catalog
        # resource project] (https://cloud.google.com/data-catalog/docs/concepts/
        # resource-project).
        # @param [String] parent
        #   Required. The name of the project and the template location [region](https://
        #   cloud.google.com/data-catalog/docs/concepts/regions).
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate] google_cloud_datacatalog_v1_tag_template_object
        # @param [String] tag_template_id
        #   Required. The ID of the tag template to create. The ID must contain only
        #   lowercase letters (a-z), numbers (0-9), or underscores (_), and must start
        #   with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-
        #   8.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tag_template(parent, google_cloud_datacatalog_v1_tag_template_object = nil, tag_template_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/tagTemplates', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_template_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['tagTemplateId'] = tag_template_id unless tag_template_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a tag template and all tags that use it. You must enable the Data
        # Catalog API in the project identified by the `name` parameter. For more
        # information, see [Data Catalog resource project](https://cloud.google.com/data-
        # catalog/docs/concepts/resource-project).
        # @param [String] name
        #   Required. The name of the tag template to delete.
        # @param [Boolean] force
        #   Required. If true, deletes all tags that use this template. Currently, `true`
        #   is the only supported value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tag_template(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a tag template.
        # @param [String] name
        #   Required. The name of the tag template to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_tag_template(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. May return: * A`NOT_FOUND`
        # error if the resource doesn't exist or you don't have the permission to view
        # it. * An empty policy if the resource exists but doesn't have a set policy.
        # Supported resources are: - Tag templates - Entry groups Note: This method
        # doesn't get policies from Google Cloud Platform resources ingested into Data
        # Catalog. To call this method, you must have the following Google IAM
        # permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
        # templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry
        # groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tag_template_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a tag template. You can't update template fields with this method.
        # These fields are separate resources with their own create, update, and delete
        # methods. You must enable the Data Catalog API in the project identified by the
        # `tag_template.name` parameter. For more information, see [Data Catalog
        # resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-
        # project).
        # @param [String] name
        #   The resource name of the tag template in URL format. Note: The tag template
        #   itself and its child resources might not be stored in the location specified
        #   in its name.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate] google_cloud_datacatalog_v1_tag_template_object
        # @param [String] update_mask
        #   Names of fields whose values to overwrite on a tag template. Currently, only `
        #   display_name` and `is_publicly_readable` can be overwritten. If this parameter
        #   is absent or empty, all modifiable fields are overwritten. If such fields are
        #   non-required and omitted in the request body, their values are emptied. Note:
        #   Updating the `is_publicly_readable` field may require up to 12 hours to take
        #   effect in search results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tag_template(name, google_cloud_datacatalog_v1_tag_template_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_template_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplate
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets an access control policy for a resource. Replaces any existing policy.
        # Supported resources are: - Tag templates - Entry groups Note: This method sets
        # policies only within Data Catalog and can't be used to manage policies in
        # BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform
        # resources synced with the Data Catalog. To call this method, you must have the
        # following Google IAM permissions: - `datacatalog.tagTemplates.setIamPolicy` to
        # set policies on tag templates. - `datacatalog.entryGroups.setIamPolicy` to set
        # policies on entry groups.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_tag_template_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets your permissions on a resource. Returns an empty set of permissions if
        # the resource doesn't exist. Supported resources are: - Tag templates - Entry
        # groups Note: This method gets policies only within Data Catalog and can't be
        # used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any
        # external Google Cloud Platform resources ingested into Data Catalog. No Google
        # IAM permissions are required to call this method.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_tag_template_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a field in a tag template. You must enable the Data Catalog API in the
        # project identified by the `parent` parameter. For more information, see [Data
        # Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/
        # resource-project).
        # @param [String] parent
        #   Required. The name of the project and the template location [region](https://
        #   cloud.google.com/data-catalog/docs/concepts/regions).
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField] google_cloud_datacatalog_v1_tag_template_field_object
        # @param [String] tag_template_field_id
        #   Required. The ID of the tag template field to create. Note: Adding a required
        #   field to an existing template is *not* allowed. Field IDs can contain letters (
        #   both uppercase and lowercase), numbers (0-9), underscores (_) and dashes (-).
        #   Field IDs must be at least 1 character long and at most 128 characters long.
        #   Field IDs must also be unique within their template.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_tag_template_field(parent, google_cloud_datacatalog_v1_tag_template_field_object = nil, tag_template_field_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/fields', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_template_field_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField
          command.params['parent'] = parent unless parent.nil?
          command.query['tagTemplateFieldId'] = tag_template_field_id unless tag_template_field_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a field in a tag template and all uses of this field from the tags
        # based on this template. You must enable the Data Catalog API in the project
        # identified by the `name` parameter. For more information, see [Data Catalog
        # resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-
        # project).
        # @param [String] name
        #   Required. The name of the tag template field to delete.
        # @param [Boolean] force
        #   Required. If true, deletes this field from any tags that use it. Currently, `
        #   true` is the only supported value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_tag_template_field(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a field in a tag template. You can't update the field type with this
        # method. You must enable the Data Catalog API in the project identified by the `
        # name` parameter. For more information, see [Data Catalog resource project](
        # https://cloud.google.com/data-catalog/docs/concepts/resource-project).
        # @param [String] name
        #   Required. The name of the tag template field.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField] google_cloud_datacatalog_v1_tag_template_field_object
        # @param [String] update_mask
        #   Optional. Names of fields whose values to overwrite on an individual field of
        #   a tag template. The following fields are modifiable: * `display_name` * `type.
        #   enum_type` * `is_required` If this parameter is absent or empty, all
        #   modifiable fields are overwritten. If such fields are non-required and omitted
        #   in the request body, their values are emptied with one exception: when
        #   updating an enum type, the provided values are merged with the existing values.
        #   Therefore, enum values can only be added, existing enum values cannot be
        #   deleted or renamed. Additionally, updating a template field from optional to
        #   required is *not* allowed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_tag_template_field(name, google_cloud_datacatalog_v1_tag_template_field_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
          command.request_object = google_cloud_datacatalog_v1_tag_template_field_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renames a field in a tag template. You must enable the Data Catalog API in the
        # project identified by the `name` parameter. For more information, see [Data
        # Catalog resource project] (https://cloud.google.com/data-catalog/docs/concepts/
        # resource-project).
        # @param [String] name
        #   Required. The name of the tag template field.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest] google_cloud_datacatalog_v1_rename_tag_template_field_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_project_location_tag_template_field(name, google_cloud_datacatalog_v1_rename_tag_template_field_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rename', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_rename_tag_template_field_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renames an enum value in a tag template. Within a single enum field, enum
        # values must be unique.
        # @param [String] name
        #   Required. The name of the enum field value.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest] google_cloud_datacatalog_v1_rename_tag_template_field_enum_value_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_project_location_tag_template_field_enum_value(name, google_cloud_datacatalog_v1_rename_tag_template_field_enum_value_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rename', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_rename_tag_template_field_enum_value_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a taxonomy in a specified project. The taxonomy is initially empty,
        # that is, it doesn't contain policy tags.
        # @param [String] parent
        #   Required. Resource name of the project that the taxonomy will belong to.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy] google_cloud_datacatalog_v1_taxonomy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_taxonomy(parent, google_cloud_datacatalog_v1_taxonomy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/taxonomies', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
          command.request_object = google_cloud_datacatalog_v1_taxonomy_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a taxonomy, including all policy tags in this taxonomy, their
        # associated policies, and the policy tags references from BigQuery columns.
        # @param [String] name
        #   Required. Resource name of the taxonomy to delete. Note: All policy tags in
        #   this taxonomy are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_taxonomy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports taxonomies in the requested type and returns them, including their
        # policy tags. The requested taxonomies must belong to the same project. This
        # method generates `SerializedTaxonomy` protocol buffers with nested policy tags
        # that can be used as input for `ImportTaxonomies` calls.
        # @param [String] parent
        #   Required. Resource name of the project that the exported taxonomies belong to.
        # @param [Boolean] serialized_taxonomies
        #   Serialized export taxonomies that contain all the policy tags as nested
        #   protocol buffers.
        # @param [Array<String>, String] taxonomies
        #   Required. Resource names of the taxonomies to export.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ExportTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ExportTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_taxonomy(parent, serialized_taxonomies: nil, taxonomies: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/taxonomies:export', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ExportTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ExportTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['serializedTaxonomies'] = serialized_taxonomies unless serialized_taxonomies.nil?
          command.query['taxonomies'] = taxonomies unless taxonomies.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a taxonomy.
        # @param [String] name
        #   Required. Resource name of the taxonomy to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_taxonomy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for a policy tag or a taxonomy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_taxonomy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new taxonomies (including their policy tags) in a given project by
        # importing from inlined or cross-regional sources. For a cross-regional source,
        # new taxonomies are created by copying from a source in another region. For an
        # inlined source, taxonomies and policy tags are created in bulk using nested
        # protocol buffer structures.
        # @param [String] parent
        #   Required. Resource name of project that the imported taxonomies will belong to.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportTaxonomiesRequest] google_cloud_datacatalog_v1_import_taxonomies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_taxonomy(parent, google_cloud_datacatalog_v1_import_taxonomies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/taxonomies:import', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportTaxonomiesRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_import_taxonomies_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ImportTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all taxonomies in a project in a particular location that you have a
        # permission to view.
        # @param [String] parent
        #   Required. Resource name of the project to list the taxonomies of.
        # @param [String] filter
        #   Supported field for filter is 'service' and value is 'dataplex'. Eg: service=
        #   dataplex.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. Must be a value between 1 and 1000
        #   inclusively. If not set, defaults to 50.
        # @param [String] page_token
        #   The pagination token of the next results page. If not set, the first page is
        #   returned. The token is returned in the response to a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTaxonomiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTaxonomiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_taxonomies(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/taxonomies', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTaxonomiesResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListTaxonomiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a taxonomy, including its display name, description, and activated
        # policy types.
        # @param [String] name
        #   Output only. Resource name of this taxonomy in URL format. Note: Policy tag
        #   manager generates unique taxonomy IDs.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy] google_cloud_datacatalog_v1_taxonomy_object
        # @param [String] update_mask
        #   Specifies fields to update. If not set, defaults to all fields you can update.
        #   For more information, see [FieldMask] (https://developers.google.com/protocol-
        #   buffers/docs/reference/google.protobuf#fieldmask).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_taxonomy(name, google_cloud_datacatalog_v1_taxonomy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
          command.request_object = google_cloud_datacatalog_v1_taxonomy_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces (updates) a taxonomy and all its policy tags. The taxonomy and its
        # entire hierarchy of policy tags must be represented literally by `
        # SerializedTaxonomy` and the nested `SerializedPolicyTag` messages. This
        # operation automatically does the following: - Deletes the existing policy tags
        # that are missing from the `SerializedPolicyTag`. - Creates policy tags that
        # don't have resource names. They are considered new. - Updates policy tags with
        # valid resources names accordingly.
        # @param [String] name
        #   Required. Resource name of the taxonomy to update.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ReplaceTaxonomyRequest] google_cloud_datacatalog_v1_replace_taxonomy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_project_location_taxonomy(name, google_cloud_datacatalog_v1_replace_taxonomy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:replace', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ReplaceTaxonomyRequest::Representation
          command.request_object = google_cloud_datacatalog_v1_replace_taxonomy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy for a policy tag or a taxonomy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_taxonomy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns your permissions on a specified policy tag or taxonomy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_taxonomy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a policy tag in a taxonomy.
        # @param [String] parent
        #   Required. Resource name of the taxonomy that the policy tag will belong to.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag] google_cloud_datacatalog_v1_policy_tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_taxonomy_policy_tag(parent, google_cloud_datacatalog_v1_policy_tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/policyTags', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag::Representation
          command.request_object = google_cloud_datacatalog_v1_policy_tag_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy tag together with the following: * All of its descendant
        # policy tags, if any * Policies associated with the policy tag and its
        # descendants * References from BigQuery table schema of the policy tag and its
        # descendants
        # @param [String] name
        #   Required. Resource name of the policy tag to delete. Note: All of its
        #   descendant policy tags are also deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_taxonomy_policy_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::Empty::Representation
          command.response_class = Google::Apis::DatacatalogV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy tag.
        # @param [String] name
        #   Required. Resource name of the policy tag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_taxonomy_policy_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy for a policy tag or a taxonomy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_policy_tag_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all policy tags in a taxonomy.
        # @param [String] parent
        #   Required. Resource name of the taxonomy to list the policy tags of.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. Must be a value between 1 and 1000
        #   inclusively. If not set, defaults to 50.
        # @param [String] page_token
        #   The pagination token of the next results page. If not set, returns the first
        #   page. The token is returned in the response to a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListPolicyTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListPolicyTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_taxonomy_policy_tags(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/policyTags', options)
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListPolicyTagsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ListPolicyTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a policy tag, including its display name, description, and parent
        # policy tag.
        # @param [String] name
        #   Output only. Resource name of this policy tag in the URL format. The policy
        #   tag manager generates unique taxonomy IDs and policy tag IDs.
        # @param [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag] google_cloud_datacatalog_v1_policy_tag_object
        # @param [String] update_mask
        #   Specifies the fields to update. You can update only display name, description,
        #   and parent policy tag. If not set, defaults to all updatable fields. For more
        #   information, see [FieldMask] (https://developers.google.com/protocol-buffers/
        #   docs/reference/google.protobuf#fieldmask).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_taxonomy_policy_tag(name, google_cloud_datacatalog_v1_policy_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag::Representation
          command.request_object = google_cloud_datacatalog_v1_policy_tag_object
          command.response_representation = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag::Representation
          command.response_class = Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy for a policy tag or a taxonomy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_policy_tag_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DatacatalogV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DatacatalogV1::Policy::Representation
          command.response_class = Google::Apis::DatacatalogV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns your permissions on a specified policy tag or taxonomy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DatacatalogV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatacatalogV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatacatalogV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_policy_tag_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DatacatalogV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DatacatalogV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DatacatalogV1::TestIamPermissionsResponse
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
