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
    module HealthcareV1
      # Cloud Healthcare API
      #
      # Manage, store, and access healthcare data in Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/healthcare_v1'
      #
      #    Healthcare = Google::Apis::HealthcareV1 # Alias the module
      #    service = Healthcare::CloudHealthcareService.new
      #
      # @see https://cloud.google.com/healthcare
      class CloudHealthcareService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://healthcare.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::HealthcareV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Location::Representation
          command.response_class = Google::Apis::HealthcareV1::Location
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
        # @yieldparam result [Google::Apis::HealthcareV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::HealthcareV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new health dataset. Results are returned through the Operation
        # interface which returns either an `Operation.response` which contains a
        # Dataset or `Operation.error`. The metadata field type is OperationMetadata.
        # @param [String] parent
        #   The name of the project where the server creates the dataset. For example, `
        #   projects/`project_id`/locations/`location_id``.
        # @param [Google::Apis::HealthcareV1::Dataset] dataset_object
        # @param [String] dataset_id
        #   The ID of the dataset that is being created. The string must match the
        #   following regex: `[\p`L`\p`N`_\-\.]`1,256``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset(parent, dataset_object = nil, dataset_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/datasets', options)
          command.request_representation = Google::Apis::HealthcareV1::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new dataset containing de-identified data from the source dataset.
        # The metadata field type is OperationMetadata. If the request is successful,
        # the response field type is DeidentifySummary. If errors occur, error is set.
        # The LRO result may still be successful if de-identification fails for some
        # DICOM instances. The new de-identified dataset will not contain these failed
        # resources. Failed resource totals are tracked in Operation.metadata. Error
        # details are also logged to Cloud Logging. For more information, see [Viewing
        # logs](/healthcare/docs/how-tos/logging).
        # @param [String] source_dataset
        #   Source dataset resource name. For example, `projects/`project_id`/locations/`
        #   location_id`/datasets/`dataset_id``.
        # @param [Google::Apis::HealthcareV1::DeidentifyDatasetRequest] deidentify_dataset_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_dataset(source_dataset, deidentify_dataset_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+sourceDataset}:deidentify', options)
          command.request_representation = Google::Apis::HealthcareV1::DeidentifyDatasetRequest::Representation
          command.request_object = deidentify_dataset_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['sourceDataset'] = source_dataset unless source_dataset.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified health dataset and all data contained in the dataset.
        # Deleting a dataset does not affect the sources from which the dataset was
        # imported (if any).
        # @param [String] name
        #   The name of the dataset to delete. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets any metadata associated with a dataset.
        # @param [String] name
        #   The name of the dataset to read. For example, `projects/`project_id`/locations/
        #   `location_id`/datasets/`dataset_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Dataset::Representation
          command.response_class = Google::Apis::HealthcareV1::Dataset
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
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the health datasets in the current project.
        # @param [String] parent
        #   The name of the project whose datasets should be listed. For example, `
        #   projects/`project_id`/locations/`location_id``.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. If not specified, 100 is used. May not
        #   be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_datasets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/datasets', options)
          command.response_representation = Google::Apis::HealthcareV1::ListDatasetsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates dataset metadata.
        # @param [String] name
        #   Resource name of the dataset, of the form `projects/`project_id`/locations/`
        #   location_id`/datasets/`dataset_id``.
        # @param [Google::Apis::HealthcareV1::Dataset] dataset_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset(name, dataset_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::HealthcareV1::Dataset::Representation
          command.response_class = Google::Apis::HealthcareV1::Dataset
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::HealthcareV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_dataset_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
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
        # @param [Google::Apis::HealthcareV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_dataset_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DICOM store within the parent dataset.
        # @param [String] parent
        #   The name of the dataset this DICOM store belongs to.
        # @param [Google::Apis::HealthcareV1::DicomStore] dicom_store_object
        # @param [String] dicom_store_id
        #   The ID of the DICOM store that is being created. Any string value up to 256
        #   characters in length.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::DicomStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::DicomStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_dicom_store(parent, dicom_store_object = nil, dicom_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dicomStores', options)
          command.request_representation = Google::Apis::HealthcareV1::DicomStore::Representation
          command.request_object = dicom_store_object
          command.response_representation = Google::Apis::HealthcareV1::DicomStore::Representation
          command.response_class = Google::Apis::HealthcareV1::DicomStore
          command.params['parent'] = parent unless parent.nil?
          command.query['dicomStoreId'] = dicom_store_id unless dicom_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-identifies data from the source store and writes it to the destination
        # store. The metadata field type is OperationMetadata. If the request is
        # successful, the response field type is DeidentifyDicomStoreSummary. If errors
        # occur, error is set. The LRO result may still be successful if de-
        # identification fails for some DICOM instances. The output DICOM store will not
        # contain these failed resources. Failed resource totals are tracked in
        # Operation.metadata. Error details are also logged to Cloud Logging (see [
        # Viewing logs](/healthcare/docs/how-tos/logging)).
        # @param [String] source_store
        #   Source DICOM store resource name. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1::DeidentifyDicomStoreRequest] deidentify_dicom_store_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_dicom_store(source_store, deidentify_dicom_store_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+sourceStore}:deidentify', options)
          command.request_representation = Google::Apis::HealthcareV1::DeidentifyDicomStoreRequest::Representation
          command.request_object = deidentify_dicom_store_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['sourceStore'] = source_store unless source_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified DICOM store and removes all images that are contained
        # within it.
        # @param [String] name
        #   The resource name of the DICOM store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports data to the specified destination by copying it from the DICOM store.
        # Errors are also logged to Cloud Logging. For more information, see [Viewing
        # logs](/healthcare/docs/how-tos/logging). The metadata field type is
        # OperationMetadata.
        # @param [String] name
        #   The DICOM store resource name from which to export the data. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1::ExportDicomDataRequest] export_dicom_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_dicom_store_dicom_data(name, export_dicom_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:export', options)
          command.request_representation = Google::Apis::HealthcareV1::ExportDicomDataRequest::Representation
          command.request_object = export_dicom_data_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified DICOM store.
        # @param [String] name
        #   The resource name of the DICOM store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::DicomStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::DicomStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::DicomStore::Representation
          command.response_class = Google::Apis::HealthcareV1::DicomStore
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
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports data into the DICOM store by copying it from the specified source.
        # Errors are logged to Cloud Logging. For more information, see [Viewing logs](/
        # healthcare/docs/how-tos/logging). The metadata field type is OperationMetadata.
        # @param [String] name
        #   The name of the DICOM store resource into which the data is imported. For
        #   example, `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1::ImportDicomDataRequest] import_dicom_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_dicom_store_dicom_data(name, import_dicom_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:import', options)
          command.request_representation = Google::Apis::HealthcareV1::ImportDicomDataRequest::Representation
          command.request_object = import_dicom_data_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the DICOM stores in the given dataset.
        # @param [String] parent
        #   Name of the dataset.
        # @param [String] filter
        #   Restricts stores returned to those matching a filter. Syntax: https://cloud.
        #   google.com/appengine/docs/standard/python/search/query_strings Only filtering
        #   on labels is supported. For example, `labels.key=value`.
        # @param [Fixnum] page_size
        #   Limit on the number of DICOM stores to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::ListDicomStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListDicomStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_dicom_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomStores', options)
          command.response_representation = Google::Apis::HealthcareV1::ListDicomStoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListDicomStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified DICOM store.
        # @param [String] name
        #   Resource name of the DICOM store, of the form `projects/`project_id`/locations/
        #   `location_id`/datasets/`dataset_id`/dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1::DicomStore] dicom_store_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::DicomStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::DicomStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_dicom_store(name, dicom_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::DicomStore::Representation
          command.request_object = dicom_store_object
          command.response_representation = Google::Apis::HealthcareV1::DicomStore::Representation
          command.response_class = Google::Apis::HealthcareV1::DicomStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForInstances returns a list of matching instances. See [Search
        # Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.
        # html#sect_10.6). For details on the implementation of SearchForInstances, see [
        # Search transaction](https://cloud.google.com/healthcare/docs/dicom#
        # search_transaction) in the Cloud Healthcare API conformance statement. For
        # samples that show how to call SearchForInstances, see [Searching for studies,
        # series, instances, and frames](https://cloud.google.com/healthcare/docs/how-
        # tos/dicomweb#searching_for_studies_series_instances_and_frames).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the SearchForInstancesRequest DICOMweb request. For example, `
        #   instances`, `series/`series_uid`/instances`, or `studies/`study_uid`/instances`
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_for_instances(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForSeries returns a list of matching series. See [Search Transaction] (
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
        # For details on the implementation of SearchForSeries, see [Search transaction]
        # (https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the
        # Cloud Healthcare API conformance statement. For samples that show how to call
        # SearchForSeries, see [Searching for studies, series, instances, and frames](
        # https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # searching_for_studies_series_instances_and_frames).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the SearchForSeries DICOMweb request. For example, `series` or `
        #   studies/`study_uid`/series`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_for_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForStudies returns a list of matching studies. See [Search Transaction] (
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
        # For details on the implementation of SearchForStudies, see [Search
        # transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
        # in the Cloud Healthcare API conformance statement. For samples that show how
        # to call SearchForStudies, see [Searching for studies, series, instances, and
        # frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # searching_for_studies_series_instances_and_frames).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the SearchForStudies DICOMweb request. For example, `studies`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_for_studies(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
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
        # @param [Google::Apis::HealthcareV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_dicom_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # StoreInstances stores DICOM instances associated with study instance unique
        # identifiers (SUID). See [Store Transaction] (http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.5). For details on the
        # implementation of StoreInstances, see [Store transaction](https://cloud.google.
        # com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call StoreInstances, see [
        # Storing DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # storing_dicom_data).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the StoreInstances DICOMweb request. For example, `studies/[`
        #   study_uid`]`. Note that the `study_uid` is optional.
        # @param [Google::Apis::HealthcareV1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def store_project_location_dataset_dicom_store_instances(parent, dicom_web_path, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.request_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
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
        # @param [Google::Apis::HealthcareV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_dicom_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteStudy deletes all instances within the given study. Delete requests are
        # equivalent to the GET requests specified in the Retrieve transaction. The
        # method returns an Operation which will be marked successful when the deletion
        # is complete. Warning: Inserting instances into a study while a delete
        # operation is running for that study could result in the new instances not
        # appearing in search results until the deletion operation finishes. For samples
        # that show how to call DeleteStudy, see [Deleting a study, series, or instance](
        # https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # deleting_a_study_series_or_instance).
        # @param [String] parent
        # @param [String] dicom_web_path
        #   The path of the DeleteStudy request. For example, `studies/`study_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store_study(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveStudyMetadata returns instance associated with the given study
        # presented as metadata with the bulk data removed. See [RetrieveTransaction] (
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
        # For details on the implementation of RetrieveStudyMetadata, see [Metadata
        # resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
        # in the Cloud Healthcare API conformance statement. For samples that show how
        # to call RetrieveStudyMetadata, see [Retrieving metadata](https://cloud.google.
        # com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveStudyMetadata DICOMweb request. For example, `studies/`
        #   study_uid`/metadata`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_metadata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveStudy returns all instances within the given study. See [
        # RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of RetrieveStudy,
        # see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/
        # dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance
        # statement. For samples that show how to call RetrieveStudy, see [Retrieving
        # DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # retrieving_dicom_data).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveStudy DICOMweb request. For example, `studies/`
        #   study_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_study(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForInstances returns a list of matching instances. See [Search
        # Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.
        # html#sect_10.6). For details on the implementation of SearchForInstances, see [
        # Search transaction](https://cloud.google.com/healthcare/docs/dicom#
        # search_transaction) in the Cloud Healthcare API conformance statement. For
        # samples that show how to call SearchForInstances, see [Searching for studies,
        # series, instances, and frames](https://cloud.google.com/healthcare/docs/how-
        # tos/dicomweb#searching_for_studies_series_instances_and_frames).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the SearchForInstancesRequest DICOMweb request. For example, `
        #   instances`, `series/`series_uid`/instances`, or `studies/`study_uid`/instances`
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_study_for_instances(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForSeries returns a list of matching series. See [Search Transaction] (
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
        # For details on the implementation of SearchForSeries, see [Search transaction]
        # (https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the
        # Cloud Healthcare API conformance statement. For samples that show how to call
        # SearchForSeries, see [Searching for studies, series, instances, and frames](
        # https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # searching_for_studies_series_instances_and_frames).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the SearchForSeries DICOMweb request. For example, `series` or `
        #   studies/`study_uid`/series`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_study_for_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # StoreInstances stores DICOM instances associated with study instance unique
        # identifiers (SUID). See [Store Transaction] (http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.5). For details on the
        # implementation of StoreInstances, see [Store transaction](https://cloud.google.
        # com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call StoreInstances, see [
        # Storing DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # storing_dicom_data).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the StoreInstances DICOMweb request. For example, `studies/[`
        #   study_uid`]`. Note that the `study_uid` is optional.
        # @param [Google::Apis::HealthcareV1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def store_project_location_dataset_dicom_store_study_instances(parent, dicom_web_path, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.request_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteSeries deletes all instances within the given study and series. Delete
        # requests are equivalent to the GET requests specified in the Retrieve
        # transaction. The method returns an Operation which will be marked successful
        # when the deletion is complete. Warning: Inserting instances into a series
        # while a delete operation is running for that series could result in the new
        # instances not appearing in search results until the deletion operation
        # finishes. For samples that show how to call DeleteSeries, see [Deleting a
        # study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#deleting_a_study_series_or_instance).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the DeleteSeries request. For example, `studies/`study_uid`/series/
        #   `series_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store_study_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveSeriesMetadata returns instance associated with the given study and
        # series, presented as metadata with the bulk data removed. See [
        # RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # RetrieveSeriesMetadata, see [Metadata resources](https://cloud.google.com/
        # healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveSeriesMetadata, see [Retrieving metadata](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#retrieving_metadata).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveSeriesMetadata DICOMweb request. For example, `studies/
        #   `study_uid`/series/`series_uid`/metadata`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_metadata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveSeries returns all instances within the given study and series. See [
        # RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of RetrieveSeries,
        # see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/
        # dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance
        # statement. For samples that show how to call RetrieveSeries, see [Retrieving
        # DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # retrieving_dicom_data).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveSeries DICOMweb request. For example, `studies/`
        #   study_uid`/series/`series_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForInstances returns a list of matching instances. See [Search
        # Transaction] (http://dicom.nema.org/medical/dicom/current/output/html/part18.
        # html#sect_10.6). For details on the implementation of SearchForInstances, see [
        # Search transaction](https://cloud.google.com/healthcare/docs/dicom#
        # search_transaction) in the Cloud Healthcare API conformance statement. For
        # samples that show how to call SearchForInstances, see [Searching for studies,
        # series, instances, and frames](https://cloud.google.com/healthcare/docs/how-
        # tos/dicomweb#searching_for_studies_series_instances_and_frames).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the SearchForInstancesRequest DICOMweb request. For example, `
        #   instances`, `series/`series_uid`/instances`, or `studies/`study_uid`/instances`
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_study_series_for_instances(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteInstance deletes an instance associated with the given study, series,
        # and SOP Instance UID. Delete requests are equivalent to the GET requests
        # specified in the Retrieve transaction. Study and series search results can
        # take a few seconds to be updated after an instance is deleted using
        # DeleteInstance. For samples that show how to call DeleteInstance, see [
        # Deleting a study, series, or instance](https://cloud.google.com/healthcare/
        # docs/how-tos/dicomweb#deleting_a_study_series_or_instance).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the DeleteInstance request. For example, `studies/`study_uid`/
        #   series/`series_uid`/instances/`instance_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store_study_series_instance(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveInstance returns instance associated with the given study, series, and
        # SOP Instance UID. See [RetrieveTransaction] (http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.4). For details on the
        # implementation of RetrieveInstance, see [DICOM study/series/instances](https://
        # cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) and [DICOM
        # instances](https://cloud.google.com/healthcare/docs/dicom#dicom_instances) in
        # the Cloud Healthcare API conformance statement. For samples that show how to
        # call RetrieveInstance, see [Retrieving an instance](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#retrieving_an_instance).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveInstance DICOMweb request. For example, `studies/`
        #   study_uid`/series/`series_uid`/instances/`instance_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_instance(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveInstanceMetadata returns instance associated with the given study,
        # series, and SOP Instance UID presented as metadata with the bulk data removed.
        # See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/
        # html/part18.html#sect_10.4). For details on the implementation of
        # RetrieveInstanceMetadata, see [Metadata resources](https://cloud.google.com/
        # healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveInstanceMetadata, see [Retrieving metadata](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#retrieving_metadata).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveInstanceMetadata DICOMweb request. For example, `
        #   studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/metadata`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_metadata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveRenderedInstance returns instance associated with the given study,
        # series, and SOP Instance UID in an acceptable Rendered Media Type. See [
        # RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # RetrieveRenderedInstance, see [Rendered resources](https://cloud.google.com/
        # healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveRenderedInstance, see [Retrieving consumer image formats](https://
        # cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # retrieving_consumer_image_formats).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveRenderedInstance DICOMweb request. For example, `
        #   studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/rendered`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_rendered(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveFrames returns instances associated with the given study, series, SOP
        # Instance UID and frame numbers. See [RetrieveTransaction] (http://dicom.nema.
        # org/medical/dicom/current/output/html/part18.html#sect_10.4`. For details on
        # the implementation of RetrieveFrames, see [DICOM frames](https://cloud.google.
        # com/healthcare/docs/dicom#dicom_frames) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call RetrieveFrames, see [
        # Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#retrieving_dicom_data).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveFrames DICOMweb request. For example, `studies/`
        #   study_uid`/series/`series_uid`/instances/`instance_uid`/frames/`frame_list``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_frame_frames(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveRenderedFrames returns instances associated with the given study,
        # series, SOP Instance UID and frame numbers in an acceptable Rendered Media
        # Type. See [RetrieveTransaction] (http://dicom.nema.org/medical/dicom/current/
        # output/html/part18.html#sect_10.4). For details on the implementation of
        # RetrieveRenderedFrames, see [Rendered resources](https://cloud.google.com/
        # healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveRenderedFrames, see [Retrieving consumer image formats](https://cloud.
        # google.com/healthcare/docs/how-tos/dicomweb#retrieving_consumer_image_formats).
        # @param [String] parent
        #   The name of the DICOM store that is being accessed. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [String] dicom_web_path
        #   The path of the RetrieveRenderedFrames DICOMweb request. For example, `studies/
        #   `study_uid`/series/`series_uid`/instances/`instance_uid`/frames/`frame_list`/
        #   rendered`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_frame_rendered(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new FHIR store within the parent dataset.
        # @param [String] parent
        #   The name of the dataset this FHIR store belongs to.
        # @param [Google::Apis::HealthcareV1::FhirStore] fhir_store_object
        # @param [String] fhir_store_id
        #   The ID of the FHIR store that is being created. The string must match the
        #   following regex: `[\p`L`\p`N`_\-\.]`1,256``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::FhirStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::FhirStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_fhir_store(parent, fhir_store_object = nil, fhir_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/fhirStores', options)
          command.request_representation = Google::Apis::HealthcareV1::FhirStore::Representation
          command.request_object = fhir_store_object
          command.response_representation = Google::Apis::HealthcareV1::FhirStore::Representation
          command.response_class = Google::Apis::HealthcareV1::FhirStore
          command.params['parent'] = parent unless parent.nil?
          command.query['fhirStoreId'] = fhir_store_id unless fhir_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-identifies data from the source store and writes it to the destination
        # store. The metadata field type is OperationMetadata. If the request is
        # successful, the response field type is DeidentifyFhirStoreSummary. If errors
        # occur, error is set. Error details are also logged to Cloud Logging (see [
        # Viewing logs](/healthcare/docs/how-tos/logging)).
        # @param [String] source_store
        #   Source FHIR store resource name. For example, `projects/`project_id`/locations/
        #   `location_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id``.
        # @param [Google::Apis::HealthcareV1::DeidentifyFhirStoreRequest] deidentify_fhir_store_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_fhir_store(source_store, deidentify_fhir_store_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+sourceStore}:deidentify', options)
          command.request_representation = Google::Apis::HealthcareV1::DeidentifyFhirStoreRequest::Representation
          command.request_object = deidentify_fhir_store_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['sourceStore'] = source_store unless source_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified FHIR store and removes all resources within it.
        # @param [String] name
        #   The resource name of the FHIR store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_fhir_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export resources from the FHIR store to the specified destination. This method
        # returns an Operation that can be used to track the status of the export by
        # calling GetOperation. Immediate fatal errors appear in the error field, errors
        # are also logged to Cloud Logging (see [Viewing logs](/healthcare/docs/how-tos/
        # logging)). Otherwise, when the operation finishes, a detailed response of type
        # ExportResourcesResponse is returned in the response field. The metadata field
        # type for this operation is OperationMetadata.
        # @param [String] name
        #   The name of the FHIR store to export resource from, in the format of `projects/
        #   `project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id``.
        # @param [Google::Apis::HealthcareV1::ExportResourcesRequest] export_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_fhir_store_resources(name, export_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:export', options)
          command.request_representation = Google::Apis::HealthcareV1::ExportResourcesRequest::Representation
          command.request_object = export_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration of the specified FHIR store.
        # @param [String] name
        #   The resource name of the FHIR store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::FhirStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::FhirStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_fhir_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::FhirStore::Representation
          command.response_class = Google::Apis::HealthcareV1::FhirStore
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
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_fhir_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports resources to the FHIR store by loading data from the specified sources.
        # This method is optimized to load large quantities of data using import
        # semantics that ignore some FHIR store configuration options and are not
        # suitable for all use cases. It is primarily intended to load data into an
        # empty FHIR store that is not being used by other clients. In cases where this
        # method is not appropriate, consider using ExecuteBundle to load data. Every
        # resource in the input must contain a client-supplied ID. Each resource is
        # stored using the supplied ID regardless of the enable_update_create setting on
        # the FHIR store. The import process does not enforce referential integrity,
        # regardless of the disable_referential_integrity setting on the FHIR store.
        # This allows the import of resources with arbitrary interdependencies without
        # considering grouping or ordering, but if the input data contains invalid
        # references or if some resources fail to be imported, the FHIR store might be
        # left in a state that violates referential integrity. The import process does
        # not trigger Pub/Sub notification or BigQuery streaming update, regardless of
        # how those are configured on the FHIR store. If a resource with the specified
        # ID already exists, the most recent version of the resource is overwritten
        # without creating a new historical version, regardless of the
        # disable_resource_versioning setting on the FHIR store. If transient failures
        # occur during the import, it's possible that successfully imported resources
        # will be overwritten more than once. The import operation is idempotent unless
        # the input data contains multiple valid resources with the same ID but
        # different contents. In that case, after the import completes, the store
        # contains exactly one resource with that ID but there is no ordering guarantee
        # on which version of the contents it will have. The operation result counters
        # do not count duplicate IDs as an error and count one success for each resource
        # in the input, which might result in a success count larger than the number of
        # resources in the FHIR store. This often occurs when importing data organized
        # in bundles produced by Patient-everything where each bundle contains its own
        # copy of a resource such as Practitioner that might be referred to by many
        # patients. If some resources fail to import, for example due to parsing errors,
        # successfully imported resources are not rolled back. The location and format
        # of the input data is specified by the parameters in ImportResourcesRequest.
        # Note that if no format is specified, this method assumes the `BUNDLE` format.
        # When using the `BUNDLE` format this method ignores the `Bundle.type` field,
        # except that `history` bundles are rejected, and does not apply any of the
        # bundle processing semantics for batch or transaction bundles. Unlike in
        # ExecuteBundle, transaction bundles are not executed as a single transaction
        # and bundle-internal references are not rewritten. The bundle is treated as a
        # collection of resources to be written as provided in `Bundle.entry.resource`,
        # ignoring `Bundle.entry.request`. As an example, this allows the import of `
        # searchset` bundles produced by a FHIR search or Patient-everything operation.
        # This method returns an Operation that can be used to track the status of the
        # import by calling GetOperation. Immediate fatal errors appear in the error
        # field, errors are also logged to Cloud Logging (see [Viewing logs](/healthcare/
        # docs/how-tos/logging)). Otherwise, when the operation finishes, a detailed
        # response of type ImportResourcesResponse is returned in the response field.
        # The metadata field type for this operation is OperationMetadata.
        # @param [String] name
        #   The name of the FHIR store to import FHIR resources to, in the format of `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/
        #   `fhir_store_id``.
        # @param [Google::Apis::HealthcareV1::ImportResourcesRequest] import_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_fhir_store_resources(name, import_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:import', options)
          command.request_representation = Google::Apis::HealthcareV1::ImportResourcesRequest::Representation
          command.request_object = import_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the FHIR stores in the given dataset.
        # @param [String] parent
        #   Name of the dataset.
        # @param [String] filter
        #   Restricts stores returned to those matching a filter. Syntax: https://cloud.
        #   google.com/appengine/docs/standard/python/search/query_strings Only filtering
        #   on labels is supported, for example `labels.key=value`.
        # @param [Fixnum] page_size
        #   Limit on the number of FHIR stores to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::ListFhirStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListFhirStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_fhir_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/fhirStores', options)
          command.response_representation = Google::Apis::HealthcareV1::ListFhirStoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListFhirStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the configuration of the specified FHIR store.
        # @param [String] name
        #   Output only. Resource name of the FHIR store, of the form `projects/`
        #   project_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id``.
        # @param [Google::Apis::HealthcareV1::FhirStore] fhir_store_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::FhirStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::FhirStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_fhir_store(name, fhir_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::FhirStore::Representation
          command.request_object = fhir_store_object
          command.response_representation = Google::Apis::HealthcareV1::FhirStore::Representation
          command.response_class = Google::Apis::HealthcareV1::FhirStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::HealthcareV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_fhir_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
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
        # @param [Google::Apis::HealthcareV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_fhir_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Patient resource and resources related to that patient. Implements
        # the FHIR extended operation Patient-everything ([DSTU2](http://hl7.org/
        # implement/standards/fhir/DSTU2/patient-operations.html#everything), [STU3](
        # http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#
        # everything), [R4](http://hl7.org/implement/standards/fhir/R4/patient-
        # operations.html#everything)). On success, the response body will contain a
        # JSON-encoded representation of a `Bundle` resource of type `searchset`,
        # containing the results of the operation. Errors generated by the FHIR store
        # will contain a JSON-encoded `OperationOutcome` resource describing the reason
        # for the error. If the request cannot be mapped to a valid API method on a FHIR
        # store, a generic GCP error might be returned instead. The resources in scope
        # for the response are: * The patient resource itself. * All the resources
        # directly referenced by the patient resource. * Resources directly referencing
        # the patient resource that meet the inclusion criteria. The inclusion criteria
        # are based on the membership rules in the patient compartment definition ([
        # DSTU2](http://hl7.org/fhir/DSTU2/compartment-patient.html), [STU3](http://www.
        # hl7.org/fhir/stu3/compartmentdefinition-patient.html), [R4](http://hl7.org/
        # fhir/R4/compartmentdefinition-patient.html)), which details the eligible
        # resource types and referencing search parameters. For samples that show how to
        # call `Patient-everything`, see [Getting all patient compartment resources](/
        # healthcare/docs/how-tos/fhir-resources#
        # getting_all_patient_compartment_resources).
        # @param [String] name
        #   Name of the `Patient` resource for which the information is required.
        # @param [Fixnum] _count
        #   Maximum number of resources in a page. If not specified, 100 is used. May not
        #   be larger than 1000.
        # @param [String] _page_token
        #   Used to retrieve the next or previous page of results when using pagination.
        #   Set `_page_token` to the value of _page_token set in next or previous page
        #   links' url. Next and previous page are returned in the response bundle's links
        #   field, where `link.relation` is "previous" or "next". Omit `_page_token` if no
        #   previous request has been made.
        # @param [String] _since
        #   If provided, only resources updated after this time are returned. The time
        #   uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-07T13:28:
        #   17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified to the
        #   second and include a time zone.
        # @param [String] _type
        #   String of comma-delimited FHIR resource types. If provided, only resources of
        #   the specified resource type(s) are returned.
        # @param [String] end_
        #   The response includes records prior to the end date. If no end date is
        #   provided, all records subsequent to the start date are in scope.
        # @param [String] start
        #   The response includes records subsequent to the start date. If no start date
        #   is provided, all records prior to the end date are in scope.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patient_project_location_dataset_fhir_store_fhir_everything(name, _count: nil, _page_token: nil, _since: nil, _type: nil, end_: nil, start: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/$everything', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['_type'] = _type unless _type.nil?
          command.query['end'] = end_ unless end_.nil?
          command.query['start'] = start unless start.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the historical versions of a resource (excluding the current
        # version) from the FHIR store. To remove all versions of a resource, first
        # delete the current version and then call this method. This is not a FHIR
        # standard operation. For samples that show how to call `Resource-purge`, see [
        # Deleting historical versions of a FHIR resource](/healthcare/docs/how-tos/fhir-
        # resources#deleting_historical_versions_of_a_fhir_resource).
        # @param [String] name
        #   The name of the resource to purge.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resource_project_location_dataset_fhir_store_fhir_purge(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}/$purge', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the FHIR capability statement ([STU3](http://hl7.org/implement/standards/
        # fhir/STU3/capabilitystatement.html), [R4](http://hl7.org/implement/standards/
        # fhir/R4/capabilitystatement.html)), or the [conformance statement](http://hl7.
        # org/implement/standards/fhir/DSTU2/conformance.html) in the DSTU2 case for the
        # store, which contains a description of functionality supported by the server.
        # Implements the FHIR standard capabilities interaction ([STU3](http://hl7.org/
        # implement/standards/fhir/STU3/http.html#capabilities), [R4](http://hl7.org/
        # implement/standards/fhir/R4/http.html#capabilities)), or the [conformance
        # interaction](http://hl7.org/implement/standards/fhir/DSTU2/http.html#
        # conformance) in the DSTU2 case. On success, the response body will contain a
        # JSON-encoded representation of a `CapabilityStatement` resource.
        # @param [String] name
        #   Name of the FHIR store to retrieve the capabilities for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def capabilities_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/fhir/metadata', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a FHIR resource. Implements the FHIR standard create interaction ([
        # DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#create), [STU3](
        # http://hl7.org/implement/standards/fhir/STU3/http.html#create), [R4](http://
        # hl7.org/implement/standards/fhir/R4/http.html#create)), which creates a new
        # resource with a server-assigned resource ID. The request body must contain a
        # JSON-encoded FHIR resource, and the request headers must contain `Content-Type:
        # application/fhir+json`. On success, the response body will contain a JSON-
        # encoded representation of the resource as it was created on the server,
        # including the server-assigned resource ID and version ID. Errors generated by
        # the FHIR store will contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `create`, see [Creating a FHIR
        # resource](/healthcare/docs/how-tos/fhir-resources#creating_a_fhir_resource).
        # @param [String] parent
        #   The name of the FHIR store this resource belongs to.
        # @param [String] type
        #   The FHIR resource type to create, such as Patient or Observation. For a
        #   complete list, see the FHIR Resource Index ([DSTU2](http://hl7.org/implement/
        #   standards/fhir/DSTU2/resourcelist.html), [STU3](http://hl7.org/implement/
        #   standards/fhir/STU3/resourcelist.html), [R4](http://hl7.org/implement/
        #   standards/fhir/R4/resourcelist.html)). Must match the resource type in the
        #   provided content.
        # @param [Google::Apis::HealthcareV1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_fhir_store_fhir(parent, type, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/fhir/{+type}', options)
          command.request_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a FHIR resource. Implements the FHIR standard delete interaction ([
        # DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#delete), [STU3](
        # http://hl7.org/implement/standards/fhir/STU3/http.html#delete), [R4](http://
        # hl7.org/implement/standards/fhir/R4/http.html#delete)). Note: Unless resource
        # versioning is disabled by setting the disable_resource_versioning flag on the
        # FHIR store, the deleted resources will be moved to a history repository that
        # can still be retrieved through vread and related methods, unless they are
        # removed by the purge method. For samples that show how to call `delete`, see [
        # Deleting a FHIR resource](/healthcare/docs/how-tos/fhir-resources#
        # deleting_a_fhir_resource).
        # @param [String] name
        #   The name of the resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes all the requests in the given Bundle. Implements the FHIR standard
        # batch/transaction interaction ([DSTU2](http://hl7.org/implement/standards/fhir/
        # DSTU2/http.html#transaction), [STU3](http://hl7.org/implement/standards/fhir/
        # STU3/http.html#transaction), [R4](http://hl7.org/implement/standards/fhir/R4/
        # http.html#transaction)). Supports all interactions within a bundle, except
        # search. This method accepts Bundles of type `batch` and `transaction`,
        # processing them according to the batch processing rules ([DSTU2](http://hl7.
        # org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.1), [STU3](http://hl7.
        # org/implement/standards/fhir/STU3/http.html#2.21.0.17.1), [R4](http://hl7.org/
        # implement/standards/fhir/R4/http.html#brules)) and transaction processing
        # rules ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.
        # 16.2), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.
        # 2), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#trules)). The
        # request body must contain a JSON-encoded FHIR `Bundle` resource, and the
        # request headers must contain `Content-Type: application/fhir+json`. For a
        # batch bundle or a successful transaction the response body will contain a JSON-
        # encoded representation of a `Bundle` resource of type `batch-response` or `
        # transaction-response` containing one entry for each entry in the request, with
        # the outcome of processing the entry. In the case of an error for a transaction
        # bundle, the response body will contain a JSON-encoded `OperationOutcome`
        # resource describing the reason for the error. If the request cannot be mapped
        # to a valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `executeBundle`, see [Managing FHIR
        # resources using FHIR bundles](/healthcare/docs/how-tos/fhir-bundles).
        # @param [String] parent
        #   Name of the FHIR store in which this bundle will be executed.
        # @param [Google::Apis::HealthcareV1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_location_dataset_fhir_store_fhir_bundle(parent, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/fhir', options)
          command.request_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the versions of a resource (including the current version and
        # deleted versions) from the FHIR store. Implements the per-resource form of the
        # FHIR standard history interaction ([DSTU2](http://hl7.org/implement/standards/
        # fhir/DSTU2/http.html#history), [STU3](http://hl7.org/implement/standards/fhir/
        # STU3/http.html#history), [R4](http://hl7.org/implement/standards/fhir/R4/http.
        # html#history)). On success, the response body will contain a JSON-encoded
        # representation of a `Bundle` resource of type `history`, containing the
        # version history sorted from most recent to oldest versions. Errors generated
        # by the FHIR store will contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `history`, see [Listing FHIR
        # resource versions](/healthcare/docs/how-tos/fhir-resources#
        # listing_fhir_resource_versions).
        # @param [String] name
        #   The name of the resource to retrieve.
        # @param [String] _at
        #   Only include resource versions that were current at some point during the time
        #   period specified in the date time value. The date parameter format is yyyy-mm-
        #   ddThh:mm:ss[Z|(+|-)hh:mm] Clients may specify any of the following: * An
        #   entire year: `_at=2019` * An entire month: `_at=2019-01` * A specific day: `
        #   _at=2019-01-20` * A specific second: `_at=2018-12-31T23:59:58Z`
        # @param [Fixnum] _count
        #   The maximum number of search results on a page. If not specified, 100 is used.
        #   May not be larger than 1000.
        # @param [String] _page_token
        #   Used to retrieve the first, previous, next, or last page of resource versions
        #   when using pagination. Value should be set to the value of `_page_token` set
        #   in next or previous page links' URLs. Next and previous page are returned in
        #   the response bundle's links field, where `link.relation` is "previous" or "
        #   next". Omit `_page_token` if no previous request has been made.
        # @param [String] _since
        #   Only include resource versions that were created at or after the given instant
        #   in time. The instant in time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (
        #   for example 2015-02-07T13:28:17.239+02:00 or 2017-01-01T00:00:00Z). The time
        #   must be specified to the second and include a time zone.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def history_project_location_dataset_fhir_store_fhir(name, _at: nil, _count: nil, _page_token: nil, _since: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/_history', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_at'] = _at unless _at.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates part of an existing resource by applying the operations specified in a
        # [JSON Patch](http://jsonpatch.com/) document. Implements the FHIR standard
        # patch interaction ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.
        # html#patch), [R4](http://hl7.org/implement/standards/fhir/R4/http.html#patch)).
        # DSTU2 doesn't define a patch method, but the server supports it in the same
        # way it supports STU3. The request body must contain a JSON Patch document, and
        # the request headers must contain `Content-Type: application/json-patch+json`.
        # On success, the response body will contain a JSON-encoded representation of
        # the updated resource, including the server-assigned version ID. Errors
        # generated by the FHIR store will contain a JSON-encoded `OperationOutcome`
        # resource describing the reason for the error. If the request cannot be mapped
        # to a valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `patch`, see [Patching a FHIR
        # resource](/healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource).
        # @param [String] name
        #   The name of the resource to update.
        # @param [Google::Apis::HealthcareV1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_fhir_store_fhir(name, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a FHIR resource. Implements the FHIR standard read
        # interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#
        # read), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#read), [
        # R4](http://hl7.org/implement/standards/fhir/R4/http.html#read)). Also supports
        # the FHIR standard conditional read interaction ([DSTU2](http://hl7.org/
        # implement/standards/fhir/DSTU2/http.html#cread), [STU3](http://hl7.org/
        # implement/standards/fhir/STU3/http.html#cread), [R4](http://hl7.org/implement/
        # standards/fhir/R4/http.html#cread)) specified by supplying an `If-Modified-
        # Since` header with a date/time value or an `If-None-Match` header with an ETag
        # value. On success, the response body will contain a JSON-encoded
        # representation of the resource. Errors generated by the FHIR store will
        # contain a JSON-encoded `OperationOutcome` resource describing the reason for
        # the error. If the request cannot be mapped to a valid API method on a FHIR
        # store, a generic GCP error might be returned instead. For samples that show
        # how to call `read`, see [Getting a FHIR resource](/healthcare/docs/how-tos/
        # fhir-resources#getting_a_fhir_resource).
        # @param [String] name
        #   The name of the resource to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def read_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for resources in the given FHIR store according to criteria specified
        # as query parameters. Implements the FHIR standard search interaction ([DSTU2](
        # http://hl7.org/implement/standards/fhir/DSTU2/http.html#search), [STU3](http://
        # hl7.org/implement/standards/fhir/STU3/http.html#search), [R4](http://hl7.org/
        # implement/standards/fhir/R4/http.html#search)) using the search semantics
        # described in the FHIR Search specification ([DSTU2](http://hl7.org/implement/
        # standards/fhir/DSTU2/search.html), [STU3](http://hl7.org/implement/standards/
        # fhir/STU3/search.html), [R4](http://hl7.org/implement/standards/fhir/R4/search.
        # html)). Supports three methods of search defined by the specification: * `GET [
        # base]?[parameters]` to search across all resources. * `GET [base]/[type]?[
        # parameters]` to search resources of a specified type. * `POST [base]/[type]/
        # _search?[parameters]` as an alternate form having the same semantics as the `
        # GET` method. The `GET` methods do not support compartment searches. The `POST`
        # method does not support `application/x-www-form-urlencoded` search parameters.
        # On success, the response body will contain a JSON-encoded representation of a `
        # Bundle` resource of type `searchset`, containing the results of the search.
        # Errors generated by the FHIR store will contain a JSON-encoded `
        # OperationOutcome` resource describing the reason for the error. If the request
        # cannot be mapped to a valid API method on a FHIR store, a generic GCP error
        # might be returned instead. The server's capability statement, retrieved
        # through capabilities, indicates what search parameters are supported on each
        # FHIR resource. A list of all search parameters defined by the specification
        # can be found in the FHIR Search Parameter Registry ([STU3](http://hl7.org/
        # implement/standards/fhir/STU3/searchparameter-registry.html), [R4](http://hl7.
        # org/implement/standards/fhir/R4/searchparameter-registry.html)). FHIR search
        # parameters for DSTU2 can be found on each resource's definition page.
        # Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`,
        # `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `:recurse`. Supported
        # search result parameters: `_sort`, `_count`, `_include`, `_revinclude`, `
        # _summary=text`, `_summary=data`, and `_elements`. The maximum number of search
        # results returned defaults to 100, which can be overridden by the `_count`
        # parameter up to a maximum limit of 1000. If there are additional results, the
        # returned `Bundle` will contain pagination links. Resources with a total size
        # larger than 5MB or a field count larger than 50,000 might not be fully
        # searchable as the server might trim its generated search index in those cases.
        # Note: FHIR resources are indexed asynchronously, so there might be a slight
        # delay between the time a resource is created or changes and when the change is
        # reflected in search results. For samples and detailed information, see [
        # Searching for FHIR resources](/healthcare/docs/how-tos/fhir-search) and [
        # Advanced FHIR search features](/healthcare/docs/how-tos/fhir-advanced-search).
        # @param [String] parent
        #   Name of the FHIR store to retrieve resources from.
        # @param [Google::Apis::HealthcareV1::SearchResourcesRequest] search_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_fhir_resources(parent, search_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/fhir/_search', options)
          command.request_representation = Google::Apis::HealthcareV1::SearchResourcesRequest::Representation
          command.request_object = search_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the entire contents of a resource. Implements the FHIR standard update
        # interaction ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#
        # update), [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#update),
        # [R4](http://hl7.org/implement/standards/fhir/R4/http.html#update)). If the
        # specified resource does not exist and the FHIR store has enable_update_create
        # set, creates the resource with the client-specified ID. The request body must
        # contain a JSON-encoded FHIR resource, and the request headers must contain `
        # Content-Type: application/fhir+json`. The resource must contain an `id`
        # element having an identical value to the ID in the REST path of the request.
        # On success, the response body will contain a JSON-encoded representation of
        # the updated resource, including the server-assigned version ID. Errors
        # generated by the FHIR store will contain a JSON-encoded `OperationOutcome`
        # resource describing the reason for the error. If the request cannot be mapped
        # to a valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `update`, see [Updating a FHIR
        # resource](/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource).
        # @param [String] name
        #   The name of the resource to update.
        # @param [Google::Apis::HealthcareV1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_dataset_fhir_store_fhir(name, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a version (current or historical) of a FHIR resource by
        # version ID. Implements the FHIR standard vread interaction ([DSTU2](http://hl7.
        # org/implement/standards/fhir/DSTU2/http.html#vread), [STU3](http://hl7.org/
        # implement/standards/fhir/STU3/http.html#vread), [R4](http://hl7.org/implement/
        # standards/fhir/R4/http.html#vread)). On success, the response body will
        # contain a JSON-encoded representation of the resource. Errors generated by the
        # FHIR store will contain a JSON-encoded `OperationOutcome` resource describing
        # the reason for the error. If the request cannot be mapped to a valid API
        # method on a FHIR store, a generic GCP error might be returned instead. For
        # samples that show how to call `vread`, see [Retrieving a FHIR resource version]
        # (/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version).
        # @param [String] name
        #   The name of the resource version to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def vread_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new HL7v2 store within the parent dataset.
        # @param [String] parent
        #   The name of the dataset this HL7v2 store belongs to.
        # @param [Google::Apis::HealthcareV1::Hl7V2Store] hl7_v2_store_object
        # @param [String] hl7_v2_store_id
        #   The ID of the HL7v2 store that is being created. The string must match the
        #   following regex: `[\p`L`\p`N`_\-\.]`1,256``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Hl7V2Store] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Hl7V2Store]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_hl7_v2_store(parent, hl7_v2_store_object = nil, hl7_v2_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/hl7V2Stores', options)
          command.request_representation = Google::Apis::HealthcareV1::Hl7V2Store::Representation
          command.request_object = hl7_v2_store_object
          command.response_representation = Google::Apis::HealthcareV1::Hl7V2Store::Representation
          command.response_class = Google::Apis::HealthcareV1::Hl7V2Store
          command.params['parent'] = parent unless parent.nil?
          command.query['hl7V2StoreId'] = hl7_v2_store_id unless hl7_v2_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified HL7v2 store and removes all messages that it contains.
        # @param [String] name
        #   The resource name of the HL7v2 store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_hl7_v2_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified HL7v2 store.
        # @param [String] name
        #   The resource name of the HL7v2 store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Hl7V2Store] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Hl7V2Store]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Hl7V2Store::Representation
          command.response_class = Google::Apis::HealthcareV1::Hl7V2Store
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
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the HL7v2 stores in the given dataset.
        # @param [String] parent
        #   Name of the dataset.
        # @param [String] filter
        #   Restricts stores returned to those matching a filter. Syntax: https://cloud.
        #   google.com/appengine/docs/standard/python/search/query_strings Only filtering
        #   on labels is supported. For example, `labels.key=value`.
        # @param [Fixnum] page_size
        #   Limit on the number of HL7v2 stores to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::ListHl7V2StoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListHl7V2StoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_hl7_v2_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/hl7V2Stores', options)
          command.response_representation = Google::Apis::HealthcareV1::ListHl7V2StoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListHl7V2StoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the HL7v2 store.
        # @param [String] name
        #   Resource name of the HL7v2 store, of the form `projects/`project_id`/datasets/`
        #   dataset_id`/hl7V2Stores/`hl7v2_store_id``.
        # @param [Google::Apis::HealthcareV1::Hl7V2Store] hl7_v2_store_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Hl7V2Store] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Hl7V2Store]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_hl7_v2_store(name, hl7_v2_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::Hl7V2Store::Representation
          command.request_object = hl7_v2_store_object
          command.response_representation = Google::Apis::HealthcareV1::Hl7V2Store::Representation
          command.response_class = Google::Apis::HealthcareV1::Hl7V2Store
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::HealthcareV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_hl7_v2_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1::Policy
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
        # @param [Google::Apis::HealthcareV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_hl7_v2_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Parses and stores an HL7v2 message. This method triggers an asynchronous
        # notification to any Cloud Pub/Sub topic configured in projects.locations.
        # datasets.hl7V2Stores.Hl7V2NotificationConfig, if the filtering matches the
        # message. If an MLLP adapter is configured to listen to a Cloud Pub/Sub topic,
        # the adapter transmits the message when a notification is received.
        # @param [String] parent
        #   The name of the dataset this message belongs to.
        # @param [Google::Apis::HealthcareV1::CreateMessageRequest] create_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_message(parent, create_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/messages', options)
          command.request_representation = Google::Apis::HealthcareV1::CreateMessageRequest::Representation
          command.request_object = create_message_request_object
          command.response_representation = Google::Apis::HealthcareV1::Message::Representation
          command.response_class = Google::Apis::HealthcareV1::Message
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an HL7v2 message.
        # @param [String] name
        #   The resource name of the HL7v2 message to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_hl7_v2_store_message(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an HL7v2 message.
        # @param [String] name
        #   The resource name of the HL7v2 message to retrieve.
        # @param [String] view
        #   Specifies which parts of the Message resource to return in the response. When
        #   unspecified, equivalent to FULL.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store_message(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Message::Representation
          command.response_class = Google::Apis::HealthcareV1::Message
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Parses and stores an HL7v2 message. This method triggers an asynchronous
        # notification to any Cloud Pub/Sub topic configured in projects.locations.
        # datasets.hl7V2Stores.Hl7V2NotificationConfig, if the filtering matches the
        # message. If an MLLP adapter is configured to listen to a Cloud Pub/Sub topic,
        # the adapter transmits the message when a notification is received. This method
        # also generates a response containing an HL7v2 acknowledgement (`ACK`) message
        # when successful or a negative acknowledgement (`NACK`) message in case of
        # error, suitable for replying to HL7v2 interface systems that expect these
        # acknowledgements.
        # @param [String] parent
        #   The name of the HL7v2 store this message belongs to.
        # @param [Google::Apis::HealthcareV1::IngestMessageRequest] ingest_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::IngestMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::IngestMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_message(parent, ingest_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/messages:ingest', options)
          command.request_representation = Google::Apis::HealthcareV1::IngestMessageRequest::Representation
          command.request_object = ingest_message_request_object
          command.response_representation = Google::Apis::HealthcareV1::IngestMessageResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::IngestMessageResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the messages in the given HL7v2 store with support for filtering.
        # Note: HL7v2 messages are indexed asynchronously, so there might be a slight
        # delay between the time a message is created and when it can be found through a
        # filter.
        # @param [String] parent
        #   Name of the HL7v2 store to retrieve messages from.
        # @param [String] filter
        #   Restricts messages returned to those matching a filter. Syntax: https://cloud.
        #   google.com/appengine/docs/standard/python/search/query_strings Fields/
        #   functions available for filtering are: * `message_type`, from the MSH-9.1
        #   field. For example, `NOT message_type = "ADT"`. * `send_date` or `sendDate`,
        #   the YYYY-MM-DD date the message was sent in the dataset's time_zone, from the
        #   MSH-7 segment. For example, `send_date < "2017-01-02"`. * `send_time`, the
        #   timestamp when the message was sent, using the RFC3339 time format for
        #   comparisons, from the MSH-7 segment. For example, `send_time < "2017-01-02T00:
        #   00:00-05:00"`. * `send_facility`, the care center that the message came from,
        #   from the MSH-4 segment. For example, `send_facility = "ABC"`. * `PatientId(
        #   value, type)`, which matches if the message lists a patient having an ID of
        #   the given value and type in the PID-2, PID-3, or PID-4 segments. For example, `
        #   PatientId("123456", "MRN")`. * `labels.x`, a string value of the label with
        #   key `x` as set using the Message.labels map. For example, `labels."priority"="
        #   high"`. The operator `:*` can be used to assert the existence of a label. For
        #   example, `labels."priority":*`.
        # @param [String] order_by
        #   Orders messages returned by the specified order_by clause. Syntax: https://
        #   cloud.google.com/apis/design/design_patterns#sorting_order Fields available
        #   for ordering are: * `send_time`
        # @param [Fixnum] page_size
        #   Limit on the number of messages to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] view
        #   Specifies the parts of the Message to return in the response. When unspecified,
        #   equivalent to BASIC. Setting this to anything other than BASIC with a `
        #   page_size` larger than the default can generate a large response, which
        #   impacts the performance of this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_hl7_v2_store_messages(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/messages', options)
          command.response_representation = Google::Apis::HealthcareV1::ListMessagesResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the message. The contents of the message in Message.data and data
        # extracted from the contents such as Message.create_time cannot be altered.
        # Only the Message.labels field is allowed to be updated. The labels in the
        # request are merged with the existing set of labels. Existing labels with the
        # same keys are updated.
        # @param [String] name
        #   Resource name of the Message, of the form `projects/`project_id`/datasets/`
        #   dataset_id`/hl7V2Stores/`hl7_v2_store_id`/messages/`message_id``. Assigned by
        #   the server.
        # @param [Google::Apis::HealthcareV1::Message] message_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_hl7_v2_store_message(name, message_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::HealthcareV1::Message::Representation
          command.response_class = Google::Apis::HealthcareV1::Message
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
        # @param [Google::Apis::HealthcareV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::HealthcareV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::HealthcareV1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1::Empty
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
        # @yieldparam result [Google::Apis::HealthcareV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1::Operation
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
        # @yieldparam result [Google::Apis::HealthcareV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::HealthcareV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1::ListOperationsResponse
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
