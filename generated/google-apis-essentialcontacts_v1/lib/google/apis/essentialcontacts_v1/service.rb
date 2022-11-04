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
    module EssentialcontactsV1
      # Essential Contacts API
      #
      # 
      #
      # @example
      #    require 'google/apis/essentialcontacts_v1'
      #
      #    Essentialcontacts = Google::Apis::EssentialcontactsV1 # Alias the module
      #    service = Essentialcontacts::EssentialcontactsService.new
      #
      # @see https://cloud.google.com/essentialcontacts/docs/
      class EssentialcontactsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://essentialcontacts.googleapis.com/', '',
                client_name: 'google-apis-essentialcontacts_v1',
                client_version: Google::Apis::EssentialcontactsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists all contacts for the resource that are subscribed to the specified
        # notification categories, including contacts inherited from any parent
        # resources.
        # @param [String] parent
        #   Required. The name of the resource to compute contacts for. Format:
        #   organizations/`organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Array<String>, String] notification_categories
        #   The categories of notifications to compute contacts for. If ALL is included in
        #   this list, contacts subscribed to any notification category will be returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `next_page_token` in the response
        #   indicates that more results might be available. If not specified, the default
        #   page_size is 100.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_folder_contact(parent, notification_categories: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contacts:compute', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['notificationCategories'] = notification_categories unless notification_categories.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a new contact for a resource.
        # @param [String] parent
        #   Required. The resource to save this contact for. Format: organizations/`
        #   organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] google_cloud_essentialcontacts_v1_contact_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_contact(parent, google_cloud_essentialcontacts_v1_contact_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/contacts', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.request_object = google_cloud_essentialcontacts_v1_contact_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a contact.
        # @param [String] name
        #   Required. The name of the contact to delete. Format: organizations/`
        #   organization_id`/contacts/`contact_id`, folders/`folder_id`/contacts/`
        #   contact_id` or projects/`project_id`/contacts/`contact_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_contact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single contact.
        # @param [String] name
        #   Required. The name of the contact to retrieve. Format: organizations/`
        #   organization_id`/contacts/`contact_id`, folders/`folder_id`/contacts/`
        #   contact_id` or projects/`project_id`/contacts/`contact_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_contact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the contacts that have been set on a resource.
        # @param [String] parent
        #   Required. The parent resource name. Format: organizations/`organization_id`,
        #   folders/`folder_id` or projects/`project_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `next_page_token` in the response
        #   indicates that more results might be available. If not specified, the default
        #   page_size is 100.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_contacts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contacts', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a contact. Note: A contact's email address cannot be changed.
        # @param [String] name
        #   Output only. The identifier for the contact. Format: `resource_type`/`
        #   resource_id`/contacts/`contact_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] google_cloud_essentialcontacts_v1_contact_object
        # @param [String] update_mask
        #   Optional. The update mask applied to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_contact(name, google_cloud_essentialcontacts_v1_contact_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.request_object = google_cloud_essentialcontacts_v1_contact_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows a contact admin to send a test message to contact to verify that it has
        # been configured correctly.
        # @param [String] resource
        #   Required. The name of the resource to send the test message for. All contacts
        #   must either be set directly on this resource or inherited from another
        #   resource that is an ancestor of this one. Format: organizations/`
        #   organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1SendTestMessageRequest] google_cloud_essentialcontacts_v1_send_test_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_folder_contact_test_message(resource, google_cloud_essentialcontacts_v1_send_test_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}/contacts:sendTestMessage', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1SendTestMessageRequest::Representation
          command.request_object = google_cloud_essentialcontacts_v1_send_test_message_request_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all contacts for the resource that are subscribed to the specified
        # notification categories, including contacts inherited from any parent
        # resources.
        # @param [String] parent
        #   Required. The name of the resource to compute contacts for. Format:
        #   organizations/`organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Array<String>, String] notification_categories
        #   The categories of notifications to compute contacts for. If ALL is included in
        #   this list, contacts subscribed to any notification category will be returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `next_page_token` in the response
        #   indicates that more results might be available. If not specified, the default
        #   page_size is 100.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_organization_contact(parent, notification_categories: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contacts:compute', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['notificationCategories'] = notification_categories unless notification_categories.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a new contact for a resource.
        # @param [String] parent
        #   Required. The resource to save this contact for. Format: organizations/`
        #   organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] google_cloud_essentialcontacts_v1_contact_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_contact(parent, google_cloud_essentialcontacts_v1_contact_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/contacts', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.request_object = google_cloud_essentialcontacts_v1_contact_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a contact.
        # @param [String] name
        #   Required. The name of the contact to delete. Format: organizations/`
        #   organization_id`/contacts/`contact_id`, folders/`folder_id`/contacts/`
        #   contact_id` or projects/`project_id`/contacts/`contact_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_contact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single contact.
        # @param [String] name
        #   Required. The name of the contact to retrieve. Format: organizations/`
        #   organization_id`/contacts/`contact_id`, folders/`folder_id`/contacts/`
        #   contact_id` or projects/`project_id`/contacts/`contact_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_contact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the contacts that have been set on a resource.
        # @param [String] parent
        #   Required. The parent resource name. Format: organizations/`organization_id`,
        #   folders/`folder_id` or projects/`project_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `next_page_token` in the response
        #   indicates that more results might be available. If not specified, the default
        #   page_size is 100.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_contacts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contacts', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a contact. Note: A contact's email address cannot be changed.
        # @param [String] name
        #   Output only. The identifier for the contact. Format: `resource_type`/`
        #   resource_id`/contacts/`contact_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] google_cloud_essentialcontacts_v1_contact_object
        # @param [String] update_mask
        #   Optional. The update mask applied to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_contact(name, google_cloud_essentialcontacts_v1_contact_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.request_object = google_cloud_essentialcontacts_v1_contact_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows a contact admin to send a test message to contact to verify that it has
        # been configured correctly.
        # @param [String] resource
        #   Required. The name of the resource to send the test message for. All contacts
        #   must either be set directly on this resource or inherited from another
        #   resource that is an ancestor of this one. Format: organizations/`
        #   organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1SendTestMessageRequest] google_cloud_essentialcontacts_v1_send_test_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_organization_contact_test_message(resource, google_cloud_essentialcontacts_v1_send_test_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}/contacts:sendTestMessage', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1SendTestMessageRequest::Representation
          command.request_object = google_cloud_essentialcontacts_v1_send_test_message_request_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all contacts for the resource that are subscribed to the specified
        # notification categories, including contacts inherited from any parent
        # resources.
        # @param [String] parent
        #   Required. The name of the resource to compute contacts for. Format:
        #   organizations/`organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Array<String>, String] notification_categories
        #   The categories of notifications to compute contacts for. If ALL is included in
        #   this list, contacts subscribed to any notification category will be returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `next_page_token` in the response
        #   indicates that more results might be available. If not specified, the default
        #   page_size is 100.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_project_contact(parent, notification_categories: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contacts:compute', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ComputeContactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['notificationCategories'] = notification_categories unless notification_categories.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a new contact for a resource.
        # @param [String] parent
        #   Required. The resource to save this contact for. Format: organizations/`
        #   organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] google_cloud_essentialcontacts_v1_contact_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_contact(parent, google_cloud_essentialcontacts_v1_contact_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/contacts', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.request_object = google_cloud_essentialcontacts_v1_contact_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a contact.
        # @param [String] name
        #   Required. The name of the contact to delete. Format: organizations/`
        #   organization_id`/contacts/`contact_id`, folders/`folder_id`/contacts/`
        #   contact_id` or projects/`project_id`/contacts/`contact_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_contact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single contact.
        # @param [String] name
        #   Required. The name of the contact to retrieve. Format: organizations/`
        #   organization_id`/contacts/`contact_id`, folders/`folder_id`/contacts/`
        #   contact_id` or projects/`project_id`/contacts/`contact_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_contact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the contacts that have been set on a resource.
        # @param [String] parent
        #   Required. The parent resource name. Format: organizations/`organization_id`,
        #   folders/`folder_id` or projects/`project_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `next_page_token` in the response
        #   indicates that more results might be available. If not specified, the default
        #   page_size is 100.
        # @param [String] page_token
        #   Optional. If present, retrieves the next batch of results from the preceding
        #   call to this method. `page_token` must be the value of `next_page_token` from
        #   the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_contacts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/contacts', options)
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1ListContactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a contact. Note: A contact's email address cannot be changed.
        # @param [String] name
        #   Output only. The identifier for the contact. Format: `resource_type`/`
        #   resource_id`/contacts/`contact_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] google_cloud_essentialcontacts_v1_contact_object
        # @param [String] update_mask
        #   Optional. The update mask applied to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_contact(name, google_cloud_essentialcontacts_v1_contact_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.request_object = google_cloud_essentialcontacts_v1_contact_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows a contact admin to send a test message to contact to verify that it has
        # been configured correctly.
        # @param [String] resource
        #   Required. The name of the resource to send the test message for. All contacts
        #   must either be set directly on this resource or inherited from another
        #   resource that is an ancestor of this one. Format: organizations/`
        #   organization_id`, folders/`folder_id` or projects/`project_id`
        # @param [Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1SendTestMessageRequest] google_cloud_essentialcontacts_v1_send_test_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_project_contact_test_message(resource, google_cloud_essentialcontacts_v1_send_test_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}/contacts:sendTestMessage', options)
          command.request_representation = Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1SendTestMessageRequest::Representation
          command.request_object = google_cloud_essentialcontacts_v1_send_test_message_request_object
          command.response_representation = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::EssentialcontactsV1::GoogleProtobufEmpty
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
