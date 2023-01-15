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
    module SecuritycenterV1
      # Security Command Center API
      #
      # Security Command Center API provides access to temporal views of assets and
      #  findings within an organization.
      #
      # @example
      #    require 'google/apis/securitycenter_v1'
      #
      #    Securitycenter = Google::Apis::SecuritycenterV1 # Alias the module
      #    service = Securitycenter::SecurityCommandCenterService.new
      #
      # @see https://cloud.google.com/security-command-center
      class SecurityCommandCenterService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://securitycenter.googleapis.com/', '',
                client_name: 'google-apis-securitycenter_v1',
                client_version: Google::Apis::SecuritycenterV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Filters an organization's assets and groups them by their specified properties.
        # @param [String] parent
        #   Required. The name of the parent to group the assets by. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::GroupAssetsRequest] group_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GroupAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GroupAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def group_folder_asset(parent, group_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assets:group', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GroupAssetsRequest::Representation
          command.request_object = group_assets_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::GroupAssetsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GroupAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists an organization's assets.
        # @param [String] parent
        #   Required. The name of the parent resource that contains the assets. The value
        #   that you can specify on parent depends on the method in which you specify
        #   parent. You can specify one of the following values: "organizations/[
        #   organization_id]", "folders/[folder_id]", or "projects/[project_id]".
        # @param [String] compare_duration
        #   When compare_duration is set, the ListAssetsResult's "state_change" attribute
        #   is updated to indicate whether the asset was added, removed, or remained
        #   present during the compare_duration period of time that precedes the read_time.
        #   This is the time between (read_time - compare_duration) and read_time. The
        #   state_change value is derived based on the presence of the asset at the two
        #   points in time. Intermediate state changes between the two times don't affect
        #   the result. For example, the results aren't affected if the asset is removed
        #   and re-created again. Possible "state_change" values when compare_duration is
        #   specified: * "ADDED": indicates that the asset was not present at the start of
        #   compare_duration, but present at read_time. * "REMOVED": indicates that the
        #   asset was present at the start of compare_duration, but not present at
        #   read_time. * "ACTIVE": indicates that the asset was present at both the start
        #   and the end of the time period defined by compare_duration and read_time. If
        #   compare_duration is not specified, then the only possible state_change is "
        #   UNUSED", which will be the state_change set for all assets present at
        #   read_time.
        # @param [String] field_mask
        #   A field mask to specify the ListAssetsResult fields to be listed in the
        #   response. An empty field mask will list all fields.
        # @param [String] filter
        #   Expression that defines the filter to apply across assets. The expression is a
        #   list of zero or more restrictions combined via logical operators `AND` and `OR`
        #   . Parentheses are supported, and `OR` has higher precedence than `AND`.
        #   Restrictions have the form ` ` and may have a `-` character in front of them
        #   to indicate negation. The fields map to those defined in the Asset resource.
        #   Examples include: * name * security_center_properties.resource_name *
        #   resource_properties.a_property * security_marks.marks.marka The supported
        #   operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer
        #   values. * `:`, meaning substring matching, for strings. The supported value
        #   types are: * string literals in quotes. * integer literals without quotes. *
        #   boolean literals `true` and `false` without quotes. The following are the
        #   allowed field and operator combinations: * name: `=` * update_time: `=`, `>`, `
        #   <`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        #   string. Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
        #   1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be
        #   milliseconds since epoch or an RFC3339 string. Examples: `create_time = "2019-
        #   06-10T16:07:18-07:00"` `create_time = 1560208038000` * iam_policy.policy_blob:
        #   `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` *
        #   security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`,
        #   `:` * security_center_properties.resource_display_name: `=`, `:` *
        #   security_center_properties.resource_type: `=`, `:` *
        #   security_center_properties.resource_parent: `=`, `:` *
        #   security_center_properties.resource_parent_display_name: `=`, `:` *
        #   security_center_properties.resource_project: `=`, `:` *
        #   security_center_properties.resource_project_display_name: `=`, `:` *
        #   security_center_properties.resource_owners: `=`, `:` For example, `
        #   resource_properties.size = 100` is a valid filter string. Use a partial match
        #   on the empty string to filter based on a property existing: `
        #   resource_properties.my_property : ""` Use a negated partial match on the empty
        #   string to filter based on a property not existing: `-resource_properties.
        #   my_property : ""`
        # @param [String] order_by
        #   Expression that defines what fields and order to use for sorting. The string
        #   value should follow SQL syntax: comma separated list of fields. For example: "
        #   name,resource_properties.a_property". The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be appended
        #   to the field name. For example: "name desc,resource_properties.a_property".
        #   Redundant space characters in the syntax are insignificant. "name desc,
        #   resource_properties.a_property" and " name desc , resource_properties.
        #   a_property " are equivalent. The following fields are supported: name
        #   update_time resource_properties security_marks.marks
        #   security_center_properties.resource_name security_center_properties.
        #   resource_display_name security_center_properties.resource_parent
        #   security_center_properties.resource_parent_display_name
        #   security_center_properties.resource_project security_center_properties.
        #   resource_project_display_name security_center_properties.resource_type
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListAssetsResponse`; indicates that this is a
        #   continuation of a prior `ListAssets` call, and that the system should return
        #   the next page of data.
        # @param [String] read_time
        #   Time used as a reference point when filtering assets. The filter is limited to
        #   assets existing at the supplied time and their values are those at that
        #   specific time. Absence of this field will default to the API's version of NOW.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_assets(parent, compare_duration: nil, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assets', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['compareDuration'] = compare_duration unless compare_duration.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates security marks.
        # @param [String] name
        #   The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        #   apis/design/resource_names#relative_resource_name Examples: "organizations/`
        #   organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # @param [Google::Apis::SecuritycenterV1::SecurityMarks] security_marks_object
        # @param [String] start_time
        #   The time at which the updated SecurityMarks take effect. If not set uses
        #   current server time. Updates will be applied to the SecurityMarks that are
        #   active immediately preceding this time. Must be earlier or equal to the server
        #   time.
        # @param [String] update_mask
        #   The FieldMask to use when updating the security marks resource. The field mask
        #   must not contain duplicate fields. If empty or set to "marks", all marks will
        #   be replaced. Individual marks can be updated using "marks.".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::SecurityMarks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_asset_security_marks(name, security_marks_object = nil, start_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.request_object = security_marks_object
          command.response_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.response_class = Google::Apis::SecuritycenterV1::SecurityMarks
          command.params['name'] = name unless name.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a BigQuery export.
        # @param [String] parent
        #   Required. The name of the parent resource of the new BigQuery export. Its
        #   format is "organizations/[organization_id]", "folders/[folder_id]", or "
        #   projects/[project_id]".
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] google_cloud_securitycenter_v1_big_query_export_object
        # @param [String] big_query_export_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must consist of lower case letters, numbers, and hyphen, with the first
        #   character a letter, the last a letter or a number, and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_big_query_export(parent, google_cloud_securitycenter_v1_big_query_export_object = nil, big_query_export_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/bigQueryExports', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.request_object = google_cloud_securitycenter_v1_big_query_export_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['parent'] = parent unless parent.nil?
          command.query['bigQueryExportId'] = big_query_export_id unless big_query_export_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing BigQuery export.
        # @param [String] name
        #   Required. The name of the BigQuery export to delete. Its format is
        #   organizations/`organization`/bigQueryExports/`export_id`, folders/`folder`/
        #   bigQueryExports/`export_id`, or projects/`project`/bigQueryExports/`export_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_big_query_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a BigQuery export.
        # @param [String] name
        #   Required. Name of the BigQuery export to retrieve. Its format is organizations/
        #   `organization`/bigQueryExports/`export_id`, folders/`folder`/bigQueryExports/`
        #   export_id`, or projects/`project`/bigQueryExports/`export_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_big_query_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BigQuery exports. Note that when requesting BigQuery exports at a given
        # level all exports under that level are also returned e.g. if requesting
        # BigQuery exports under a folder, then all BigQuery exports immediately under
        # the folder plus the ones created under the projects within the folder are
        # returned.
        # @param [String] parent
        #   Required. The parent, which owns the collection of BigQuery exports. Its
        #   format is "organizations/[organization_id]", "folders/[folder_id]", "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListBigQueryExports` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListBigQueryExports` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_big_query_exports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/bigQueryExports', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a BigQuery export.
        # @param [String] name
        #   The relative resource name of this export. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name. Example format: "organizations/`
        #   organization_id`/bigQueryExports/`export_id`" Example format: "folders/`
        #   folder_id`/bigQueryExports/`export_id`" Example format: "projects/`project_id`/
        #   bigQueryExports/`export_id`" This field is provided in responses, and is
        #   ignored when provided in create requests.
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] google_cloud_securitycenter_v1_big_query_export_object
        # @param [String] update_mask
        #   The list of fields to be updated. If empty all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_big_query_export(name, google_cloud_securitycenter_v1_big_query_export_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.request_object = google_cloud_securitycenter_v1_big_query_export_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off an LRO to bulk mute findings for a parent based on a filter. The
        # parent can be either an organization, folder or project. The findings matched
        # by the filter will be muted after the LRO is done.
        # @param [String] parent
        #   Required. The parent, at which bulk action needs to be applied. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", "projects/[project_id]
        #   ".
        # @param [Google::Apis::SecuritycenterV1::BulkMuteFindingsRequest] bulk_mute_findings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_folder_finding_mute(parent, bulk_mute_findings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings:bulkMute', options)
          command.request_representation = Google::Apis::SecuritycenterV1::BulkMuteFindingsRequest::Representation
          command.request_object = bulk_mute_findings_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Operation::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a mute config.
        # @param [String] parent
        #   Required. Resource name of the new mute configs's parent. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] google_cloud_securitycenter_v1_mute_config_object
        # @param [String] mute_config_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must consist of lower case letters, numbers, and hyphen, with the first
        #   character a letter, the last a letter or a number, and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_mute_config(parent, google_cloud_securitycenter_v1_mute_config_object = nil, mute_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/muteConfigs', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.request_object = google_cloud_securitycenter_v1_mute_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['muteConfigId'] = mute_config_id unless mute_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing mute config.
        # @param [String] name
        #   Required. Name of the mute config to delete. Its format is organizations/`
        #   organization`/muteConfigs/`config_id`, folders/`folder`/muteConfigs/`config_id`
        #   , or projects/`project`/muteConfigs/`config_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_mute_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a mute config.
        # @param [String] name
        #   Required. Name of the mute config to retrieve. Its format is organizations/`
        #   organization`/muteConfigs/`config_id`, folders/`folder`/muteConfigs/`config_id`
        #   , or projects/`project`/muteConfigs/`config_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_mute_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists mute configs.
        # @param [String] parent
        #   Required. The parent, which owns the collection of mute configs. Its format is
        #   "organizations/[organization_id]", "folders/[folder_id]", "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListMuteConfigs` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListMuteConfigs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListMuteConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListMuteConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_mute_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/muteConfigs', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListMuteConfigsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListMuteConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a mute config.
        # @param [String] name
        #   This field will be ignored if provided on config creation. Format "
        #   organizations/`organization`/muteConfigs/`mute_config`" "folders/`folder`/
        #   muteConfigs/`mute_config`" "projects/`project`/muteConfigs/`mute_config`"
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] google_cloud_securitycenter_v1_mute_config_object
        # @param [String] update_mask
        #   The list of fields to be updated. If empty all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_mute_config(name, google_cloud_securitycenter_v1_mute_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.request_object = google_cloud_securitycenter_v1_mute_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a notification config.
        # @param [String] parent
        #   Required. Resource name of the new notification config's parent. Its format is
        #   "organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::NotificationConfig] notification_config_object
        # @param [String] config_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must be between 1 and 128 characters and contain alphanumeric characters,
        #   underscores, or hyphens only.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_notification_config(parent, notification_config_object = nil, config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/notificationConfigs', options)
          command.request_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.request_object = notification_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a notification config.
        # @param [String] name
        #   Required. Name of the notification config to delete. Its format is "
        #   organizations/[organization_id]/notificationConfigs/[config_id]", "folders/[
        #   folder_id]/notificationConfigs/[config_id]", or "projects/[project_id]/
        #   notificationConfigs/[config_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a notification config.
        # @param [String] name
        #   Required. Name of the notification config to get. Its format is "organizations/
        #   [organization_id]/notificationConfigs/[config_id]", "folders/[folder_id]/
        #   notificationConfigs/[config_id]", or "projects/[project_id]/
        #   notificationConfigs/[config_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists notification configs.
        # @param [String] parent
        #   Required. The name of the parent in which to list the notification
        #   configurations. Its format is "organizations/[organization_id]", "folders/[
        #   folder_id]", or "projects/[project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListNotificationConfigsResponse`; indicates
        #   that this is a continuation of a prior `ListNotificationConfigs` call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_notification_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/notificationConfigs', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a notification config. The following update fields are allowed:
        # description, pubsub_topic, streaming_config.filter
        # @param [String] name
        #   The relative resource name of this notification config. See: https://cloud.
        #   google.com/apis/design/resource_names#relative_resource_name Example: "
        #   organizations/`organization_id`/notificationConfigs/notify_public_bucket", "
        #   folders/`folder_id`/notificationConfigs/notify_public_bucket", or "projects/`
        #   project_id`/notificationConfigs/notify_public_bucket".
        # @param [Google::Apis::SecuritycenterV1::NotificationConfig] notification_config_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the notification config. If empty all
        #   mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_notification_config(name, notification_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.request_object = notification_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sources belonging to an organization.
        # @param [String] parent
        #   Required. Resource name of the parent of sources to list. Its format should be
        #   "organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListSourcesResponse`; indicates that this is a
        #   continuation of a prior `ListSources` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sources', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListSourcesResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Filters an organization or source's findings and groups them by their
        # specified properties. To group across all sources provide a `-` as the source
        # id. Example: /v1/organizations/`organization_id`/sources/-/findings, /v1/
        # folders/`folder_id`/sources/-/findings, /v1/projects/`project_id`/sources/-/
        # findings
        # @param [String] parent
        #   Required. Name of the source to groupBy. Its format is "organizations/[
        #   organization_id]/sources/[source_id]", folders/[folder_id]/sources/[source_id],
        #   or projects/[project_id]/sources/[source_id]. To groupBy across all sources
        #   provide a source_id of `-`. For example: organizations/`organization_id`/
        #   sources/-, folders/`folder_id`/sources/-, or projects/`project_id`/sources/-
        # @param [Google::Apis::SecuritycenterV1::GroupFindingsRequest] group_findings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GroupFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GroupFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def group_folder_source_finding(parent, group_findings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings:group', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GroupFindingsRequest::Representation
          command.request_object = group_findings_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::GroupFindingsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GroupFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists an organization or source's findings. To list across all sources provide
        # a `-` as the source id. Example: /v1/organizations/`organization_id`/sources/-/
        # findings
        # @param [String] parent
        #   Required. Name of the source the findings belong to. Its format is "
        #   organizations/[organization_id]/sources/[source_id], folders/[folder_id]/
        #   sources/[source_id], or projects/[project_id]/sources/[source_id]". To list
        #   across all sources provide a source_id of `-`. For example: organizations/`
        #   organization_id`/sources/-, folders/`folder_id`/sources/- or projects/`
        #   projects_id`/sources/-
        # @param [String] compare_duration
        #   When compare_duration is set, the ListFindingsResult's "state_change"
        #   attribute is updated to indicate whether the finding had its state changed,
        #   the finding's state remained unchanged, or if the finding was added in any
        #   state during the compare_duration period of time that precedes the read_time.
        #   This is the time between (read_time - compare_duration) and read_time. The
        #   state_change value is derived based on the presence and state of the finding
        #   at the two points in time. Intermediate state changes between the two times
        #   don't affect the result. For example, the results aren't affected if the
        #   finding is made inactive and then active again. Possible "state_change" values
        #   when compare_duration is specified: * "CHANGED": indicates that the finding
        #   was present and matched the given filter at the start of compare_duration, but
        #   changed its state at read_time. * "UNCHANGED": indicates that the finding was
        #   present and matched the given filter at the start of compare_duration and did
        #   not change state at read_time. * "ADDED": indicates that the finding did not
        #   match the given filter or was not present at the start of compare_duration,
        #   but was present at read_time. * "REMOVED": indicates that the finding was
        #   present and matched the filter at the start of compare_duration, but did not
        #   match the filter at read_time. If compare_duration is not specified, then the
        #   only possible state_change is "UNUSED", which will be the state_change set for
        #   all findings present at read_time.
        # @param [String] field_mask
        #   A field mask to specify the Finding fields to be listed in the response. An
        #   empty field mask will list all fields.
        # @param [String] filter
        #   Expression that defines the filter to apply across findings. The expression is
        #   a list of one or more restrictions combined via logical operators `AND` and `
        #   OR`. Parentheses are supported, and `OR` has higher precedence than `AND`.
        #   Restrictions have the form ` ` and may have a `-` character in front of them
        #   to indicate negation. Examples include: * name * source_properties.a_property *
        #   security_marks.marks.marka The supported operators are: * `=` for all value
        #   types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring
        #   matching, for strings. The supported value types are: * string literals in
        #   quotes. * integer literals without quotes. * boolean literals `true` and `
        #   false` without quotes. The following field and operator combinations are
        #   supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=
        #   `, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<
        #   `, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        #   string. Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
        #   1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
        #   security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `
        #   <=` For example, `source_properties.size = 100` is a valid filter string. Use
        #   a partial match on the empty string to filter based on a property existing: `
        #   source_properties.my_property : ""` Use a negated partial match on the empty
        #   string to filter based on a property not existing: `-source_properties.
        #   my_property : ""` * resource: * resource.name: `=`, `:` * resource.parent_name:
        #   `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`
        #   , `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:` *
        #   resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`, `:`
        # @param [String] order_by
        #   Expression that defines what fields and order to use for sorting. The string
        #   value should follow SQL syntax: comma separated list of fields. For example: "
        #   name,resource_properties.a_property". The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be appended
        #   to the field name. For example: "name desc,source_properties.a_property".
        #   Redundant space characters in the syntax are insignificant. "name desc,
        #   source_properties.a_property" and " name desc , source_properties.a_property "
        #   are equivalent. The following fields are supported: name parent state category
        #   resource_name event_time source_properties security_marks.marks
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListFindingsResponse`; indicates that this is
        #   a continuation of a prior `ListFindings` call, and that the system should
        #   return the next page of data.
        # @param [String] read_time
        #   Time used as a reference point when filtering findings. The filter is limited
        #   to findings existing at the supplied time and their values are those at that
        #   specific time. Absence of this field will default to the API's version of NOW.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_source_findings(parent, compare_duration: nil, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/findings', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListFindingsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['compareDuration'] = compare_duration unless compare_duration.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a finding. The corresponding source must exist for a
        # finding creation to succeed.
        # @param [String] name
        #   The relative resource name of this finding. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name Example: "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`"
        # @param [Google::Apis::SecuritycenterV1::Finding] finding_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the finding resource. This field should not
        #   be specified when creating a finding. When updating a finding, an empty mask
        #   is treated as updating all mutable fields and replacing source_properties.
        #   Individual source_properties can be added/updated by using "source_properties."
        #   in the field mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_source_finding(name, finding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.request_object = finding_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the mute state of a finding.
        # @param [String] name
        #   Required. The [relative resource name](https://cloud.google.com/apis/design/
        #   resource_names#relative_resource_name) of the finding. Example: "organizations/
        #   `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        #   folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        #   sources/`source_id`/findings/`finding_id`".
        # @param [Google::Apis::SecuritycenterV1::SetMuteRequest] set_mute_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_folder_source_finding_mute(name, set_mute_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setMute', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetMuteRequest::Representation
          command.request_object = set_mute_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the state of a finding.
        # @param [String] name
        #   Required. The [relative resource name](https://cloud.google.com/apis/design/
        #   resource_names#relative_resource_name) of the finding. Example: "organizations/
        #   `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        #   folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        #   sources/`source_id`/findings/`finding_id`".
        # @param [Google::Apis::SecuritycenterV1::SetFindingStateRequest] set_finding_state_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_folder_source_finding_state(name, set_finding_state_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setState', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetFindingStateRequest::Representation
          command.request_object = set_finding_state_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates security marks.
        # @param [String] name
        #   The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        #   apis/design/resource_names#relative_resource_name Examples: "organizations/`
        #   organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # @param [Google::Apis::SecuritycenterV1::SecurityMarks] security_marks_object
        # @param [String] start_time
        #   The time at which the updated SecurityMarks take effect. If not set uses
        #   current server time. Updates will be applied to the SecurityMarks that are
        #   active immediately preceding this time. Must be earlier or equal to the server
        #   time.
        # @param [String] update_mask
        #   The FieldMask to use when updating the security marks resource. The field mask
        #   must not contain duplicate fields. If empty or set to "marks", all marks will
        #   be replaced. Individual marks can be updated using "marks.".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::SecurityMarks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_source_finding_security_marks(name, security_marks_object = nil, start_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.request_object = security_marks_object
          command.response_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.response_class = Google::Apis::SecuritycenterV1::SecurityMarks
          command.params['name'] = name unless name.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates external system. This is for a given finding.
        # @param [String] name
        #   Full resource name of the external system, for example: "organizations/1234/
        #   sources/5678/findings/123456/externalSystems/jira", "folders/1234/sources/5678/
        #   findings/123456/externalSystems/jira", "projects/1234/sources/5678/findings/
        #   123456/externalSystems/jira"
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem] google_cloud_securitycenter_v1_external_system_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the external system resource. If empty all
        #   mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_source_finding_external_system(name, google_cloud_securitycenter_v1_external_system_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
          command.request_object = google_cloud_securitycenter_v1_external_system_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the settings for an organization.
        # @param [String] name
        #   Required. Name of the organization to get organization settings for. Its
        #   format is "organizations/[organization_id]/organizationSettings".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::OrganizationSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::OrganizationSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_organization_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::OrganizationSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1::OrganizationSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an organization's settings.
        # @param [String] name
        #   The relative resource name of the settings. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name Example: "organizations/`
        #   organization_id`/organizationSettings".
        # @param [Google::Apis::SecuritycenterV1::OrganizationSettings] organization_settings_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the settings resource. If empty all mutable
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::OrganizationSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::OrganizationSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_organization_settings(name, organization_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::OrganizationSettings::Representation
          command.request_object = organization_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1::OrganizationSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1::OrganizationSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Filters an organization's assets and groups them by their specified properties.
        # @param [String] parent
        #   Required. The name of the parent to group the assets by. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::GroupAssetsRequest] group_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GroupAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GroupAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def group_assets(parent, group_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assets:group', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GroupAssetsRequest::Representation
          command.request_object = group_assets_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::GroupAssetsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GroupAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists an organization's assets.
        # @param [String] parent
        #   Required. The name of the parent resource that contains the assets. The value
        #   that you can specify on parent depends on the method in which you specify
        #   parent. You can specify one of the following values: "organizations/[
        #   organization_id]", "folders/[folder_id]", or "projects/[project_id]".
        # @param [String] compare_duration
        #   When compare_duration is set, the ListAssetsResult's "state_change" attribute
        #   is updated to indicate whether the asset was added, removed, or remained
        #   present during the compare_duration period of time that precedes the read_time.
        #   This is the time between (read_time - compare_duration) and read_time. The
        #   state_change value is derived based on the presence of the asset at the two
        #   points in time. Intermediate state changes between the two times don't affect
        #   the result. For example, the results aren't affected if the asset is removed
        #   and re-created again. Possible "state_change" values when compare_duration is
        #   specified: * "ADDED": indicates that the asset was not present at the start of
        #   compare_duration, but present at read_time. * "REMOVED": indicates that the
        #   asset was present at the start of compare_duration, but not present at
        #   read_time. * "ACTIVE": indicates that the asset was present at both the start
        #   and the end of the time period defined by compare_duration and read_time. If
        #   compare_duration is not specified, then the only possible state_change is "
        #   UNUSED", which will be the state_change set for all assets present at
        #   read_time.
        # @param [String] field_mask
        #   A field mask to specify the ListAssetsResult fields to be listed in the
        #   response. An empty field mask will list all fields.
        # @param [String] filter
        #   Expression that defines the filter to apply across assets. The expression is a
        #   list of zero or more restrictions combined via logical operators `AND` and `OR`
        #   . Parentheses are supported, and `OR` has higher precedence than `AND`.
        #   Restrictions have the form ` ` and may have a `-` character in front of them
        #   to indicate negation. The fields map to those defined in the Asset resource.
        #   Examples include: * name * security_center_properties.resource_name *
        #   resource_properties.a_property * security_marks.marks.marka The supported
        #   operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer
        #   values. * `:`, meaning substring matching, for strings. The supported value
        #   types are: * string literals in quotes. * integer literals without quotes. *
        #   boolean literals `true` and `false` without quotes. The following are the
        #   allowed field and operator combinations: * name: `=` * update_time: `=`, `>`, `
        #   <`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        #   string. Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
        #   1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be
        #   milliseconds since epoch or an RFC3339 string. Examples: `create_time = "2019-
        #   06-10T16:07:18-07:00"` `create_time = 1560208038000` * iam_policy.policy_blob:
        #   `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` *
        #   security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`,
        #   `:` * security_center_properties.resource_display_name: `=`, `:` *
        #   security_center_properties.resource_type: `=`, `:` *
        #   security_center_properties.resource_parent: `=`, `:` *
        #   security_center_properties.resource_parent_display_name: `=`, `:` *
        #   security_center_properties.resource_project: `=`, `:` *
        #   security_center_properties.resource_project_display_name: `=`, `:` *
        #   security_center_properties.resource_owners: `=`, `:` For example, `
        #   resource_properties.size = 100` is a valid filter string. Use a partial match
        #   on the empty string to filter based on a property existing: `
        #   resource_properties.my_property : ""` Use a negated partial match on the empty
        #   string to filter based on a property not existing: `-resource_properties.
        #   my_property : ""`
        # @param [String] order_by
        #   Expression that defines what fields and order to use for sorting. The string
        #   value should follow SQL syntax: comma separated list of fields. For example: "
        #   name,resource_properties.a_property". The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be appended
        #   to the field name. For example: "name desc,resource_properties.a_property".
        #   Redundant space characters in the syntax are insignificant. "name desc,
        #   resource_properties.a_property" and " name desc , resource_properties.
        #   a_property " are equivalent. The following fields are supported: name
        #   update_time resource_properties security_marks.marks
        #   security_center_properties.resource_name security_center_properties.
        #   resource_display_name security_center_properties.resource_parent
        #   security_center_properties.resource_parent_display_name
        #   security_center_properties.resource_project security_center_properties.
        #   resource_project_display_name security_center_properties.resource_type
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListAssetsResponse`; indicates that this is a
        #   continuation of a prior `ListAssets` call, and that the system should return
        #   the next page of data.
        # @param [String] read_time
        #   Time used as a reference point when filtering assets. The filter is limited to
        #   assets existing at the supplied time and their values are those at that
        #   specific time. Absence of this field will default to the API's version of NOW.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_assets(parent, compare_duration: nil, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assets', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['compareDuration'] = compare_duration unless compare_duration.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs asset discovery. The discovery is tracked with a long-running operation.
        # This API can only be called with limited frequency for an organization. If it
        # is called too frequently the caller will receive a TOO_MANY_REQUESTS error.
        # @param [String] parent
        #   Required. Name of the organization to run asset discovery for. Its format is "
        #   organizations/[organization_id]".
        # @param [Google::Apis::SecuritycenterV1::RunAssetDiscoveryRequest] run_asset_discovery_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_organization_asset_discovery(parent, run_asset_discovery_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assets:runDiscovery', options)
          command.request_representation = Google::Apis::SecuritycenterV1::RunAssetDiscoveryRequest::Representation
          command.request_object = run_asset_discovery_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Operation::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates security marks.
        # @param [String] name
        #   The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        #   apis/design/resource_names#relative_resource_name Examples: "organizations/`
        #   organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # @param [Google::Apis::SecuritycenterV1::SecurityMarks] security_marks_object
        # @param [String] start_time
        #   The time at which the updated SecurityMarks take effect. If not set uses
        #   current server time. Updates will be applied to the SecurityMarks that are
        #   active immediately preceding this time. Must be earlier or equal to the server
        #   time.
        # @param [String] update_mask
        #   The FieldMask to use when updating the security marks resource. The field mask
        #   must not contain duplicate fields. If empty or set to "marks", all marks will
        #   be replaced. Individual marks can be updated using "marks.".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::SecurityMarks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_asset_security_marks(name, security_marks_object = nil, start_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.request_object = security_marks_object
          command.response_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.response_class = Google::Apis::SecuritycenterV1::SecurityMarks
          command.params['name'] = name unless name.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a BigQuery export.
        # @param [String] parent
        #   Required. The name of the parent resource of the new BigQuery export. Its
        #   format is "organizations/[organization_id]", "folders/[folder_id]", or "
        #   projects/[project_id]".
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] google_cloud_securitycenter_v1_big_query_export_object
        # @param [String] big_query_export_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must consist of lower case letters, numbers, and hyphen, with the first
        #   character a letter, the last a letter or a number, and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_big_query_export(parent, google_cloud_securitycenter_v1_big_query_export_object = nil, big_query_export_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/bigQueryExports', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.request_object = google_cloud_securitycenter_v1_big_query_export_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['parent'] = parent unless parent.nil?
          command.query['bigQueryExportId'] = big_query_export_id unless big_query_export_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing BigQuery export.
        # @param [String] name
        #   Required. The name of the BigQuery export to delete. Its format is
        #   organizations/`organization`/bigQueryExports/`export_id`, folders/`folder`/
        #   bigQueryExports/`export_id`, or projects/`project`/bigQueryExports/`export_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_big_query_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a BigQuery export.
        # @param [String] name
        #   Required. Name of the BigQuery export to retrieve. Its format is organizations/
        #   `organization`/bigQueryExports/`export_id`, folders/`folder`/bigQueryExports/`
        #   export_id`, or projects/`project`/bigQueryExports/`export_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_big_query_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BigQuery exports. Note that when requesting BigQuery exports at a given
        # level all exports under that level are also returned e.g. if requesting
        # BigQuery exports under a folder, then all BigQuery exports immediately under
        # the folder plus the ones created under the projects within the folder are
        # returned.
        # @param [String] parent
        #   Required. The parent, which owns the collection of BigQuery exports. Its
        #   format is "organizations/[organization_id]", "folders/[folder_id]", "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListBigQueryExports` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListBigQueryExports` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_big_query_exports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/bigQueryExports', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a BigQuery export.
        # @param [String] name
        #   The relative resource name of this export. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name. Example format: "organizations/`
        #   organization_id`/bigQueryExports/`export_id`" Example format: "folders/`
        #   folder_id`/bigQueryExports/`export_id`" Example format: "projects/`project_id`/
        #   bigQueryExports/`export_id`" This field is provided in responses, and is
        #   ignored when provided in create requests.
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] google_cloud_securitycenter_v1_big_query_export_object
        # @param [String] update_mask
        #   The list of fields to be updated. If empty all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_big_query_export(name, google_cloud_securitycenter_v1_big_query_export_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.request_object = google_cloud_securitycenter_v1_big_query_export_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off an LRO to bulk mute findings for a parent based on a filter. The
        # parent can be either an organization, folder or project. The findings matched
        # by the filter will be muted after the LRO is done.
        # @param [String] parent
        #   Required. The parent, at which bulk action needs to be applied. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", "projects/[project_id]
        #   ".
        # @param [Google::Apis::SecuritycenterV1::BulkMuteFindingsRequest] bulk_mute_findings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_organization_finding_mute(parent, bulk_mute_findings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings:bulkMute', options)
          command.request_representation = Google::Apis::SecuritycenterV1::BulkMuteFindingsRequest::Representation
          command.request_object = bulk_mute_findings_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Operation::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a mute config.
        # @param [String] parent
        #   Required. Resource name of the new mute configs's parent. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] google_cloud_securitycenter_v1_mute_config_object
        # @param [String] mute_config_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must consist of lower case letters, numbers, and hyphen, with the first
        #   character a letter, the last a letter or a number, and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_mute_config(parent, google_cloud_securitycenter_v1_mute_config_object = nil, mute_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/muteConfigs', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.request_object = google_cloud_securitycenter_v1_mute_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['muteConfigId'] = mute_config_id unless mute_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing mute config.
        # @param [String] name
        #   Required. Name of the mute config to delete. Its format is organizations/`
        #   organization`/muteConfigs/`config_id`, folders/`folder`/muteConfigs/`config_id`
        #   , or projects/`project`/muteConfigs/`config_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_mute_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a mute config.
        # @param [String] name
        #   Required. Name of the mute config to retrieve. Its format is organizations/`
        #   organization`/muteConfigs/`config_id`, folders/`folder`/muteConfigs/`config_id`
        #   , or projects/`project`/muteConfigs/`config_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_mute_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists mute configs.
        # @param [String] parent
        #   Required. The parent, which owns the collection of mute configs. Its format is
        #   "organizations/[organization_id]", "folders/[folder_id]", "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListMuteConfigs` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListMuteConfigs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListMuteConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListMuteConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_mute_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/muteConfigs', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListMuteConfigsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListMuteConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a mute config.
        # @param [String] name
        #   This field will be ignored if provided on config creation. Format "
        #   organizations/`organization`/muteConfigs/`mute_config`" "folders/`folder`/
        #   muteConfigs/`mute_config`" "projects/`project`/muteConfigs/`mute_config`"
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] google_cloud_securitycenter_v1_mute_config_object
        # @param [String] update_mask
        #   The list of fields to be updated. If empty all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_mute_config(name, google_cloud_securitycenter_v1_mute_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.request_object = google_cloud_securitycenter_v1_mute_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a notification config.
        # @param [String] parent
        #   Required. Resource name of the new notification config's parent. Its format is
        #   "organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::NotificationConfig] notification_config_object
        # @param [String] config_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must be between 1 and 128 characters and contain alphanumeric characters,
        #   underscores, or hyphens only.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_notification_config(parent, notification_config_object = nil, config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/notificationConfigs', options)
          command.request_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.request_object = notification_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a notification config.
        # @param [String] name
        #   Required. Name of the notification config to delete. Its format is "
        #   organizations/[organization_id]/notificationConfigs/[config_id]", "folders/[
        #   folder_id]/notificationConfigs/[config_id]", or "projects/[project_id]/
        #   notificationConfigs/[config_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a notification config.
        # @param [String] name
        #   Required. Name of the notification config to get. Its format is "organizations/
        #   [organization_id]/notificationConfigs/[config_id]", "folders/[folder_id]/
        #   notificationConfigs/[config_id]", or "projects/[project_id]/
        #   notificationConfigs/[config_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists notification configs.
        # @param [String] parent
        #   Required. The name of the parent in which to list the notification
        #   configurations. Its format is "organizations/[organization_id]", "folders/[
        #   folder_id]", or "projects/[project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListNotificationConfigsResponse`; indicates
        #   that this is a continuation of a prior `ListNotificationConfigs` call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_notification_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/notificationConfigs', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a notification config. The following update fields are allowed:
        # description, pubsub_topic, streaming_config.filter
        # @param [String] name
        #   The relative resource name of this notification config. See: https://cloud.
        #   google.com/apis/design/resource_names#relative_resource_name Example: "
        #   organizations/`organization_id`/notificationConfigs/notify_public_bucket", "
        #   folders/`folder_id`/notificationConfigs/notify_public_bucket", or "projects/`
        #   project_id`/notificationConfigs/notify_public_bucket".
        # @param [Google::Apis::SecuritycenterV1::NotificationConfig] notification_config_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the notification config. If empty all
        #   mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_notification_config(name, notification_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.request_object = notification_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
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
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_organization_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
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
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
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
        # @yieldparam result [Google::Apis::SecuritycenterV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Operation::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Operation
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
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a source.
        # @param [String] parent
        #   Required. Resource name of the new source's parent. Its format should be "
        #   organizations/[organization_id]".
        # @param [Google::Apis::SecuritycenterV1::Source] source_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Source] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Source]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_source(parent, source_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/sources', options)
          command.request_representation = Google::Apis::SecuritycenterV1::Source::Representation
          command.request_object = source_object
          command.response_representation = Google::Apis::SecuritycenterV1::Source::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Source
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a source.
        # @param [String] name
        #   Required. Relative resource name of the source. Its format is "organizations/[
        #   organization_id]/source/[source_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Source] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Source]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Source::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Source
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy on the specified Source.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::SecuritycenterV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_source_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Policy::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sources belonging to an organization.
        # @param [String] parent
        #   Required. Resource name of the parent of sources to list. Its format should be
        #   "organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListSourcesResponse`; indicates that this is a
        #   continuation of a prior `ListSources` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sources', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListSourcesResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a source.
        # @param [String] name
        #   The relative resource name of this source. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name Example: "organizations/`
        #   organization_id`/sources/`source_id`"
        # @param [Google::Apis::SecuritycenterV1::Source] source_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the source resource. If empty all mutable
        #   fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Source] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Source]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_source(name, source_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::Source::Representation
          command.request_object = source_object
          command.response_representation = Google::Apis::SecuritycenterV1::Source::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Source
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified Source.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::SecuritycenterV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_source_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Policy::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the permissions that a caller has on the specified source.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::SecuritycenterV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_source_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SecuritycenterV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a finding. The corresponding source must exist for finding creation to
        # succeed.
        # @param [String] parent
        #   Required. Resource name of the new finding's parent. Its format should be "
        #   organizations/[organization_id]/sources/[source_id]".
        # @param [Google::Apis::SecuritycenterV1::Finding] finding_object
        # @param [String] finding_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must be alphanumeric and less than or equal to 32 characters and greater than
        #   0 characters in length.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_source_finding(parent, finding_object = nil, finding_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings', options)
          command.request_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.request_object = finding_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['parent'] = parent unless parent.nil?
          command.query['findingId'] = finding_id unless finding_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Filters an organization or source's findings and groups them by their
        # specified properties. To group across all sources provide a `-` as the source
        # id. Example: /v1/organizations/`organization_id`/sources/-/findings, /v1/
        # folders/`folder_id`/sources/-/findings, /v1/projects/`project_id`/sources/-/
        # findings
        # @param [String] parent
        #   Required. Name of the source to groupBy. Its format is "organizations/[
        #   organization_id]/sources/[source_id]", folders/[folder_id]/sources/[source_id],
        #   or projects/[project_id]/sources/[source_id]. To groupBy across all sources
        #   provide a source_id of `-`. For example: organizations/`organization_id`/
        #   sources/-, folders/`folder_id`/sources/-, or projects/`project_id`/sources/-
        # @param [Google::Apis::SecuritycenterV1::GroupFindingsRequest] group_findings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GroupFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GroupFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def group_findings(parent, group_findings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings:group', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GroupFindingsRequest::Representation
          command.request_object = group_findings_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::GroupFindingsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GroupFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists an organization or source's findings. To list across all sources provide
        # a `-` as the source id. Example: /v1/organizations/`organization_id`/sources/-/
        # findings
        # @param [String] parent
        #   Required. Name of the source the findings belong to. Its format is "
        #   organizations/[organization_id]/sources/[source_id], folders/[folder_id]/
        #   sources/[source_id], or projects/[project_id]/sources/[source_id]". To list
        #   across all sources provide a source_id of `-`. For example: organizations/`
        #   organization_id`/sources/-, folders/`folder_id`/sources/- or projects/`
        #   projects_id`/sources/-
        # @param [String] compare_duration
        #   When compare_duration is set, the ListFindingsResult's "state_change"
        #   attribute is updated to indicate whether the finding had its state changed,
        #   the finding's state remained unchanged, or if the finding was added in any
        #   state during the compare_duration period of time that precedes the read_time.
        #   This is the time between (read_time - compare_duration) and read_time. The
        #   state_change value is derived based on the presence and state of the finding
        #   at the two points in time. Intermediate state changes between the two times
        #   don't affect the result. For example, the results aren't affected if the
        #   finding is made inactive and then active again. Possible "state_change" values
        #   when compare_duration is specified: * "CHANGED": indicates that the finding
        #   was present and matched the given filter at the start of compare_duration, but
        #   changed its state at read_time. * "UNCHANGED": indicates that the finding was
        #   present and matched the given filter at the start of compare_duration and did
        #   not change state at read_time. * "ADDED": indicates that the finding did not
        #   match the given filter or was not present at the start of compare_duration,
        #   but was present at read_time. * "REMOVED": indicates that the finding was
        #   present and matched the filter at the start of compare_duration, but did not
        #   match the filter at read_time. If compare_duration is not specified, then the
        #   only possible state_change is "UNUSED", which will be the state_change set for
        #   all findings present at read_time.
        # @param [String] field_mask
        #   A field mask to specify the Finding fields to be listed in the response. An
        #   empty field mask will list all fields.
        # @param [String] filter
        #   Expression that defines the filter to apply across findings. The expression is
        #   a list of one or more restrictions combined via logical operators `AND` and `
        #   OR`. Parentheses are supported, and `OR` has higher precedence than `AND`.
        #   Restrictions have the form ` ` and may have a `-` character in front of them
        #   to indicate negation. Examples include: * name * source_properties.a_property *
        #   security_marks.marks.marka The supported operators are: * `=` for all value
        #   types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring
        #   matching, for strings. The supported value types are: * string literals in
        #   quotes. * integer literals without quotes. * boolean literals `true` and `
        #   false` without quotes. The following field and operator combinations are
        #   supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=
        #   `, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<
        #   `, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        #   string. Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
        #   1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
        #   security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `
        #   <=` For example, `source_properties.size = 100` is a valid filter string. Use
        #   a partial match on the empty string to filter based on a property existing: `
        #   source_properties.my_property : ""` Use a negated partial match on the empty
        #   string to filter based on a property not existing: `-source_properties.
        #   my_property : ""` * resource: * resource.name: `=`, `:` * resource.parent_name:
        #   `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`
        #   , `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:` *
        #   resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`, `:`
        # @param [String] order_by
        #   Expression that defines what fields and order to use for sorting. The string
        #   value should follow SQL syntax: comma separated list of fields. For example: "
        #   name,resource_properties.a_property". The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be appended
        #   to the field name. For example: "name desc,source_properties.a_property".
        #   Redundant space characters in the syntax are insignificant. "name desc,
        #   source_properties.a_property" and " name desc , source_properties.a_property "
        #   are equivalent. The following fields are supported: name parent state category
        #   resource_name event_time source_properties security_marks.marks
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListFindingsResponse`; indicates that this is
        #   a continuation of a prior `ListFindings` call, and that the system should
        #   return the next page of data.
        # @param [String] read_time
        #   Time used as a reference point when filtering findings. The filter is limited
        #   to findings existing at the supplied time and their values are those at that
        #   specific time. Absence of this field will default to the API's version of NOW.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_source_findings(parent, compare_duration: nil, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/findings', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListFindingsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['compareDuration'] = compare_duration unless compare_duration.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a finding. The corresponding source must exist for a
        # finding creation to succeed.
        # @param [String] name
        #   The relative resource name of this finding. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name Example: "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`"
        # @param [Google::Apis::SecuritycenterV1::Finding] finding_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the finding resource. This field should not
        #   be specified when creating a finding. When updating a finding, an empty mask
        #   is treated as updating all mutable fields and replacing source_properties.
        #   Individual source_properties can be added/updated by using "source_properties."
        #   in the field mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_source_finding(name, finding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.request_object = finding_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the mute state of a finding.
        # @param [String] name
        #   Required. The [relative resource name](https://cloud.google.com/apis/design/
        #   resource_names#relative_resource_name) of the finding. Example: "organizations/
        #   `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        #   folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        #   sources/`source_id`/findings/`finding_id`".
        # @param [Google::Apis::SecuritycenterV1::SetMuteRequest] set_mute_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_source_finding_mute(name, set_mute_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setMute', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetMuteRequest::Representation
          command.request_object = set_mute_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the state of a finding.
        # @param [String] name
        #   Required. The [relative resource name](https://cloud.google.com/apis/design/
        #   resource_names#relative_resource_name) of the finding. Example: "organizations/
        #   `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        #   folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        #   sources/`source_id`/findings/`finding_id`".
        # @param [Google::Apis::SecuritycenterV1::SetFindingStateRequest] set_finding_state_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_source_finding_state(name, set_finding_state_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setState', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetFindingStateRequest::Representation
          command.request_object = set_finding_state_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates security marks.
        # @param [String] name
        #   The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        #   apis/design/resource_names#relative_resource_name Examples: "organizations/`
        #   organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # @param [Google::Apis::SecuritycenterV1::SecurityMarks] security_marks_object
        # @param [String] start_time
        #   The time at which the updated SecurityMarks take effect. If not set uses
        #   current server time. Updates will be applied to the SecurityMarks that are
        #   active immediately preceding this time. Must be earlier or equal to the server
        #   time.
        # @param [String] update_mask
        #   The FieldMask to use when updating the security marks resource. The field mask
        #   must not contain duplicate fields. If empty or set to "marks", all marks will
        #   be replaced. Individual marks can be updated using "marks.".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::SecurityMarks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_source_finding_security_marks(name, security_marks_object = nil, start_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.request_object = security_marks_object
          command.response_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.response_class = Google::Apis::SecuritycenterV1::SecurityMarks
          command.params['name'] = name unless name.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates external system. This is for a given finding.
        # @param [String] name
        #   Full resource name of the external system, for example: "organizations/1234/
        #   sources/5678/findings/123456/externalSystems/jira", "folders/1234/sources/5678/
        #   findings/123456/externalSystems/jira", "projects/1234/sources/5678/findings/
        #   123456/externalSystems/jira"
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem] google_cloud_securitycenter_v1_external_system_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the external system resource. If empty all
        #   mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_source_finding_external_system(name, google_cloud_securitycenter_v1_external_system_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
          command.request_object = google_cloud_securitycenter_v1_external_system_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Filters an organization's assets and groups them by their specified properties.
        # @param [String] parent
        #   Required. The name of the parent to group the assets by. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::GroupAssetsRequest] group_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GroupAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GroupAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def group_project_asset(parent, group_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assets:group', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GroupAssetsRequest::Representation
          command.request_object = group_assets_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::GroupAssetsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GroupAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists an organization's assets.
        # @param [String] parent
        #   Required. The name of the parent resource that contains the assets. The value
        #   that you can specify on parent depends on the method in which you specify
        #   parent. You can specify one of the following values: "organizations/[
        #   organization_id]", "folders/[folder_id]", or "projects/[project_id]".
        # @param [String] compare_duration
        #   When compare_duration is set, the ListAssetsResult's "state_change" attribute
        #   is updated to indicate whether the asset was added, removed, or remained
        #   present during the compare_duration period of time that precedes the read_time.
        #   This is the time between (read_time - compare_duration) and read_time. The
        #   state_change value is derived based on the presence of the asset at the two
        #   points in time. Intermediate state changes between the two times don't affect
        #   the result. For example, the results aren't affected if the asset is removed
        #   and re-created again. Possible "state_change" values when compare_duration is
        #   specified: * "ADDED": indicates that the asset was not present at the start of
        #   compare_duration, but present at read_time. * "REMOVED": indicates that the
        #   asset was present at the start of compare_duration, but not present at
        #   read_time. * "ACTIVE": indicates that the asset was present at both the start
        #   and the end of the time period defined by compare_duration and read_time. If
        #   compare_duration is not specified, then the only possible state_change is "
        #   UNUSED", which will be the state_change set for all assets present at
        #   read_time.
        # @param [String] field_mask
        #   A field mask to specify the ListAssetsResult fields to be listed in the
        #   response. An empty field mask will list all fields.
        # @param [String] filter
        #   Expression that defines the filter to apply across assets. The expression is a
        #   list of zero or more restrictions combined via logical operators `AND` and `OR`
        #   . Parentheses are supported, and `OR` has higher precedence than `AND`.
        #   Restrictions have the form ` ` and may have a `-` character in front of them
        #   to indicate negation. The fields map to those defined in the Asset resource.
        #   Examples include: * name * security_center_properties.resource_name *
        #   resource_properties.a_property * security_marks.marks.marka The supported
        #   operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer
        #   values. * `:`, meaning substring matching, for strings. The supported value
        #   types are: * string literals in quotes. * integer literals without quotes. *
        #   boolean literals `true` and `false` without quotes. The following are the
        #   allowed field and operator combinations: * name: `=` * update_time: `=`, `>`, `
        #   <`, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        #   string. Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
        #   1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be
        #   milliseconds since epoch or an RFC3339 string. Examples: `create_time = "2019-
        #   06-10T16:07:18-07:00"` `create_time = 1560208038000` * iam_policy.policy_blob:
        #   `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` *
        #   security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`,
        #   `:` * security_center_properties.resource_display_name: `=`, `:` *
        #   security_center_properties.resource_type: `=`, `:` *
        #   security_center_properties.resource_parent: `=`, `:` *
        #   security_center_properties.resource_parent_display_name: `=`, `:` *
        #   security_center_properties.resource_project: `=`, `:` *
        #   security_center_properties.resource_project_display_name: `=`, `:` *
        #   security_center_properties.resource_owners: `=`, `:` For example, `
        #   resource_properties.size = 100` is a valid filter string. Use a partial match
        #   on the empty string to filter based on a property existing: `
        #   resource_properties.my_property : ""` Use a negated partial match on the empty
        #   string to filter based on a property not existing: `-resource_properties.
        #   my_property : ""`
        # @param [String] order_by
        #   Expression that defines what fields and order to use for sorting. The string
        #   value should follow SQL syntax: comma separated list of fields. For example: "
        #   name,resource_properties.a_property". The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be appended
        #   to the field name. For example: "name desc,resource_properties.a_property".
        #   Redundant space characters in the syntax are insignificant. "name desc,
        #   resource_properties.a_property" and " name desc , resource_properties.
        #   a_property " are equivalent. The following fields are supported: name
        #   update_time resource_properties security_marks.marks
        #   security_center_properties.resource_name security_center_properties.
        #   resource_display_name security_center_properties.resource_parent
        #   security_center_properties.resource_parent_display_name
        #   security_center_properties.resource_project security_center_properties.
        #   resource_project_display_name security_center_properties.resource_type
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListAssetsResponse`; indicates that this is a
        #   continuation of a prior `ListAssets` call, and that the system should return
        #   the next page of data.
        # @param [String] read_time
        #   Time used as a reference point when filtering assets. The filter is limited to
        #   assets existing at the supplied time and their values are those at that
        #   specific time. Absence of this field will default to the API's version of NOW.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_assets(parent, compare_duration: nil, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assets', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListAssetsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListAssetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['compareDuration'] = compare_duration unless compare_duration.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates security marks.
        # @param [String] name
        #   The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        #   apis/design/resource_names#relative_resource_name Examples: "organizations/`
        #   organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # @param [Google::Apis::SecuritycenterV1::SecurityMarks] security_marks_object
        # @param [String] start_time
        #   The time at which the updated SecurityMarks take effect. If not set uses
        #   current server time. Updates will be applied to the SecurityMarks that are
        #   active immediately preceding this time. Must be earlier or equal to the server
        #   time.
        # @param [String] update_mask
        #   The FieldMask to use when updating the security marks resource. The field mask
        #   must not contain duplicate fields. If empty or set to "marks", all marks will
        #   be replaced. Individual marks can be updated using "marks.".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::SecurityMarks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_asset_security_marks(name, security_marks_object = nil, start_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.request_object = security_marks_object
          command.response_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.response_class = Google::Apis::SecuritycenterV1::SecurityMarks
          command.params['name'] = name unless name.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a BigQuery export.
        # @param [String] parent
        #   Required. The name of the parent resource of the new BigQuery export. Its
        #   format is "organizations/[organization_id]", "folders/[folder_id]", or "
        #   projects/[project_id]".
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] google_cloud_securitycenter_v1_big_query_export_object
        # @param [String] big_query_export_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must consist of lower case letters, numbers, and hyphen, with the first
        #   character a letter, the last a letter or a number, and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_big_query_export(parent, google_cloud_securitycenter_v1_big_query_export_object = nil, big_query_export_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/bigQueryExports', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.request_object = google_cloud_securitycenter_v1_big_query_export_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['parent'] = parent unless parent.nil?
          command.query['bigQueryExportId'] = big_query_export_id unless big_query_export_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing BigQuery export.
        # @param [String] name
        #   Required. The name of the BigQuery export to delete. Its format is
        #   organizations/`organization`/bigQueryExports/`export_id`, folders/`folder`/
        #   bigQueryExports/`export_id`, or projects/`project`/bigQueryExports/`export_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_big_query_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a BigQuery export.
        # @param [String] name
        #   Required. Name of the BigQuery export to retrieve. Its format is organizations/
        #   `organization`/bigQueryExports/`export_id`, folders/`folder`/bigQueryExports/`
        #   export_id`, or projects/`project`/bigQueryExports/`export_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_big_query_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BigQuery exports. Note that when requesting BigQuery exports at a given
        # level all exports under that level are also returned e.g. if requesting
        # BigQuery exports under a folder, then all BigQuery exports immediately under
        # the folder plus the ones created under the projects within the folder are
        # returned.
        # @param [String] parent
        #   Required. The parent, which owns the collection of BigQuery exports. Its
        #   format is "organizations/[organization_id]", "folders/[folder_id]", "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListBigQueryExports` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListBigQueryExports` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_big_query_exports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/bigQueryExports', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListBigQueryExportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a BigQuery export.
        # @param [String] name
        #   The relative resource name of this export. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name. Example format: "organizations/`
        #   organization_id`/bigQueryExports/`export_id`" Example format: "folders/`
        #   folder_id`/bigQueryExports/`export_id`" Example format: "projects/`project_id`/
        #   bigQueryExports/`export_id`" This field is provided in responses, and is
        #   ignored when provided in create requests.
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] google_cloud_securitycenter_v1_big_query_export_object
        # @param [String] update_mask
        #   The list of fields to be updated. If empty all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_big_query_export(name, google_cloud_securitycenter_v1_big_query_export_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.request_object = google_cloud_securitycenter_v1_big_query_export_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Kicks off an LRO to bulk mute findings for a parent based on a filter. The
        # parent can be either an organization, folder or project. The findings matched
        # by the filter will be muted after the LRO is done.
        # @param [String] parent
        #   Required. The parent, at which bulk action needs to be applied. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", "projects/[project_id]
        #   ".
        # @param [Google::Apis::SecuritycenterV1::BulkMuteFindingsRequest] bulk_mute_findings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_finding_mute(parent, bulk_mute_findings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings:bulkMute', options)
          command.request_representation = Google::Apis::SecuritycenterV1::BulkMuteFindingsRequest::Representation
          command.request_object = bulk_mute_findings_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Operation::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a mute config.
        # @param [String] parent
        #   Required. Resource name of the new mute configs's parent. Its format is "
        #   organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] google_cloud_securitycenter_v1_mute_config_object
        # @param [String] mute_config_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must consist of lower case letters, numbers, and hyphen, with the first
        #   character a letter, the last a letter or a number, and a 63 character maximum.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_mute_config(parent, google_cloud_securitycenter_v1_mute_config_object = nil, mute_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/muteConfigs', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.request_object = google_cloud_securitycenter_v1_mute_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['muteConfigId'] = mute_config_id unless mute_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing mute config.
        # @param [String] name
        #   Required. Name of the mute config to delete. Its format is organizations/`
        #   organization`/muteConfigs/`config_id`, folders/`folder`/muteConfigs/`config_id`
        #   , or projects/`project`/muteConfigs/`config_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_mute_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a mute config.
        # @param [String] name
        #   Required. Name of the mute config to retrieve. Its format is organizations/`
        #   organization`/muteConfigs/`config_id`, folders/`folder`/muteConfigs/`config_id`
        #   , or projects/`project`/muteConfigs/`config_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_mute_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists mute configs.
        # @param [String] parent
        #   Required. The parent, which owns the collection of mute configs. Its format is
        #   "organizations/[organization_id]", "folders/[folder_id]", "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of configs to return. The service may return fewer than
        #   this value. If unspecified, at most 10 configs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListMuteConfigs` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListMuteConfigs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListMuteConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListMuteConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_mute_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/muteConfigs', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListMuteConfigsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListMuteConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a mute config.
        # @param [String] name
        #   This field will be ignored if provided on config creation. Format "
        #   organizations/`organization`/muteConfigs/`mute_config`" "folders/`folder`/
        #   muteConfigs/`mute_config`" "projects/`project`/muteConfigs/`mute_config`"
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] google_cloud_securitycenter_v1_mute_config_object
        # @param [String] update_mask
        #   The list of fields to be updated. If empty all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_mute_config(name, google_cloud_securitycenter_v1_mute_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.request_object = google_cloud_securitycenter_v1_mute_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a notification config.
        # @param [String] parent
        #   Required. Resource name of the new notification config's parent. Its format is
        #   "organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Google::Apis::SecuritycenterV1::NotificationConfig] notification_config_object
        # @param [String] config_id
        #   Required. Unique identifier provided by the client within the parent scope. It
        #   must be between 1 and 128 characters and contain alphanumeric characters,
        #   underscores, or hyphens only.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_notification_config(parent, notification_config_object = nil, config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/notificationConfigs', options)
          command.request_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.request_object = notification_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['configId'] = config_id unless config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a notification config.
        # @param [String] name
        #   Required. Name of the notification config to delete. Its format is "
        #   organizations/[organization_id]/notificationConfigs/[config_id]", "folders/[
        #   folder_id]/notificationConfigs/[config_id]", or "projects/[project_id]/
        #   notificationConfigs/[config_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::Empty::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a notification config.
        # @param [String] name
        #   Required. Name of the notification config to get. Its format is "organizations/
        #   [organization_id]/notificationConfigs/[config_id]", "folders/[folder_id]/
        #   notificationConfigs/[config_id]", or "projects/[project_id]/
        #   notificationConfigs/[config_id]".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists notification configs.
        # @param [String] parent
        #   Required. The name of the parent in which to list the notification
        #   configurations. Its format is "organizations/[organization_id]", "folders/[
        #   folder_id]", or "projects/[project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListNotificationConfigsResponse`; indicates
        #   that this is a continuation of a prior `ListNotificationConfigs` call, and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_notification_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/notificationConfigs', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListNotificationConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a notification config. The following update fields are allowed:
        # description, pubsub_topic, streaming_config.filter
        # @param [String] name
        #   The relative resource name of this notification config. See: https://cloud.
        #   google.com/apis/design/resource_names#relative_resource_name Example: "
        #   organizations/`organization_id`/notificationConfigs/notify_public_bucket", "
        #   folders/`folder_id`/notificationConfigs/notify_public_bucket", or "projects/`
        #   project_id`/notificationConfigs/notify_public_bucket".
        # @param [Google::Apis::SecuritycenterV1::NotificationConfig] notification_config_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the notification config. If empty all
        #   mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::NotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::NotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_notification_config(name, notification_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.request_object = notification_config_object
          command.response_representation = Google::Apis::SecuritycenterV1::NotificationConfig::Representation
          command.response_class = Google::Apis::SecuritycenterV1::NotificationConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sources belonging to an organization.
        # @param [String] parent
        #   Required. Resource name of the parent of sources to list. Its format should be
        #   "organizations/[organization_id]", "folders/[folder_id]", or "projects/[
        #   project_id]".
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListSourcesResponse`; indicates that this is a
        #   continuation of a prior `ListSources` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sources', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListSourcesResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Filters an organization or source's findings and groups them by their
        # specified properties. To group across all sources provide a `-` as the source
        # id. Example: /v1/organizations/`organization_id`/sources/-/findings, /v1/
        # folders/`folder_id`/sources/-/findings, /v1/projects/`project_id`/sources/-/
        # findings
        # @param [String] parent
        #   Required. Name of the source to groupBy. Its format is "organizations/[
        #   organization_id]/sources/[source_id]", folders/[folder_id]/sources/[source_id],
        #   or projects/[project_id]/sources/[source_id]. To groupBy across all sources
        #   provide a source_id of `-`. For example: organizations/`organization_id`/
        #   sources/-, folders/`folder_id`/sources/-, or projects/`project_id`/sources/-
        # @param [Google::Apis::SecuritycenterV1::GroupFindingsRequest] group_findings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GroupFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GroupFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def group_project_source_finding(parent, group_findings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/findings:group', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GroupFindingsRequest::Representation
          command.request_object = group_findings_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::GroupFindingsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GroupFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists an organization or source's findings. To list across all sources provide
        # a `-` as the source id. Example: /v1/organizations/`organization_id`/sources/-/
        # findings
        # @param [String] parent
        #   Required. Name of the source the findings belong to. Its format is "
        #   organizations/[organization_id]/sources/[source_id], folders/[folder_id]/
        #   sources/[source_id], or projects/[project_id]/sources/[source_id]". To list
        #   across all sources provide a source_id of `-`. For example: organizations/`
        #   organization_id`/sources/-, folders/`folder_id`/sources/- or projects/`
        #   projects_id`/sources/-
        # @param [String] compare_duration
        #   When compare_duration is set, the ListFindingsResult's "state_change"
        #   attribute is updated to indicate whether the finding had its state changed,
        #   the finding's state remained unchanged, or if the finding was added in any
        #   state during the compare_duration period of time that precedes the read_time.
        #   This is the time between (read_time - compare_duration) and read_time. The
        #   state_change value is derived based on the presence and state of the finding
        #   at the two points in time. Intermediate state changes between the two times
        #   don't affect the result. For example, the results aren't affected if the
        #   finding is made inactive and then active again. Possible "state_change" values
        #   when compare_duration is specified: * "CHANGED": indicates that the finding
        #   was present and matched the given filter at the start of compare_duration, but
        #   changed its state at read_time. * "UNCHANGED": indicates that the finding was
        #   present and matched the given filter at the start of compare_duration and did
        #   not change state at read_time. * "ADDED": indicates that the finding did not
        #   match the given filter or was not present at the start of compare_duration,
        #   but was present at read_time. * "REMOVED": indicates that the finding was
        #   present and matched the filter at the start of compare_duration, but did not
        #   match the filter at read_time. If compare_duration is not specified, then the
        #   only possible state_change is "UNUSED", which will be the state_change set for
        #   all findings present at read_time.
        # @param [String] field_mask
        #   A field mask to specify the Finding fields to be listed in the response. An
        #   empty field mask will list all fields.
        # @param [String] filter
        #   Expression that defines the filter to apply across findings. The expression is
        #   a list of one or more restrictions combined via logical operators `AND` and `
        #   OR`. Parentheses are supported, and `OR` has higher precedence than `AND`.
        #   Restrictions have the form ` ` and may have a `-` character in front of them
        #   to indicate negation. Examples include: * name * source_properties.a_property *
        #   security_marks.marks.marka The supported operators are: * `=` for all value
        #   types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring
        #   matching, for strings. The supported value types are: * string literals in
        #   quotes. * integer literals without quotes. * boolean literals `true` and `
        #   false` without quotes. The following field and operator combinations are
        #   supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=
        #   `, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<
        #   `, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        #   string. Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
        #   1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
        #   security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`, `>=`, `
        #   <=` For example, `source_properties.size = 100` is a valid filter string. Use
        #   a partial match on the empty string to filter based on a property existing: `
        #   source_properties.my_property : ""` Use a negated partial match on the empty
        #   string to filter based on a property not existing: `-source_properties.
        #   my_property : ""` * resource: * resource.name: `=`, `:` * resource.parent_name:
        #   `=`, `:` * resource.parent_display_name: `=`, `:` * resource.project_name: `=`
        #   , `:` * resource.project_display_name: `=`, `:` * resource.type: `=`, `:` *
        #   resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`, `:`
        # @param [String] order_by
        #   Expression that defines what fields and order to use for sorting. The string
        #   value should follow SQL syntax: comma separated list of fields. For example: "
        #   name,resource_properties.a_property". The default sorting order is ascending.
        #   To specify descending order for a field, a suffix " desc" should be appended
        #   to the field name. For example: "name desc,source_properties.a_property".
        #   Redundant space characters in the syntax are insignificant. "name desc,
        #   source_properties.a_property" and " name desc , source_properties.a_property "
        #   are equivalent. The following fields are supported: name parent state category
        #   resource_name event_time source_properties security_marks.marks
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. Default is 10,
        #   minimum is 1, maximum is 1000.
        # @param [String] page_token
        #   The value returned by the last `ListFindingsResponse`; indicates that this is
        #   a continuation of a prior `ListFindings` call, and that the system should
        #   return the next page of data.
        # @param [String] read_time
        #   Time used as a reference point when filtering findings. The filter is limited
        #   to findings existing at the supplied time and their values are those at that
        #   specific time. Absence of this field will default to the API's version of NOW.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::ListFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::ListFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_source_findings(parent, compare_duration: nil, field_mask: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/findings', options)
          command.response_representation = Google::Apis::SecuritycenterV1::ListFindingsResponse::Representation
          command.response_class = Google::Apis::SecuritycenterV1::ListFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['compareDuration'] = compare_duration unless compare_duration.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a finding. The corresponding source must exist for a
        # finding creation to succeed.
        # @param [String] name
        #   The relative resource name of this finding. See: https://cloud.google.com/apis/
        #   design/resource_names#relative_resource_name Example: "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`"
        # @param [Google::Apis::SecuritycenterV1::Finding] finding_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the finding resource. This field should not
        #   be specified when creating a finding. When updating a finding, an empty mask
        #   is treated as updating all mutable fields and replacing source_properties.
        #   Individual source_properties can be added/updated by using "source_properties."
        #   in the field mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_source_finding(name, finding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.request_object = finding_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the mute state of a finding.
        # @param [String] name
        #   Required. The [relative resource name](https://cloud.google.com/apis/design/
        #   resource_names#relative_resource_name) of the finding. Example: "organizations/
        #   `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        #   folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        #   sources/`source_id`/findings/`finding_id`".
        # @param [Google::Apis::SecuritycenterV1::SetMuteRequest] set_mute_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_source_finding_mute(name, set_mute_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setMute', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetMuteRequest::Representation
          command.request_object = set_mute_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the state of a finding.
        # @param [String] name
        #   Required. The [relative resource name](https://cloud.google.com/apis/design/
        #   resource_names#relative_resource_name) of the finding. Example: "organizations/
        #   `organization_id`/sources/`source_id`/findings/`finding_id`", "folders/`
        #   folder_id`/sources/`source_id`/findings/`finding_id`", "projects/`project_id`/
        #   sources/`source_id`/findings/`finding_id`".
        # @param [Google::Apis::SecuritycenterV1::SetFindingStateRequest] set_finding_state_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_source_finding_state(name, set_finding_state_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setState', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SetFindingStateRequest::Representation
          command.request_object = set_finding_state_request_object
          command.response_representation = Google::Apis::SecuritycenterV1::Finding::Representation
          command.response_class = Google::Apis::SecuritycenterV1::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates security marks.
        # @param [String] name
        #   The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        #   apis/design/resource_names#relative_resource_name Examples: "organizations/`
        #   organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        #   organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
        # @param [Google::Apis::SecuritycenterV1::SecurityMarks] security_marks_object
        # @param [String] start_time
        #   The time at which the updated SecurityMarks take effect. If not set uses
        #   current server time. Updates will be applied to the SecurityMarks that are
        #   active immediately preceding this time. Must be earlier or equal to the server
        #   time.
        # @param [String] update_mask
        #   The FieldMask to use when updating the security marks resource. The field mask
        #   must not contain duplicate fields. If empty or set to "marks", all marks will
        #   be replaced. Individual marks can be updated using "marks.".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::SecurityMarks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_source_finding_security_marks(name, security_marks_object = nil, start_time: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.request_object = security_marks_object
          command.response_representation = Google::Apis::SecuritycenterV1::SecurityMarks::Representation
          command.response_class = Google::Apis::SecuritycenterV1::SecurityMarks
          command.params['name'] = name unless name.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates external system. This is for a given finding.
        # @param [String] name
        #   Full resource name of the external system, for example: "organizations/1234/
        #   sources/5678/findings/123456/externalSystems/jira", "folders/1234/sources/5678/
        #   findings/123456/externalSystems/jira", "projects/1234/sources/5678/findings/
        #   123456/externalSystems/jira"
        # @param [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem] google_cloud_securitycenter_v1_external_system_object
        # @param [String] update_mask
        #   The FieldMask to use when updating the external system resource. If empty all
        #   mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_source_finding_external_system(name, google_cloud_securitycenter_v1_external_system_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
          command.request_object = google_cloud_securitycenter_v1_external_system_object
          command.response_representation = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
          command.response_class = Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem
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
