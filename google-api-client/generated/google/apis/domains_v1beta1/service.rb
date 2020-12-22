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
    module DomainsV1beta1
      # Cloud Domains API
      #
      # Enables management and configuration of domain names.
      #
      # @example
      #    require 'google/apis/domains_v1beta1'
      #
      #    Domains = Google::Apis::DomainsV1beta1 # Alias the module
      #    service = Domains::CloudDomainsService.new
      #
      # @see https://cloud.google.com/domains/
      class CloudDomainsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://domains.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::DomainsV1beta1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DomainsV1beta1::Location::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
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
        # @yieldparam result [Google::Apis::DomainsV1beta1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::DomainsV1beta1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::DomainsV1beta1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
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
        # @yieldparam result [Google::Apis::DomainsV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DomainsV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DomainsV1beta1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Registration`'s contact settings. Some changes require confirmation
        # by the domain's registrant contact .
        # @param [String] registration
        #   Required. The name of the `Registration` whose contact settings are being
        #   updated, in the format `projects/*/locations/*/registrations/*`.
        # @param [Google::Apis::DomainsV1beta1::ConfigureContactSettingsRequest] configure_contact_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configure_registration_contact_settings(registration, configure_contact_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+registration}:configureContactSettings', options)
          command.request_representation = Google::Apis::DomainsV1beta1::ConfigureContactSettingsRequest::Representation
          command.request_object = configure_contact_settings_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['registration'] = registration unless registration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Registration`'s DNS settings.
        # @param [String] registration
        #   Required. The name of the `Registration` whose DNS settings are being updated,
        #   in the format `projects/*/locations/*/registrations/*`.
        # @param [Google::Apis::DomainsV1beta1::ConfigureDnsSettingsRequest] configure_dns_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configure_registration_dns_settings(registration, configure_dns_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+registration}:configureDnsSettings', options)
          command.request_representation = Google::Apis::DomainsV1beta1::ConfigureDnsSettingsRequest::Representation
          command.request_object = configure_dns_settings_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['registration'] = registration unless registration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Registration`'s management settings.
        # @param [String] registration
        #   Required. The name of the `Registration` whose management settings are being
        #   updated, in the format `projects/*/locations/*/registrations/*`.
        # @param [Google::Apis::DomainsV1beta1::ConfigureManagementSettingsRequest] configure_management_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configure_registration_management_settings(registration, configure_management_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+registration}:configureManagementSettings', options)
          command.request_representation = Google::Apis::DomainsV1beta1::ConfigureManagementSettingsRequest::Representation
          command.request_object = configure_management_settings_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['registration'] = registration unless registration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Registration` resource. This method only works on resources in one
        # of the following states: * `state` is `EXPORTED` with `expire_time` in the
        # past * `state` is `REGISTRATION_FAILED`
        # @param [String] name
        #   Required. The name of the `Registration` to delete, in the format `projects/*/
        #   locations/*/registrations/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_registration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a `Registration` that you no longer want to use with Cloud Domains.
        # You can continue to use the domain in [Google Domains](https://domains.google/)
        # until it expires. If the export is successful: * The resource's `state`
        # becomes `EXPORTED`, meaning that it is no longer managed by Cloud Domains *
        # Because individual users can own domains in Google Domains, the calling user
        # becomes the domain's sole owner. Permissions for the domain are subsequently
        # managed in Google Domains. * Without further action, the domain does not renew
        # automatically. The new owner can set up billing in Google Domains to renew the
        # domain if needed.
        # @param [String] name
        #   Required. The name of the `Registration` to export, in the format `projects/*/
        #   locations/*/registrations/*`.
        # @param [Google::Apis::DomainsV1beta1::ExportRegistrationRequest] export_registration_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_registration(name, export_registration_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:export', options)
          command.request_representation = Google::Apis::DomainsV1beta1::ExportRegistrationRequest::Representation
          command.request_object = export_registration_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a `Registration` resource.
        # @param [String] name
        #   Required. The name of the `Registration` to get, in the format `projects/*/
        #   locations/*/registrations/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Registration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Registration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_registration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DomainsV1beta1::Registration::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Registration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned. Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected. Requests for
        #   policies with any conditional bindings must specify version 3. Policies
        #   without any conditional bindings may specify any valid value or leave the
        #   field unset. To learn which resources support conditions in their IAM policies,
        #   see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        #   resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_registration_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DomainsV1beta1::Policy::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `Registration` resources in a project.
        # @param [String] parent
        #   Required. The project and location from which to list `Registration`s,
        #   specified in the format `projects/*/locations/*`.
        # @param [String] filter
        #   Filter expression to restrict the `Registration`s returned. The expression
        #   must specify the field name, a comparison operator, and the value that you
        #   want to use for filtering. The value must be a string, a number, a boolean, or
        #   an enum value. The comparison operator should be one of =, !=, >, <, >=, <=,
        #   or : for prefix or wildcard matches. For example, to filter to a specific
        #   domain name, use an expression like `domainName="example.com"`. You can also
        #   check for the existence of a field; for example, to find domains using custom
        #   DNS settings, use an expression like `dnsSettings.customDns:*`. You can also
        #   create compound filters by combining expressions with the `AND` and `OR`
        #   operators. For example, to find domains that are suspended or have specific
        #   issues flagged, use an expression like `(state=SUSPENDED) OR (issue:*)`.
        # @param [Fixnum] page_size
        #   Maximum number of results to return.
        # @param [String] page_token
        #   When set to the `next_page_token` from a prior response, provides the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::ListRegistrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::ListRegistrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_registrations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/registrations', options)
          command.response_representation = Google::Apis::DomainsV1beta1::ListRegistrationsResponse::Representation
          command.response_class = Google::Apis::DomainsV1beta1::ListRegistrationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates select fields of a `Registration` resource, notably `labels`. To
        # update other fields, use the appropriate custom update method: * To update
        # management settings, see `ConfigureManagementSettings` * To update DNS
        # configuration, see `ConfigureDnsSettings` * To update contact information, see
        # `ConfigureContactSettings`
        # @param [String] name
        #   Output only. Name of the `Registration` resource, in the format `projects/*/
        #   locations/*/registrations/`.
        # @param [Google::Apis::DomainsV1beta1::Registration] registration_object
        # @param [String] update_mask
        #   Required. The field mask describing which fields to update as a comma-
        #   separated list. For example, if only the labels are being updated, the `
        #   update_mask` would be `"labels"`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_registration(name, registration_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DomainsV1beta1::Registration::Representation
          command.request_object = registration_object
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a new domain name and creates a corresponding `Registration`
        # resource. Call `RetrieveRegisterParameters` first to check availability of the
        # domain name and determine parameters like price that are needed to build a
        # call to this method. A successful call creates a `Registration` resource in
        # state `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2 minutes,
        # indicating that the domain was successfully registered. If the resource ends
        # up in state `REGISTRATION_FAILED`, it indicates that the domain was not
        # registered successfully, and you can safely delete the resource and retry
        # registration.
        # @param [String] parent
        #   Required. The parent resource of the `Registration`. Must be in the format `
        #   projects/*/locations/*`.
        # @param [Google::Apis::DomainsV1beta1::RegisterDomainRequest] register_domain_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def register_registration_domain(parent, register_domain_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/registrations:register', options)
          command.request_representation = Google::Apis::DomainsV1beta1::RegisterDomainRequest::Representation
          command.request_object = register_domain_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::Operation::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets the authorization code of the `Registration` to a new random string.
        # You can call this method only after 60 days have elapsed since the initial
        # domain registration.
        # @param [String] registration
        #   Required. The name of the `Registration` whose authorization code is being
        #   reset, in the format `projects/*/locations/*/registrations/*`.
        # @param [Google::Apis::DomainsV1beta1::ResetAuthorizationCodeRequest] reset_authorization_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::AuthorizationCode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::AuthorizationCode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_registration_authorization_code(registration, reset_authorization_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+registration}:resetAuthorizationCode', options)
          command.request_representation = Google::Apis::DomainsV1beta1::ResetAuthorizationCodeRequest::Representation
          command.request_object = reset_authorization_code_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::AuthorizationCode::Representation
          command.response_class = Google::Apis::DomainsV1beta1::AuthorizationCode
          command.params['registration'] = registration unless registration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the authorization code of the `Registration` for the purpose of
        # transferring the domain to another registrar. You can call this method only
        # after 60 days have elapsed since the initial domain registration.
        # @param [String] registration
        #   Required. The name of the `Registration` whose authorization code is being
        #   retrieved, in the format `projects/*/locations/*/registrations/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::AuthorizationCode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::AuthorizationCode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_registration_authorization_code(registration, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+registration}:retrieveAuthorizationCode', options)
          command.response_representation = Google::Apis::DomainsV1beta1::AuthorizationCode::Representation
          command.response_class = Google::Apis::DomainsV1beta1::AuthorizationCode
          command.params['registration'] = registration unless registration.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets parameters needed to register a new domain name, including price and up-
        # to-date availability. Use the returned values to call `RegisterDomain`.
        # @param [String] location
        #   Required. The location. Must be in the format `projects/*/locations/*`.
        # @param [String] domain_name
        #   Required. The domain name. Unicode domain names must be expressed in Punycode
        #   format.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::RetrieveRegisterParametersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::RetrieveRegisterParametersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_registration_register_parameters(location, domain_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+location}/registrations:retrieveRegisterParameters', options)
          command.response_representation = Google::Apis::DomainsV1beta1::RetrieveRegisterParametersResponse::Representation
          command.response_class = Google::Apis::DomainsV1beta1::RetrieveRegisterParametersResponse
          command.params['location'] = location unless location.nil?
          command.query['domainName'] = domain_name unless domain_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for available domain names similar to the provided query.
        # Availability results from this method are approximate; call `
        # RetrieveRegisterParameters` on a domain before registering to confirm
        # availability.
        # @param [String] location
        #   Required. The location. Must be in the format `projects/*/locations/*`.
        # @param [String] query
        #   Required. String used to search for available domain names.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::SearchDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::SearchDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_registration_domains(location, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+location}/registrations:searchDomains', options)
          command.response_representation = Google::Apis::DomainsV1beta1::SearchDomainsResponse::Representation
          command.response_class = Google::Apis::DomainsV1beta1::SearchDomainsResponse
          command.params['location'] = location unless location.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DomainsV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_registration_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DomainsV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::Policy::Representation
          command.response_class = Google::Apis::DomainsV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::DomainsV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DomainsV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DomainsV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_registration_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DomainsV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::DomainsV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DomainsV1beta1::TestIamPermissionsResponse
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
