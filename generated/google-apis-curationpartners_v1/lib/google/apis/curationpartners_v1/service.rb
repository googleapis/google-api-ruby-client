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
    module CurationpartnersV1
      # Curation Partners API
      #
      # Curation partners API is an externally available HTTP API for curators to
      #  programmatically manage their data segments and curated packages used by ad
      #  agencies.
      #
      # @example
      #    require 'google/apis/curationpartners_v1'
      #
      #    Curationpartners = Google::Apis::CurationpartnersV1 # Alias the module
      #    service = Curationpartners::CurationPartnersService.new
      #
      # @see https://developers.google.com/authorized-buyers/curation/apis/guides/curationpartners/overview
      class CurationPartnersService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://curationpartners.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-curationpartners_v1',
                client_version: Google::Apis::CurationpartnersV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Activates an existing curated package.
        # @param [String] name
        #   Required. The name of the curated package to activate. Format: `curators/`
        #   accountId`/curatedPackages/`curatedPackageId``
        # @param [Google::Apis::CurationpartnersV1::ActivateCuratedPackageRequest] activate_curated_package_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::CuratedPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::CuratedPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_curated_package(name, activate_curated_package_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:activate', options)
          command.request_representation = Google::Apis::CurationpartnersV1::ActivateCuratedPackageRequest::Representation
          command.request_object = activate_curated_package_request_object
          command.response_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.response_class = Google::Apis::CurationpartnersV1::CuratedPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new curated package.
        # @param [String] parent
        #   Required. The parent curator account where this curated package will be
        #   created. Format: `curators/`accountId``
        # @param [Google::Apis::CurationpartnersV1::CuratedPackage] curated_package_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::CuratedPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::CuratedPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_curator_curated_package(parent, curated_package_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/curatedPackages', options)
          command.request_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.request_object = curated_package_object
          command.response_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.response_class = Google::Apis::CurationpartnersV1::CuratedPackage
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deactivates an existing curated package.
        # @param [String] name
        #   Required. The name of the curated package to deactivate. Format: `curators/`
        #   accountId`/curatedPackages/`curatedPackageId``
        # @param [Google::Apis::CurationpartnersV1::DeactivateCuratedPackageRequest] deactivate_curated_package_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::CuratedPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::CuratedPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deactivate_curated_package(name, deactivate_curated_package_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deactivate', options)
          command.request_representation = Google::Apis::CurationpartnersV1::DeactivateCuratedPackageRequest::Representation
          command.request_object = deactivate_curated_package_request_object
          command.response_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.response_class = Google::Apis::CurationpartnersV1::CuratedPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a curated package given its resource name.
        # @param [String] name
        #   Required. The name of the curated package to retrieve. Format: `curators/`
        #   accountId`/curatedPackages/`curatedPackageId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::CuratedPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::CuratedPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_curator_curated_package(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.response_class = Google::Apis::CurationpartnersV1::CuratedPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists curated packages owned by the specified curator.
        # @param [String] parent
        #   Required. The parent curator account which owns this collection of curated
        #   packages. Format: `curators/`accountId``
        # @param [String] filter
        #   Optional. Optional query string using the [Cloud API list filtering syntax](/
        #   authorized-buyers/apis/guides/list-filters). Supported columns for filtering
        #   are: * displayName * createTime * updateTime * state * feeCpm.currencyCode *
        #   feeCpm.units * feeCpm.nanos * floorPriceCpm.currencyCode * floorPriceCpm.units
        #   * floorPriceCpm.nanos
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server may return fewer results than
        #   requested. Max allowed page size is 500. If unspecified, the server will
        #   default to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListCuratedPackages` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::ListCuratedPackagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::ListCuratedPackagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_curator_curated_packages(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/curatedPackages', options)
          command.response_representation = Google::Apis::CurationpartnersV1::ListCuratedPackagesResponse::Representation
          command.response_class = Google::Apis::CurationpartnersV1::ListCuratedPackagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing curated package.
        # @param [String] name
        #   Identifier. The unique resource name for the curated package. Format: `
        #   curators/`accountId`/curatedPackages/`curatedPackageId``
        # @param [Google::Apis::CurationpartnersV1::CuratedPackage] curated_package_object
        # @param [String] update_mask
        #   Optional. List of fields to be updated. If empty or unspecified, the service
        #   will update all fields populated in the update request excluding the output
        #   only fields and primitive fields with default value. Note that explicit field
        #   mask is required in order to reset a primitive field back to its default value,
        #   for example, false for boolean fields, 0 for integer fields. A special field
        #   mask consisting of a single path "*" can be used to indicate full replacement (
        #   the equivalent of PUT method), updatable fields unset or unspecified in the
        #   input will be cleared or set to default value. Output only fields will be
        #   ignored regardless of the value of updateMask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::CuratedPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::CuratedPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_curator_curated_package(name, curated_package_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.request_object = curated_package_object
          command.response_representation = Google::Apis::CurationpartnersV1::CuratedPackage::Representation
          command.response_class = Google::Apis::CurationpartnersV1::CuratedPackage
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates a data segment.
        # @param [String] name
        #   Required. Name of data segment to activate. Format: `curators/`accountId`/
        #   dataSegments/`curatorDataSegmentId``
        # @param [Google::Apis::CurationpartnersV1::ActivateDataSegmentRequest] activate_data_segment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::DataSegment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::DataSegment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_data_segment(name, activate_data_segment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:activate', options)
          command.request_representation = Google::Apis::CurationpartnersV1::ActivateDataSegmentRequest::Representation
          command.request_object = activate_data_segment_request_object
          command.response_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.response_class = Google::Apis::CurationpartnersV1::DataSegment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a data segment owned by the listed curator. The data segment will be
        # created in the `ACTIVE` state, meaning it will be immediately available for
        # buyers to use in preferred deals, private auction deals, and auction packages.
        # @param [String] parent
        #   Required. The parent resource where this data segment will be created. Format:
        #   `curators/`accountId``
        # @param [Google::Apis::CurationpartnersV1::DataSegment] data_segment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::DataSegment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::DataSegment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_curator_data_segment(parent, data_segment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dataSegments', options)
          command.request_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.request_object = data_segment_object
          command.response_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.response_class = Google::Apis::CurationpartnersV1::DataSegment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deactivates a data segment.
        # @param [String] name
        #   Required. Name of data segment to deactivate. Format: `curators/`accountId`/
        #   dataSegments/`curatorDataSegmentId``
        # @param [Google::Apis::CurationpartnersV1::DeactivateDataSegmentRequest] deactivate_data_segment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::DataSegment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::DataSegment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deactivate_data_segment(name, deactivate_data_segment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deactivate', options)
          command.request_representation = Google::Apis::CurationpartnersV1::DeactivateDataSegmentRequest::Representation
          command.request_object = deactivate_data_segment_request_object
          command.response_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.response_class = Google::Apis::CurationpartnersV1::DataSegment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a data segment given its name.
        # @param [String] name
        #   Required. Name of data segment to get. Format: `curators/`accountId`/
        #   dataSegments/`curatorDataSegmentId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::DataSegment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::DataSegment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_curator_data_segment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.response_class = Google::Apis::CurationpartnersV1::DataSegment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the data segments owned by a curator.
        # @param [String] parent
        #   Required. Name of the parent curator that can access the data segment. Format:
        #   `curators/`accountId``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server may return fewer results than
        #   requested. Max allowed page size is 500. If unspecified, the server will
        #   default to 500.
        # @param [String] page_token
        #   Optional. The page token as returned. ListDataSegmentsResponse.nextPageToken
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::ListDataSegmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::ListDataSegmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_curator_data_segments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataSegments', options)
          command.response_representation = Google::Apis::CurationpartnersV1::ListDataSegmentsResponse::Representation
          command.response_class = Google::Apis::CurationpartnersV1::ListDataSegmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a data segment.
        # @param [String] name
        #   Immutable. Identifier. The unique identifier for the data segment. Account ID
        #   corresponds to the account ID that created the segment. Format: `curators/`
        #   curatorAccountId`/dataSegments/`curatorDataSegmentId``
        # @param [Google::Apis::CurationpartnersV1::DataSegment] data_segment_object
        # @param [String] update_mask
        #   Optional. List of fields to be updated. If empty or unspecified, the service
        #   will update all fields populated in the update request excluding the output
        #   only fields and primitive fields with default value. Note that explicit field
        #   mask is required in order to reset a primitive field back to its default value,
        #   for example, false for boolean fields, 0 for integer fields. A special field
        #   mask consisting of a single path "*" can be used to indicate full replacement(
        #   the equivalent of PUT method), updatable fields unset or unspecified in the
        #   input will be cleared or set to default value. Output only fields will be
        #   ignored regardless of the value of updateMask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::DataSegment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::DataSegment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_curator_data_segment(name, data_segment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.request_object = data_segment_object
          command.response_representation = Google::Apis::CurationpartnersV1::DataSegment::Representation
          command.response_class = Google::Apis::CurationpartnersV1::DataSegment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a `Report` object.
        # @param [String] parent
        #   Required. The parent resource where this `Report` will be created. Format: `
        #   curators/`account_id``
        # @param [Google::Apis::CurationpartnersV1::Report] report_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_curator_report(parent, report_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reports', options)
          command.request_representation = Google::Apis::CurationpartnersV1::Report::Representation
          command.request_object = report_object
          command.response_representation = Google::Apis::CurationpartnersV1::Report::Representation
          command.response_class = Google::Apis::CurationpartnersV1::Report
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Report` object.
        # @param [String] name
        #   Required. Resource name of the report to delete. Format: `curators/`account_id`
        #   /reports/`report_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_curator_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CurationpartnersV1::Empty::Representation
          command.response_class = Google::Apis::CurationpartnersV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Report` object.
        # @param [String] name
        #   Required. The resource name of the report. Format: `curators/`account_id`/
        #   reports/`report_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_curator_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CurationpartnersV1::Report::Representation
          command.response_class = Google::Apis::CurationpartnersV1::Report
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `Report` objects.
        # @param [String] parent
        #   Required. The parent, which owns this collection of reports. Format: `curators/
        #   `account_id``
        # @param [String] filter
        #   Optional. Expression to filter the response. See syntax details at https://
        #   developers.google.com/ad-manager/api/beta/filters
        # @param [String] order_by
        #   Optional. Expression to specify sorting order. See syntax details at https://
        #   developers.google.com/ad-manager/api/beta/filters#order
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `Reports` to return. The service may return
        #   fewer than this value. If unspecified, at most 50 `Reports` will be returned.
        #   The maximum value is 1000; values greater than 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListReports` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListReports` must match the call that provided the page token.
        # @param [Fixnum] skip
        #   Optional. Number of individual resources to skip while paginating.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_curator_reports(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, skip: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reports', options)
          command.response_representation = Google::Apis::CurationpartnersV1::ListReportsResponse::Representation
          command.response_class = Google::Apis::CurationpartnersV1::ListReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['skip'] = skip unless skip.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Report` object.
        # @param [String] name
        #   Identifier. The resource name of the report. Report resource name have the
        #   form: `curators/`account_id`/reports/`report_id``
        # @param [Google::Apis::CurationpartnersV1::Report] report_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_curator_report(name, report_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CurationpartnersV1::Report::Representation
          command.request_object = report_object
          command.response_representation = Google::Apis::CurationpartnersV1::Report::Representation
          command.response_class = Google::Apis::CurationpartnersV1::Report
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates the execution of an existing report asynchronously. Users can get
        # the report by polling this operation using `OperationsService.GetOperation`.
        # Poll every 5 seconds initially, with an exponential backoff. Once a report is
        # complete, the operation will contain a `RunReportResponse` in its response
        # field containing a report_result that can be passed to the `
        # FetchReportResultRows` method to retrieve the report data.
        # @param [String] name
        #   Required. The report to run. Format: `curators/`account_id`/reports/`report_id`
        #   `
        # @param [Google::Apis::CurationpartnersV1::RunReportRequest] run_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_report(name, run_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::CurationpartnersV1::RunReportRequest::Representation
          command.request_object = run_report_request_object
          command.response_representation = Google::Apis::CurationpartnersV1::Operation::Representation
          command.response_class = Google::Apis::CurationpartnersV1::Operation
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
        # @yieldparam result [Google::Apis::CurationpartnersV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_curator_report_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CurationpartnersV1::Operation::Representation
          command.response_class = Google::Apis::CurationpartnersV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the result rows from a completed report. The caller must have
        # previously called `RunReport` and waited for that operation to complete. The
        # rows will be returned according to the order specified by the `sorts` member
        # of the report definition.
        # @param [String] name
        #   The report result being fetched. Format: `curators/`account_id`/reports/`
        #   report_id`/results/`report_result_id``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of rows to return. The service may return fewer
        #   than this value. If unspecified, at most 1,000 rows will be returned. The
        #   maximum value is 10,000; values greater than 10,000 will be reduced to 10,000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `FetchReportResultRows` call.
        #   Provide this to retrieve the second and subsequent batches of rows.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::FetchReportResultRowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::FetchReportResultRowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_curator_report_result_rows(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchRows', options)
          command.response_representation = Google::Apis::CurationpartnersV1::FetchReportResultRowsResponse::Representation
          command.response_class = Google::Apis::CurationpartnersV1::FetchReportResultRowsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all media planner accounts that the caller has access to. For curators,
        # this will return all media planners that have accepted curator terms. For
        # other accounts, attempting to list media planners will return an error.
        # @param [String] filter
        #   Optional query string using the [Cloud API list filtering syntax](/authorized-
        #   buyers/apis/guides/list-filters). Supported columns for filtering are: * `name`
        #   * `displayName` * `ancestorNames`
        # @param [Fixnum] page_size
        #   The maximum number of media planners to return. If unspecified, at most 100
        #   media planners will be returned. The maximum value is 500; values above 500
        #   will be coerced to 500.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.This
        #   value is received from a previous `ListMediaPlanners` call in
        #   ListMediaPlannersResponse.nextPageToken.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CurationpartnersV1::ListMediaPlannersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CurationpartnersV1::ListMediaPlannersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_media_planners(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/mediaPlanners', options)
          command.response_representation = Google::Apis::CurationpartnersV1::ListMediaPlannersResponse::Representation
          command.response_class = Google::Apis::CurationpartnersV1::ListMediaPlannersResponse
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
