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
    module PeopleV1
      # People API
      #
      # Provides access to information about profiles and contacts.
      #
      # @example
      #    require 'google/apis/people_v1'
      #
      #    People = Google::Apis::PeopleV1 # Alias the module
      #    service = People::PeopleServiceService.new
      #
      # @see https://developers.google.com/people/
      class PeopleServiceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://people.googleapis.com/', '',
                client_name: 'google-apis-people_v1',
                client_version: Google::Apis::PeopleV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Get a list of contact groups owned by the authenticated user by specifying a
        # list of contact group resource names.
        # @param [String] group_fields
        #   Optional. A field mask to restrict which fields on the group are returned.
        #   Defaults to `metadata`, `groupType`, `memberCount`, and `name` if not set or
        #   set to empty. Valid fields are: * clientData * groupType * memberCount *
        #   metadata * name
        # @param [Fixnum] max_members
        #   Optional. Specifies the maximum number of members to return for each group.
        #   Defaults to 0 if not set, which will return zero members.
        # @param [Array<String>, String] resource_names
        #   Required. The resource names of the contact groups to get. There is a maximum
        #   of 200 resource names.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::BatchGetContactGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::BatchGetContactGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_contact_group_get(group_fields: nil, max_members: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/contactGroups:batchGet', options)
          command.response_representation = Google::Apis::PeopleV1::BatchGetContactGroupsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::BatchGetContactGroupsResponse
          command.query['groupFields'] = group_fields unless group_fields.nil?
          command.query['maxMembers'] = max_members unless max_members.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new contact group owned by the authenticated user. Created contact
        # group names must be unique to the users contact groups. Attempting to create a
        # group with a duplicate name will return a HTTP 409 error. Mutate requests for
        # the same user should be sent sequentially to avoid increased latency and
        # failures.
        # @param [Google::Apis::PeopleV1::CreateContactGroupRequest] create_contact_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ContactGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ContactGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_contact_group(create_contact_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/contactGroups', options)
          command.request_representation = Google::Apis::PeopleV1::CreateContactGroupRequest::Representation
          command.request_object = create_contact_group_request_object
          command.response_representation = Google::Apis::PeopleV1::ContactGroup::Representation
          command.response_class = Google::Apis::PeopleV1::ContactGroup
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an existing contact group owned by the authenticated user by specifying
        # a contact group resource name. Mutate requests for the same user should be
        # sent sequentially to avoid increased latency and failures.
        # @param [String] resource_name
        #   Required. The resource name of the contact group to delete.
        # @param [Boolean] delete_contacts
        #   Optional. Set to true to also delete the contacts in the specified group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_contact_group(resource_name, delete_contacts: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+resourceName}', options)
          command.response_representation = Google::Apis::PeopleV1::Empty::Representation
          command.response_class = Google::Apis::PeopleV1::Empty
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['deleteContacts'] = delete_contacts unless delete_contacts.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific contact group owned by the authenticated user by specifying a
        # contact group resource name.
        # @param [String] resource_name
        #   Required. The resource name of the contact group to get.
        # @param [String] group_fields
        #   Optional. A field mask to restrict which fields on the group are returned.
        #   Defaults to `metadata`, `groupType`, `memberCount`, and `name` if not set or
        #   set to empty. Valid fields are: * clientData * groupType * memberCount *
        #   metadata * name
        # @param [Fixnum] max_members
        #   Optional. Specifies the maximum number of members to return. Defaults to 0 if
        #   not set, which will return zero members.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ContactGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ContactGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_contact_group(resource_name, group_fields: nil, max_members: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resourceName}', options)
          command.response_representation = Google::Apis::PeopleV1::ContactGroup::Representation
          command.response_class = Google::Apis::PeopleV1::ContactGroup
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['groupFields'] = group_fields unless group_fields.nil?
          command.query['maxMembers'] = max_members unless max_members.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all contact groups owned by the authenticated user. Members of the
        # contact groups are not populated.
        # @param [String] group_fields
        #   Optional. A field mask to restrict which fields on the group are returned.
        #   Defaults to `metadata`, `groupType`, `memberCount`, and `name` if not set or
        #   set to empty. Valid fields are: * clientData * groupType * memberCount *
        #   metadata * name
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. Valid values are between
        #   1 and 1000, inclusive. Defaults to 30 if not set or set to 0.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous call to [
        #   ListContactGroups](/people/api/rest/v1/contactgroups/list). Requests the next
        #   page of resources.
        # @param [String] sync_token
        #   Optional. A sync token, returned by a previous call to `contactgroups.list`.
        #   Only resources changed since the sync token was created will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ListContactGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ListContactGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_contact_groups(group_fields: nil, page_size: nil, page_token: nil, sync_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/contactGroups', options)
          command.response_representation = Google::Apis::PeopleV1::ListContactGroupsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::ListContactGroupsResponse
          command.query['groupFields'] = group_fields unless group_fields.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['syncToken'] = sync_token unless sync_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the name of an existing contact group owned by the authenticated user.
        # Updated contact group names must be unique to the users contact groups.
        # Attempting to create a group with a duplicate name will return a HTTP 409
        # error. Mutate requests for the same user should be sent sequentially to avoid
        # increased latency and failures.
        # @param [String] resource_name
        #   The resource name for the contact group, assigned by the server. An ASCII
        #   string, in the form of `contactGroups/`contact_group_id``.
        # @param [Google::Apis::PeopleV1::UpdateContactGroupRequest] update_contact_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ContactGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ContactGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_contact_group(resource_name, update_contact_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+resourceName}', options)
          command.request_representation = Google::Apis::PeopleV1::UpdateContactGroupRequest::Representation
          command.request_object = update_contact_group_request_object
          command.response_representation = Google::Apis::PeopleV1::ContactGroup::Representation
          command.response_class = Google::Apis::PeopleV1::ContactGroup
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modify the members of a contact group owned by the authenticated user. The
        # only system contact groups that can have members added are `contactGroups/
        # myContacts` and `contactGroups/starred`. Other system contact groups are
        # deprecated and can only have contacts removed.
        # @param [String] resource_name
        #   Required. The resource name of the contact group to modify.
        # @param [Google::Apis::PeopleV1::ModifyContactGroupMembersRequest] modify_contact_group_members_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ModifyContactGroupMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ModifyContactGroupMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_contact_group_members(resource_name, modify_contact_group_members_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resourceName}/members:modify', options)
          command.request_representation = Google::Apis::PeopleV1::ModifyContactGroupMembersRequest::Representation
          command.request_object = modify_contact_group_members_request_object
          command.response_representation = Google::Apis::PeopleV1::ModifyContactGroupMembersResponse::Representation
          command.response_class = Google::Apis::PeopleV1::ModifyContactGroupMembersResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Copies an "Other contact" to a new contact in the user's "myContacts" group
        # Mutate requests for the same user should be sent sequentially to avoid
        # increased latency and failures.
        # @param [String] resource_name
        #   Required. The resource name of the "Other contact" to copy.
        # @param [Google::Apis::PeopleV1::CopyOtherContactToMyContactsGroupRequest] copy_other_contact_to_my_contacts_group_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Person] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Person]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def copy_other_contact_to_my_contacts_group(resource_name, copy_other_contact_to_my_contacts_group_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resourceName}:copyOtherContactToMyContactsGroup', options)
          command.request_representation = Google::Apis::PeopleV1::CopyOtherContactToMyContactsGroupRequest::Representation
          command.request_object = copy_other_contact_to_my_contacts_group_request_object
          command.response_representation = Google::Apis::PeopleV1::Person::Representation
          command.response_class = Google::Apis::PeopleV1::Person
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all "Other contacts", that is contacts that are not in a contact group. "
        # Other contacts" are typically auto created contacts from interactions. Sync
        # tokens expire 7 days after the full sync. A request with an expired sync token
        # will get an error with an [google.rpc.ErrorInfo](https://cloud.google.com/apis/
        # design/errors#error_info) with reason "EXPIRED_SYNC_TOKEN". In the case of
        # such an error clients should make a full sync request without a `sync_token`.
        # The first page of a full sync request has an additional quota. If the quota is
        # exceeded, a 429 error will be returned. This quota is fixed and can not be
        # increased. When the `sync_token` is specified, resources deleted since the
        # last sync will be returned as a person with `PersonMetadata.deleted` set to
        # true. When the `page_token` or `sync_token` is specified, all other request
        # parameters must match the first call. Writes may have a propagation delay of
        # several minutes for sync requests. Incremental syncs are not intended for read-
        # after-write use cases. See example usage at [List the user's other contacts
        # that have changed](/people/v1/other-contacts#
        # list_the_users_other_contacts_that_have_changed).
        # @param [Fixnum] page_size
        #   Optional. The number of "Other contacts" to include in the response. Valid
        #   values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to
        #   0.
        # @param [String] page_token
        #   Optional. A page token, received from a previous response `next_page_token`.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `otherContacts.list` must match the first call that
        #   provided the page token.
        # @param [String] read_mask
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. What values
        #   are valid depend on what ReadSourceType is used. If READ_SOURCE_TYPE_CONTACT
        #   is used, valid values are: * emailAddresses * metadata * names * phoneNumbers *
        #   photos If READ_SOURCE_TYPE_PROFILE is used, valid values are: * addresses *
        #   ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos *
        #   emailAddresses * events * externalIds * genders * imClients * interests *
        #   locales * locations * memberships * metadata * miscKeywords * names *
        #   nicknames * occupations * organizations * phoneNumbers * photos * relations *
        #   sipAddresses * skills * urls * userDefined
        # @param [Boolean] request_sync_token
        #   Optional. Whether the response should return `next_sync_token` on the last
        #   page of results. It can be used to get incremental changes since the last
        #   request by setting it on the request `sync_token`. More details about sync
        #   behavior at `otherContacts.list`.
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT if not set. Possible values for this field are: *
        #   READ_SOURCE_TYPE_CONTACT * READ_SOURCE_TYPE_CONTACT,READ_SOURCE_TYPE_PROFILE
        #   Specifying READ_SOURCE_TYPE_PROFILE without specifying
        #   READ_SOURCE_TYPE_CONTACT is not permitted.
        # @param [String] sync_token
        #   Optional. A sync token, received from a previous response `next_sync_token`
        #   Provide this to retrieve only the resources changed since the last request.
        #   When syncing, all other parameters provided to `otherContacts.list` must match
        #   the first call that provided the sync token. More details about sync behavior
        #   at `otherContacts.list`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ListOtherContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ListOtherContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_other_contacts(page_size: nil, page_token: nil, read_mask: nil, request_sync_token: nil, sources: nil, sync_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/otherContacts', options)
          command.response_representation = Google::Apis::PeopleV1::ListOtherContactsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::ListOtherContactsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['requestSyncToken'] = request_sync_token unless request_sync_token.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['syncToken'] = sync_token unless sync_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides a list of contacts in the authenticated user's other contacts that
        # matches the search query. The query matches on a contact's `names`, `
        # emailAddresses`, and `phoneNumbers` fields that are from the OTHER_CONTACT
        # source. **IMPORTANT**: Before searching, clients should send a warmup request
        # with an empty query to update the cache. See https://developers.google.com/
        # people/v1/other-contacts#search_the_users_other_contacts
        # @param [Fixnum] page_size
        #   Optional. The number of results to return. Defaults to 10 if field is not set,
        #   or set to 0. Values greater than 30 will be capped to 30.
        # @param [String] query
        #   Required. The plain-text query for the request. The query is used to match
        #   prefix phrases of the fields on a person. For example, a person with name "foo
        #   name" matches queries such as "f", "fo", "foo", "foo n", "nam", etc., but not "
        #   oo n".
        # @param [String] read_mask
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * emailAddresses * metadata * names * phoneNumbers
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::SearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::SearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_other_contacts(page_size: nil, query: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/otherContacts:search', options)
          command.response_representation = Google::Apis::PeopleV1::SearchResponse::Representation
          command.response_class = Google::Apis::PeopleV1::SearchResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a batch of new contacts and return the PersonResponses for the newly
        # Mutate requests for the same user should be sent sequentially to avoid
        # increased latency and failures.
        # @param [Google::Apis::PeopleV1::BatchCreateContactsRequest] batch_create_contacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::BatchCreateContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::BatchCreateContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_person_create_contacts(batch_create_contacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/people:batchCreateContacts', options)
          command.request_representation = Google::Apis::PeopleV1::BatchCreateContactsRequest::Representation
          command.request_object = batch_create_contacts_request_object
          command.response_representation = Google::Apis::PeopleV1::BatchCreateContactsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::BatchCreateContactsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a batch of contacts. Any non-contact data will not be deleted. Mutate
        # requests for the same user should be sent sequentially to avoid increased
        # latency and failures.
        # @param [Google::Apis::PeopleV1::BatchDeleteContactsRequest] batch_delete_contacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_person_delete_contacts(batch_delete_contacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/people:batchDeleteContacts', options)
          command.request_representation = Google::Apis::PeopleV1::BatchDeleteContactsRequest::Representation
          command.request_object = batch_delete_contacts_request_object
          command.response_representation = Google::Apis::PeopleV1::Empty::Representation
          command.response_class = Google::Apis::PeopleV1::Empty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a batch of contacts and return a map of resource names to
        # PersonResponses for the updated contacts. Mutate requests for the same user
        # should be sent sequentially to avoid increased latency and failures.
        # @param [Google::Apis::PeopleV1::BatchUpdateContactsRequest] batch_update_contacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::BatchUpdateContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::BatchUpdateContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_person_update_contacts(batch_update_contacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/people:batchUpdateContacts', options)
          command.request_representation = Google::Apis::PeopleV1::BatchUpdateContactsRequest::Representation
          command.request_object = batch_update_contacts_request_object
          command.response_representation = Google::Apis::PeopleV1::BatchUpdateContactsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::BatchUpdateContactsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new contact and return the person resource for that contact. The
        # request returns a 400 error if more than one field is specified on a field
        # that is a singleton for contact sources: * biographies * birthdays * genders *
        # names Mutate requests for the same user should be sent sequentially to avoid
        # increased latency and failures.
        # @param [Google::Apis::PeopleV1::Person] person_object
        # @param [String] person_fields
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Defaults to
        #   all fields if not set. Valid values are: * addresses * ageRanges * biographies
        #   * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
        #   events * externalIds * genders * imClients * interests * locales * locations *
        #   memberships * metadata * miscKeywords * names * nicknames * occupations *
        #   organizations * phoneNumbers * photos * relations * sipAddresses * skills *
        #   urls * userDefined
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Person] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Person]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_person_contact(person_object = nil, person_fields: nil, sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/people:createContact', options)
          command.request_representation = Google::Apis::PeopleV1::Person::Representation
          command.request_object = person_object
          command.response_representation = Google::Apis::PeopleV1::Person::Representation
          command.response_class = Google::Apis::PeopleV1::Person
          command.query['personFields'] = person_fields unless person_fields.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a contact person. Any non-contact data will not be deleted. Mutate
        # requests for the same user should be sent sequentially to avoid increased
        # latency and failures.
        # @param [String] resource_name
        #   Required. The resource name of the contact to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_person_contact(resource_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+resourceName}:deleteContact', options)
          command.response_representation = Google::Apis::PeopleV1::Empty::Representation
          command.response_class = Google::Apis::PeopleV1::Empty
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a contact's photo. Mutate requests for the same user should be done
        # sequentially to avoid // lock contention.
        # @param [String] resource_name
        #   Required. The resource name of the contact whose photo will be deleted.
        # @param [String] person_fields
        #   Optional. A field mask to restrict which fields on the person are returned.
        #   Multiple fields can be specified by separating them with commas. Defaults to
        #   empty if not set, which will skip the post mutate get. Valid values are: *
        #   addresses * ageRanges * biographies * birthdays * calendarUrls * clientData *
        #   coverPhotos * emailAddresses * events * externalIds * genders * imClients *
        #   interests * locales * locations * memberships * metadata * miscKeywords *
        #   names * nicknames * occupations * organizations * phoneNumbers * photos *
        #   relations * sipAddresses * skills * urls * userDefined
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::DeleteContactPhotoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::DeleteContactPhotoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_person_contact_photo(resource_name, person_fields: nil, sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+resourceName}:deleteContactPhoto', options)
          command.response_representation = Google::Apis::PeopleV1::DeleteContactPhotoResponse::Representation
          command.response_class = Google::Apis::PeopleV1::DeleteContactPhotoResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['personFields'] = person_fields unless person_fields.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides information about a person by specifying a resource name. Use `people/
        # me` to indicate the authenticated user. The request returns a 400 error if '
        # personFields' is not specified.
        # @param [String] resource_name
        #   Required. The resource name of the person to provide information about. - To
        #   get information about the authenticated user, specify `people/me`. - To get
        #   information about a google account, specify `people/`account_id``. - To get
        #   information about a contact, specify the resource name that identifies the
        #   contact as returned by `people.connections.list`.
        # @param [String] person_fields
        #   Required. A field mask to restrict which fields on the person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
        #   clientData * coverPhotos * emailAddresses * events * externalIds * genders *
        #   imClients * interests * locales * locations * memberships * metadata *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   photos * relations * sipAddresses * skills * urls * userDefined
        # @param [String] request_mask_include_field
        #   Required. Comma-separated list of person fields to be included in the response.
        #   Each path should start with `person.`: for example, `person.names` or `person.
        #   photos`.
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_PROFILE and READ_SOURCE_TYPE_CONTACT if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Person] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Person]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_person(resource_name, person_fields: nil, request_mask_include_field: nil, sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resourceName}', options)
          command.response_representation = Google::Apis::PeopleV1::Person::Representation
          command.response_class = Google::Apis::PeopleV1::Person
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['personFields'] = person_fields unless person_fields.nil?
          command.query['requestMask.includeField'] = request_mask_include_field unless request_mask_include_field.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides information about a list of specific people by specifying a list of
        # requested resource names. Use `people/me` to indicate the authenticated user.
        # The request returns a 400 error if 'personFields' is not specified.
        # @param [String] person_fields
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
        #   clientData * coverPhotos * emailAddresses * events * externalIds * genders *
        #   imClients * interests * locales * locations * memberships * metadata *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   photos * relations * sipAddresses * skills * urls * userDefined
        # @param [String] request_mask_include_field
        #   Required. Comma-separated list of person fields to be included in the response.
        #   Each path should start with `person.`: for example, `person.names` or `person.
        #   photos`.
        # @param [Array<String>, String] resource_names
        #   Required. The resource names of the people to provide information about. It's
        #   repeatable. The URL query parameter should be resourceNames=<name1>&
        #   resourceNames=<name2>&... - To get information about the authenticated user,
        #   specify `people/me`. - To get information about a google account, specify `
        #   people/`account_id``. - To get information about a contact, specify the
        #   resource name that identifies the contact as returned by `people.connections.
        #   list`. There is a maximum of 200 resource names.
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::GetPeopleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::GetPeopleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_people(person_fields: nil, request_mask_include_field: nil, resource_names: nil, sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/people:batchGet', options)
          command.response_representation = Google::Apis::PeopleV1::GetPeopleResponse::Representation
          command.response_class = Google::Apis::PeopleV1::GetPeopleResponse
          command.query['personFields'] = person_fields unless person_fields.nil?
          command.query['requestMask.includeField'] = request_mask_include_field unless request_mask_include_field.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides a list of domain profiles and domain contacts in the authenticated
        # user's domain directory. When the `sync_token` is specified, resources deleted
        # since the last sync will be returned as a person with `PersonMetadata.deleted`
        # set to true. When the `page_token` or `sync_token` is specified, all other
        # request parameters must match the first call. Writes may have a propagation
        # delay of several minutes for sync requests. Incremental syncs are not intended
        # for read-after-write use cases. See example usage at [List the directory
        # people that have changed](/people/v1/directory#
        # list_the_directory_people_that_have_changed).
        # @param [Array<String>, String] merge_sources
        #   Optional. Additional data to merge into the directory sources if they are
        #   connected through verified join keys such as email addresses or phone numbers.
        # @param [Fixnum] page_size
        #   Optional. The number of people to include in the response. Valid values are
        #   between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.
        # @param [String] page_token
        #   Optional. A page token, received from a previous response `next_page_token`.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `people.listDirectoryPeople` must match the first call
        #   that provided the page token.
        # @param [String] read_mask
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
        #   clientData * coverPhotos * emailAddresses * events * externalIds * genders *
        #   imClients * interests * locales * locations * memberships * metadata *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   photos * relations * sipAddresses * skills * urls * userDefined
        # @param [Boolean] request_sync_token
        #   Optional. Whether the response should return `next_sync_token`. It can be used
        #   to get incremental changes since the last request by setting it on the request
        #   `sync_token`. More details about sync behavior at `people.listDirectoryPeople`.
        # @param [Array<String>, String] sources
        #   Required. Directory sources to return.
        # @param [String] sync_token
        #   Optional. A sync token, received from a previous response `next_sync_token`
        #   Provide this to retrieve only the resources changed since the last request.
        #   When syncing, all other parameters provided to `people.listDirectoryPeople`
        #   must match the first call that provided the sync token. More details about
        #   sync behavior at `people.listDirectoryPeople`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ListDirectoryPeopleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ListDirectoryPeopleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_person_directory_people(merge_sources: nil, page_size: nil, page_token: nil, read_mask: nil, request_sync_token: nil, sources: nil, sync_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/people:listDirectoryPeople', options)
          command.response_representation = Google::Apis::PeopleV1::ListDirectoryPeopleResponse::Representation
          command.response_class = Google::Apis::PeopleV1::ListDirectoryPeopleResponse
          command.query['mergeSources'] = merge_sources unless merge_sources.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['requestSyncToken'] = request_sync_token unless request_sync_token.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['syncToken'] = sync_token unless sync_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides a list of contacts in the authenticated user's grouped contacts that
        # matches the search query. The query matches on a contact's `names`, `nickNames`
        # , `emailAddresses`, `phoneNumbers`, and `organizations` fields that are from
        # the CONTACT source. **IMPORTANT**: Before searching, clients should send a
        # warmup request with an empty query to update the cache. See https://developers.
        # google.com/people/v1/contacts#search_the_users_contacts
        # @param [Fixnum] page_size
        #   Optional. The number of results to return. Defaults to 10 if field is not set,
        #   or set to 0. Values greater than 30 will be capped to 30.
        # @param [String] query
        #   Required. The plain-text query for the request. The query is used to match
        #   prefix phrases of the fields on a person. For example, a person with name "foo
        #   name" matches queries such as "f", "fo", "foo", "foo n", "nam", etc., but not "
        #   oo n".
        # @param [String] read_mask
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
        #   clientData * coverPhotos * emailAddresses * events * externalIds * genders *
        #   imClients * interests * locales * locations * memberships * metadata *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   photos * relations * sipAddresses * skills * urls * userDefined
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT if not set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::SearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::SearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_person_contacts(page_size: nil, query: nil, read_mask: nil, sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/people:searchContacts', options)
          command.response_representation = Google::Apis::PeopleV1::SearchResponse::Representation
          command.response_class = Google::Apis::PeopleV1::SearchResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides a list of domain profiles and domain contacts in the authenticated
        # user's domain directory that match the search query.
        # @param [Array<String>, String] merge_sources
        #   Optional. Additional data to merge into the directory sources if they are
        #   connected through verified join keys such as email addresses or phone numbers.
        # @param [Fixnum] page_size
        #   Optional. The number of people to include in the response. Valid values are
        #   between 1 and 500, inclusive. Defaults to 100 if not set or set to 0.
        # @param [String] page_token
        #   Optional. A page token, received from a previous response `next_page_token`.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `SearchDirectoryPeople` must match the first call that
        #   provided the page token.
        # @param [String] query
        #   Required. Prefix query that matches fields in the person. Does NOT use the
        #   read_mask for determining what fields to match.
        # @param [String] read_mask
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
        #   clientData * coverPhotos * emailAddresses * events * externalIds * genders *
        #   imClients * interests * locales * locations * memberships * metadata *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   photos * relations * sipAddresses * skills * urls * userDefined
        # @param [Array<String>, String] sources
        #   Required. Directory sources to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::SearchDirectoryPeopleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::SearchDirectoryPeopleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_person_directory_people(merge_sources: nil, page_size: nil, page_token: nil, query: nil, read_mask: nil, sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/people:searchDirectoryPeople', options)
          command.response_representation = Google::Apis::PeopleV1::SearchDirectoryPeopleResponse::Representation
          command.response_class = Google::Apis::PeopleV1::SearchDirectoryPeopleResponse
          command.query['mergeSources'] = merge_sources unless merge_sources.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update contact data for an existing contact person. Any non-contact data will
        # not be modified. Any non-contact data in the person to update will be ignored.
        # All fields specified in the `update_mask` will be replaced. The server returns
        # a 400 error if `person.metadata.sources` is not specified for the contact to
        # be updated or if there is no contact source. The server returns a 400 error
        # with reason `"failedPrecondition"` if `person.metadata.sources.etag` is
        # different than the contact's etag, which indicates the contact has changed
        # since its data was read. Clients should get the latest person and merge their
        # updates into the latest person. The server returns a 400 error if `memberships`
        # are being updated and there are no contact group memberships specified on the
        # person. The server returns a 400 error if more than one field is specified on
        # a field that is a singleton for contact sources: * biographies * birthdays *
        # genders * names Mutate requests for the same user should be sent sequentially
        # to avoid increased latency and failures.
        # @param [String] resource_name
        #   The resource name for the person, assigned by the server. An ASCII string in
        #   the form of `people/`person_id``.
        # @param [Google::Apis::PeopleV1::Person] person_object
        # @param [String] person_fields
        #   Optional. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Defaults to
        #   all fields if not set. Valid values are: * addresses * ageRanges * biographies
        #   * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
        #   events * externalIds * genders * imClients * interests * locales * locations *
        #   memberships * metadata * miscKeywords * names * nicknames * occupations *
        #   organizations * phoneNumbers * photos * relations * sipAddresses * skills *
        #   urls * userDefined
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
        # @param [String] update_person_fields
        #   Required. A field mask to restrict which fields on the person are updated.
        #   Multiple fields can be specified by separating them with commas. All updated
        #   fields will be replaced. Valid values are: * addresses * biographies *
        #   birthdays * calendarUrls * clientData * emailAddresses * events * externalIds *
        #   genders * imClients * interests * locales * locations * memberships *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   relations * sipAddresses * urls * userDefined
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Person] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Person]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_person_contact(resource_name, person_object = nil, person_fields: nil, sources: nil, update_person_fields: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+resourceName}:updateContact', options)
          command.request_representation = Google::Apis::PeopleV1::Person::Representation
          command.request_object = person_object
          command.response_representation = Google::Apis::PeopleV1::Person::Representation
          command.response_class = Google::Apis::PeopleV1::Person
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['personFields'] = person_fields unless person_fields.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['updatePersonFields'] = update_person_fields unless update_person_fields.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a contact's photo. Mutate requests for the same user should be sent
        # sequentially to avoid increased latency and failures.
        # @param [String] resource_name
        #   Required. Person resource name
        # @param [Google::Apis::PeopleV1::UpdateContactPhotoRequest] update_contact_photo_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::UpdateContactPhotoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::UpdateContactPhotoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_person_contact_photo(resource_name, update_contact_photo_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+resourceName}:updateContactPhoto', options)
          command.request_representation = Google::Apis::PeopleV1::UpdateContactPhotoRequest::Representation
          command.request_object = update_contact_photo_request_object
          command.response_representation = Google::Apis::PeopleV1::UpdateContactPhotoResponse::Representation
          command.response_class = Google::Apis::PeopleV1::UpdateContactPhotoResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides a list of the authenticated user's contacts. Sync tokens expire 7
        # days after the full sync. A request with an expired sync token will get an
        # error with an [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/
        # errors#error_info) with reason "EXPIRED_SYNC_TOKEN". In the case of such an
        # error clients should make a full sync request without a `sync_token`. The
        # first page of a full sync request has an additional quota. If the quota is
        # exceeded, a 429 error will be returned. This quota is fixed and can not be
        # increased. When the `sync_token` is specified, resources deleted since the
        # last sync will be returned as a person with `PersonMetadata.deleted` set to
        # true. When the `page_token` or `sync_token` is specified, all other request
        # parameters must match the first call. Writes may have a propagation delay of
        # several minutes for sync requests. Incremental syncs are not intended for read-
        # after-write use cases. See example usage at [List the user's contacts that
        # have changed](/people/v1/contacts#list_the_users_contacts_that_have_changed).
        # @param [String] resource_name
        #   Required. The resource name to return connections for. Only `people/me` is
        #   valid.
        # @param [Fixnum] page_size
        #   Optional. The number of connections to include in the response. Valid values
        #   are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.
        # @param [String] page_token
        #   Optional. A page token, received from a previous response `next_page_token`.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `people.connections.list` must match the first call
        #   that provided the page token.
        # @param [String] person_fields
        #   Required. A field mask to restrict which fields on each person are returned.
        #   Multiple fields can be specified by separating them with commas. Valid values
        #   are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
        #   clientData * coverPhotos * emailAddresses * events * externalIds * genders *
        #   imClients * interests * locales * locations * memberships * metadata *
        #   miscKeywords * names * nicknames * occupations * organizations * phoneNumbers *
        #   photos * relations * sipAddresses * skills * urls * userDefined
        # @param [String] request_mask_include_field
        #   Required. Comma-separated list of person fields to be included in the response.
        #   Each path should start with `person.`: for example, `person.names` or `person.
        #   photos`.
        # @param [Boolean] request_sync_token
        #   Optional. Whether the response should return `next_sync_token` on the last
        #   page of results. It can be used to get incremental changes since the last
        #   request by setting it on the request `sync_token`. More details about sync
        #   behavior at `people.connections.list`.
        # @param [String] sort_order
        #   Optional. The order in which the connections should be sorted. Defaults to `
        #   LAST_MODIFIED_ASCENDING`.
        # @param [Array<String>, String] sources
        #   Optional. A mask of what source types to return. Defaults to
        #   READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
        # @param [String] sync_token
        #   Optional. A sync token, received from a previous response `next_sync_token`
        #   Provide this to retrieve only the resources changed since the last request.
        #   When syncing, all other parameters provided to `people.connections.list` must
        #   match the first call that provided the sync token. More details about sync
        #   behavior at `people.connections.list`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_person_connections(resource_name, page_size: nil, page_token: nil, person_fields: nil, request_mask_include_field: nil, request_sync_token: nil, sort_order: nil, sources: nil, sync_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resourceName}/connections', options)
          command.response_representation = Google::Apis::PeopleV1::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::ListConnectionsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['personFields'] = person_fields unless person_fields.nil?
          command.query['requestMask.includeField'] = request_mask_include_field unless request_mask_include_field.nil?
          command.query['requestSyncToken'] = request_sync_token unless request_sync_token.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['sources'] = sources unless sources.nil?
          command.query['syncToken'] = sync_token unless sync_token.nil?
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
