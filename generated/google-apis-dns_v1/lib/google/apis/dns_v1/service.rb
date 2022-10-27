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
    module DnsV1
      # Cloud DNS API
      #
      # 
      #
      # @example
      #    require 'google/apis/dns_v1'
      #
      #    Dns = Google::Apis::DnsV1 # Alias the module
      #    service = Dns::DnsService.new
      #
      # @see https://cloud.google.com/dns/docs
      class DnsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://dns.googleapis.com/', '',
                client_name: 'google-apis-dns_v1',
                client_version: Google::Apis::DnsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Atomically updates the ResourceRecordSet collection.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [Google::Apis::DnsV1::Change] change_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Change] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Change]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_change(project, managed_zone, change_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/projects/{project}/managedZones/{managedZone}/changes', options)
          command.request_representation = Google::Apis::DnsV1::Change::Representation
          command.request_object = change_object
          command.response_representation = Google::Apis::DnsV1::Change::Representation
          command.response_class = Google::Apis::DnsV1::Change
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing Change.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] change_id
        #   The identifier of the requested change, from a previous
        #   ResourceRecordSetsChangeResponse.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Change] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Change]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_change(project, managed_zone, change_id, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/changes/{changeId}', options)
          command.response_representation = Google::Apis::DnsV1::Change::Representation
          command.response_class = Google::Apis::DnsV1::Change
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.params['changeId'] = change_id unless change_id.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates Changes to a ResourceRecordSet collection.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] sort_by
        #   Sorting criterion. The only supported value is change sequence.
        # @param [String] sort_order
        #   Sorting order direction: 'ascending' or 'descending'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ListChangesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ListChangesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_changes(project, managed_zone, max_results: nil, page_token: nil, sort_by: nil, sort_order: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/changes', options)
          command.response_representation = Google::Apis::DnsV1::ListChangesResponse::Representation
          command.response_class = Google::Apis::DnsV1::ListChangesResponse
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['sortBy'] = sort_by unless sort_by.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing DnsKey.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] dns_key_id
        #   The identifier of the requested DnsKey.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] digest_type
        #   An optional comma-separated list of digest types to compute and display for
        #   key signing keys. If omitted, the recommended digest type is computed and
        #   displayed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::DnsKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::DnsKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_dns_key(project, managed_zone, dns_key_id, client_operation_id: nil, digest_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}', options)
          command.response_representation = Google::Apis::DnsV1::DnsKey::Representation
          command.response_class = Google::Apis::DnsV1::DnsKey
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.params['dnsKeyId'] = dns_key_id unless dns_key_id.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['digestType'] = digest_type unless digest_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates DnsKeys to a ResourceRecordSet collection.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] digest_type
        #   An optional comma-separated list of digest types to compute and display for
        #   key signing keys. If omitted, the recommended digest type is computed and
        #   displayed.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::DnsKeysListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::DnsKeysListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_dns_keys(project, managed_zone, digest_type: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys', options)
          command.response_representation = Google::Apis::DnsV1::DnsKeysListResponse::Representation
          command.response_class = Google::Apis::DnsV1::DnsKeysListResponse
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['digestType'] = digest_type unless digest_type.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing Operation.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request.
        # @param [String] operation
        #   Identifies the operation addressed by this request (ID of the operation).
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_managed_zone_operation(project, managed_zone, operation, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/operations/{operation}', options)
          command.response_representation = Google::Apis::DnsV1::Operation::Representation
          command.response_class = Google::Apis::DnsV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates Operations for the given ManagedZone.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] sort_by
        #   Sorting criterion. The only supported values are START_TIME and ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ManagedZoneOperationsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ManagedZoneOperationsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_managed_zone_operations(project, managed_zone, max_results: nil, page_token: nil, sort_by: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/operations', options)
          command.response_representation = Google::Apis::DnsV1::ManagedZoneOperationsListResponse::Representation
          command.response_class = Google::Apis::DnsV1::ManagedZoneOperationsListResponse
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['sortBy'] = sort_by unless sort_by.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ManagedZone.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [Google::Apis::DnsV1::ManagedZone] managed_zone_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ManagedZone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ManagedZone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_managed_zone(project, managed_zone_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/projects/{project}/managedZones', options)
          command.request_representation = Google::Apis::DnsV1::ManagedZone::Representation
          command.request_object = managed_zone_object
          command.response_representation = Google::Apis::DnsV1::ManagedZone::Representation
          command.response_class = Google::Apis::DnsV1::ManagedZone
          command.params['project'] = project unless project.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a previously created ManagedZone.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_managed_zone(project, managed_zone, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'dns/v1/projects/{project}/managedZones/{managedZone}', options)
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing ManagedZone.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ManagedZone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ManagedZone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_managed_zone(project, managed_zone, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}', options)
          command.response_representation = Google::Apis::DnsV1::ManagedZone::Representation
          command.response_class = Google::Apis::DnsV1::ManagedZone
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DnsV1::GoogleIamV1GetIamPolicyRequest] google_iam_v1_get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_managed_zone_iam_policy(resource, google_iam_v1_get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::DnsV1::GoogleIamV1GetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_get_iam_policy_request_object
          command.response_representation = Google::Apis::DnsV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DnsV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates ManagedZones that have been created but not yet deleted.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] dns_name
        #   Restricts the list to return only zones with this domain name.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ListManagedZonesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ListManagedZonesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_managed_zones(project, dns_name: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones', options)
          command.response_representation = Google::Apis::DnsV1::ListManagedZonesResponse::Representation
          command.response_class = Google::Apis::DnsV1::ListManagedZonesResponse
          command.params['project'] = project unless project.nil?
          command.query['dnsName'] = dns_name unless dns_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies a partial update to an existing ManagedZone.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [Google::Apis::DnsV1::ManagedZone] managed_zone_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_managed_zone(project, managed_zone, managed_zone_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'dns/v1/projects/{project}/managedZones/{managedZone}', options)
          command.request_representation = Google::Apis::DnsV1::ManagedZone::Representation
          command.request_object = managed_zone_object
          command.response_representation = Google::Apis::DnsV1::Operation::Representation
          command.response_class = Google::Apis::DnsV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DnsV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_managed_zone_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DnsV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DnsV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DnsV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this returns an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DnsV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_managed_zone_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::DnsV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::DnsV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::DnsV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing ManagedZone.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [Google::Apis::DnsV1::ManagedZone] managed_zone_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_managed_zone(project, managed_zone, managed_zone_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'dns/v1/projects/{project}/managedZones/{managedZone}', options)
          command.request_representation = Google::Apis::DnsV1::ManagedZone::Representation
          command.request_object = managed_zone_object
          command.response_representation = Google::Apis::DnsV1::Operation::Representation
          command.response_class = Google::Apis::DnsV1::Operation
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [Google::Apis::DnsV1::Policy] policy_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_policy(project, policy_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/projects/{project}/policies', options)
          command.request_representation = Google::Apis::DnsV1::Policy::Representation
          command.request_object = policy_object
          command.response_representation = Google::Apis::DnsV1::Policy::Representation
          command.response_class = Google::Apis::DnsV1::Policy
          command.params['project'] = project unless project.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a previously created Policy. Fails if the policy is still being
        # referenced by a network.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] policy
        #   User given friendly name of the policy addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_policy(project, policy, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'dns/v1/projects/{project}/policies/{policy}', options)
          command.params['project'] = project unless project.nil?
          command.params['policy'] = policy unless policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] policy
        #   User given friendly name of the policy addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_policy(project, policy, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/policies/{policy}', options)
          command.response_representation = Google::Apis::DnsV1::Policy::Representation
          command.response_class = Google::Apis::DnsV1::Policy
          command.params['project'] = project unless project.nil?
          command.params['policy'] = policy unless policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates all Policies associated with a project.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::PoliciesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::PoliciesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_policies(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/policies', options)
          command.response_representation = Google::Apis::DnsV1::PoliciesListResponse::Representation
          command.response_class = Google::Apis::DnsV1::PoliciesListResponse
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies a partial update to an existing Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] policy
        #   User given friendly name of the policy addressed by this request.
        # @param [Google::Apis::DnsV1::Policy] policy_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::PoliciesPatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::PoliciesPatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_policy(project, policy, policy_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'dns/v1/projects/{project}/policies/{policy}', options)
          command.request_representation = Google::Apis::DnsV1::Policy::Representation
          command.request_object = policy_object
          command.response_representation = Google::Apis::DnsV1::PoliciesPatchResponse::Representation
          command.response_class = Google::Apis::DnsV1::PoliciesPatchResponse
          command.params['project'] = project unless project.nil?
          command.params['policy'] = policy unless policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] policy
        #   User given friendly name of the policy addressed by this request.
        # @param [Google::Apis::DnsV1::Policy] policy_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::PoliciesUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::PoliciesUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_policy(project, policy, policy_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'dns/v1/projects/{project}/policies/{policy}', options)
          command.request_representation = Google::Apis::DnsV1::Policy::Representation
          command.request_object = policy_object
          command.response_representation = Google::Apis::DnsV1::PoliciesUpdateResponse::Representation
          command.response_class = Google::Apis::DnsV1::PoliciesUpdateResponse
          command.params['project'] = project unless project.nil?
          command.params['policy'] = policy unless policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing Project.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(project, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}', options)
          command.response_representation = Google::Apis::DnsV1::Project::Representation
          command.response_class = Google::Apis::DnsV1::Project
          command.params['project'] = project unless project.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ResourceRecordSet.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [Google::Apis::DnsV1::ResourceRecordSet] resource_record_set_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResourceRecordSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResourceRecordSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_resource_record_set(project, managed_zone, resource_record_set_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/projects/{project}/managedZones/{managedZone}/rrsets', options)
          command.request_representation = Google::Apis::DnsV1::ResourceRecordSet::Representation
          command.request_object = resource_record_set_object
          command.response_representation = Google::Apis::DnsV1::ResourceRecordSet::Representation
          command.response_class = Google::Apis::DnsV1::ResourceRecordSet
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a previously created ResourceRecordSet.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] name
        #   Fully qualified domain name.
        # @param [String] type
        #   RRSet type.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResourceRecordSetsDeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResourceRecordSetsDeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_resource_record_set(project, managed_zone, name, type, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}', options)
          command.response_representation = Google::Apis::DnsV1::ResourceRecordSetsDeleteResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResourceRecordSetsDeleteResponse
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.params['name'] = name unless name.nil?
          command.params['type'] = type unless type.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing ResourceRecordSet.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] name
        #   Fully qualified domain name.
        # @param [String] type
        #   RRSet type.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResourceRecordSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResourceRecordSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_resource_record_set(project, managed_zone, name, type, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}', options)
          command.response_representation = Google::Apis::DnsV1::ResourceRecordSet::Representation
          command.response_class = Google::Apis::DnsV1::ResourceRecordSet
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.params['name'] = name unless name.nil?
          command.params['type'] = type unless type.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates ResourceRecordSets that you have created but not yet deleted.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] name
        #   Restricts the list to return only records with this fully qualified domain
        #   name.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] type
        #   Restricts the list to return only records of this type. If present, the "name"
        #   parameter must also be present.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ListResourceRecordSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ListResourceRecordSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_resource_record_sets(project, managed_zone, max_results: nil, name: nil, page_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/managedZones/{managedZone}/rrsets', options)
          command.response_representation = Google::Apis::DnsV1::ListResourceRecordSetsResponse::Representation
          command.response_class = Google::Apis::DnsV1::ListResourceRecordSetsResponse
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies a partial update to an existing ResourceRecordSet.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] managed_zone
        #   Identifies the managed zone addressed by this request. Can be the managed zone
        #   name or ID.
        # @param [String] name
        #   Fully qualified domain name.
        # @param [String] type
        #   RRSet type.
        # @param [Google::Apis::DnsV1::ResourceRecordSet] resource_record_set_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResourceRecordSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResourceRecordSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_resource_record_set(project, managed_zone, name, type, resource_record_set_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}', options)
          command.request_representation = Google::Apis::DnsV1::ResourceRecordSet::Representation
          command.request_object = resource_record_set_object
          command.response_representation = Google::Apis::DnsV1::ResourceRecordSet::Representation
          command.response_class = Google::Apis::DnsV1::ResourceRecordSet
          command.params['project'] = project unless project.nil?
          command.params['managedZone'] = managed_zone unless managed_zone.nil?
          command.params['name'] = name unless name.nil?
          command.params['type'] = type unless type.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Response Policy
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [Google::Apis::DnsV1::ResponsePolicy] response_policy_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_response_policy(project, response_policy_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/projects/{project}/responsePolicies', options)
          command.request_representation = Google::Apis::DnsV1::ResponsePolicy::Representation
          command.request_object = response_policy_object
          command.response_representation = Google::Apis::DnsV1::ResponsePolicy::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicy
          command.params['project'] = project unless project.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a previously created Response Policy. Fails if the response policy is
        # non-empty or still being referenced by a network.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_response_policy(project, response_policy, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}', options)
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing Response Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_response_policy(project, response_policy, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}', options)
          command.response_representation = Google::Apis::DnsV1::ResponsePolicy::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicy
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates all Response Policies associated with a project.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePoliciesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePoliciesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_response_policies(project, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/responsePolicies', options)
          command.response_representation = Google::Apis::DnsV1::ResponsePoliciesListResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePoliciesListResponse
          command.params['project'] = project unless project.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies a partial update to an existing Response Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the response policy addressed by this request.
        # @param [Google::Apis::DnsV1::ResponsePolicy] response_policy_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePoliciesPatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePoliciesPatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_response_policy(project, response_policy, response_policy_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}', options)
          command.request_representation = Google::Apis::DnsV1::ResponsePolicy::Representation
          command.request_object = response_policy_object
          command.response_representation = Google::Apis::DnsV1::ResponsePoliciesPatchResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePoliciesPatchResponse
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Response Policy.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy addressed by this request.
        # @param [Google::Apis::DnsV1::ResponsePolicy] response_policy_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePoliciesUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePoliciesUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_response_policy(project, response_policy, response_policy_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}', options)
          command.request_representation = Google::Apis::DnsV1::ResponsePolicy::Representation
          command.request_object = response_policy_object
          command.response_representation = Google::Apis::DnsV1::ResponsePoliciesUpdateResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePoliciesUpdateResponse
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Response Policy Rule.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy containing the Response Policy Rule.
        # @param [Google::Apis::DnsV1::ResponsePolicyRule] response_policy_rule_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicyRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicyRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_response_policy_rule(project, response_policy, response_policy_rule_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules', options)
          command.request_representation = Google::Apis::DnsV1::ResponsePolicyRule::Representation
          command.request_object = response_policy_rule_object
          command.response_representation = Google::Apis::DnsV1::ResponsePolicyRule::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicyRule
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a previously created Response Policy Rule.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy containing the Response Policy Rule.
        # @param [String] response_policy_rule
        #   User assigned name of the Response Policy Rule addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_response_policy_rule(project, response_policy, response_policy_rule, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}', options)
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.params['responsePolicyRule'] = response_policy_rule unless response_policy_rule.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the representation of an existing Response Policy Rule.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy containing the Response Policy Rule.
        # @param [String] response_policy_rule
        #   User assigned name of the Response Policy Rule addressed by this request.
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicyRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicyRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_response_policy_rule(project, response_policy, response_policy_rule, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}', options)
          command.response_representation = Google::Apis::DnsV1::ResponsePolicyRule::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicyRule
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.params['responsePolicyRule'] = response_policy_rule unless response_policy_rule.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enumerates all Response Policy Rules associated with a project.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy to list.
        # @param [Fixnum] max_results
        #   Optional. Maximum number of results to be returned. If unspecified, the server
        #   decides how many results to return.
        # @param [String] page_token
        #   Optional. A tag returned by a previous list request that was truncated. Use
        #   this parameter to continue a previous list request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicyRulesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicyRulesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_response_policy_rules(project, response_policy, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules', options)
          command.response_representation = Google::Apis::DnsV1::ResponsePolicyRulesListResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicyRulesListResponse
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies a partial update to an existing Response Policy Rule.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy containing the Response Policy Rule.
        # @param [String] response_policy_rule
        #   User assigned name of the Response Policy Rule addressed by this request.
        # @param [Google::Apis::DnsV1::ResponsePolicyRule] response_policy_rule_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicyRulesPatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicyRulesPatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_response_policy_rule(project, response_policy, response_policy_rule, response_policy_rule_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}', options)
          command.request_representation = Google::Apis::DnsV1::ResponsePolicyRule::Representation
          command.request_object = response_policy_rule_object
          command.response_representation = Google::Apis::DnsV1::ResponsePolicyRulesPatchResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicyRulesPatchResponse
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.params['responsePolicyRule'] = response_policy_rule unless response_policy_rule.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Response Policy Rule.
        # @param [String] project
        #   Identifies the project addressed by this request.
        # @param [String] response_policy
        #   User assigned name of the Response Policy containing the Response Policy Rule.
        # @param [String] response_policy_rule
        #   User assigned name of the Response Policy Rule addressed by this request.
        # @param [Google::Apis::DnsV1::ResponsePolicyRule] response_policy_rule_object
        # @param [String] client_operation_id
        #   For mutating operation requests only. An optional identifier specified by the
        #   client. Must be unique for operation resources in the Operations collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DnsV1::ResponsePolicyRulesUpdateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DnsV1::ResponsePolicyRulesUpdateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_response_policy_rule(project, response_policy, response_policy_rule, response_policy_rule_object = nil, client_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}', options)
          command.request_representation = Google::Apis::DnsV1::ResponsePolicyRule::Representation
          command.request_object = response_policy_rule_object
          command.response_representation = Google::Apis::DnsV1::ResponsePolicyRulesUpdateResponse::Representation
          command.response_class = Google::Apis::DnsV1::ResponsePolicyRulesUpdateResponse
          command.params['project'] = project unless project.nil?
          command.params['responsePolicy'] = response_policy unless response_policy.nil?
          command.params['responsePolicyRule'] = response_policy_rule unless response_policy_rule.nil?
          command.query['clientOperationId'] = client_operation_id unless client_operation_id.nil?
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
