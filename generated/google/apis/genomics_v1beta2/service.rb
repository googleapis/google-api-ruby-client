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
    module GenomicsV1beta2
      # Genomics API
      #
      # Provides access to Genomics data.
      #
      # @example
      #    require 'google/apis/genomics_v1beta2'
      #
      #    Genomics = Google::Apis::GenomicsV1beta2 # Alias the module
      #    service = Genomics::GenomicsService.new
      #
      # @see https://developers.google.com/genomics/v1beta2/reference
      class GenomicsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'genomics/v1beta2/')
        end
        
        # Creates a new annotation set. Caller must have WRITE permission for the
        # associated dataset.
        # @param [Google::Apis::GenomicsV1beta2::AnnotationSet] annotation_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::AnnotationSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::AnnotationSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_annotation_set(annotation_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotationSets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.request_object = annotation_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::AnnotationSet
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an annotation set. Caller must have WRITE permission for the
        # associated annotation set.
        # @param [String] annotation_set_id
        #   The ID of the annotation set to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_annotation_set(annotation_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotationSets/{annotationSetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['annotationSetId'] = annotation_set_id unless annotation_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an annotation set. Caller must have READ permission for the associated
        # dataset.
        # @param [String] annotation_set_id
        #   The ID of the annotation set to be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::AnnotationSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::AnnotationSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_annotation_set(annotation_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotationSets/{annotationSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::AnnotationSet
          command.params['annotationSetId'] = annotation_set_id unless annotation_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an annotation set. The update must respect all mutability restrictions
        # and other invariants described on the annotation set resource. Caller must
        # have WRITE permission for the associated dataset. This method supports patch
        # semantics.
        # @param [String] annotation_set_id
        #   The ID of the annotation set to be updated.
        # @param [Google::Apis::GenomicsV1beta2::AnnotationSet] annotation_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::AnnotationSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::AnnotationSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_annotation_set(annotation_set_id, annotation_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotationSets/{annotationSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.request_object = annotation_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::AnnotationSet
          command.params['annotationSetId'] = annotation_set_id unless annotation_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for annotation sets that match the given criteria. Results are
        # returned in a deterministic order. Caller must have READ permission for the
        # queried datasets.
        # @param [Google::Apis::GenomicsV1beta2::SearchAnnotationSetsRequest] search_annotation_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchAnnotationSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchAnnotationSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_annotation_sets(search_annotation_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotationSets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchAnnotationSetsRequest::Representation
          command.request_object = search_annotation_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchAnnotationSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchAnnotationSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an annotation set. The update must respect all mutability restrictions
        # and other invariants described on the annotation set resource. Caller must
        # have WRITE permission for the associated dataset.
        # @param [String] annotation_set_id
        #   The ID of the annotation set to be updated.
        # @param [Google::Apis::GenomicsV1beta2::AnnotationSet] annotation_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::AnnotationSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::AnnotationSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_annotation_set(annotation_set_id, annotation_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotationSets/{annotationSetId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.request_object = annotation_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::AnnotationSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::AnnotationSet
          command.params['annotationSetId'] = annotation_set_id unless annotation_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates one or more new annotations atomically. All annotations must belong to
        # the same annotation set. Caller must have WRITE permission for this annotation
        # set. For optimal performance, batch positionally adjacent annotations together.
        # If the request has a systemic issue, such as an attempt to write to an
        # inaccessible annotation set, the entire RPC will fail accordingly. For lesser
        # data issues, when possible an error will be isolated to the corresponding
        # batch entry in the response; the remaining well formed annotations will be
        # created normally.
        # @param [Google::Apis::GenomicsV1beta2::BatchCreateAnnotationsRequest] batch_create_annotations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::BatchAnnotationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::BatchAnnotationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_annotations(batch_create_annotations_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations:batchCreate'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::BatchCreateAnnotationsRequest::Representation
          command.request_object = batch_create_annotations_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::BatchAnnotationsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::BatchAnnotationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new annotation. Caller must have WRITE permission for the associated
        # annotation set.
        # @param [Google::Apis::GenomicsV1beta2::Annotation] annotation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Annotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Annotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_annotation(annotation_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.request_object = annotation_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Annotation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an annotation. Caller must have WRITE permission for the associated
        # annotation set.
        # @param [String] annotation_id
        #   The ID of the annotation set to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_annotation(annotation_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations/{annotationId}'
          command =  make_simple_command(:delete, path, options)
          command.params['annotationId'] = annotation_id unless annotation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an annotation. Caller must have READ permission for the associated
        # annotation set.
        # @param [String] annotation_id
        #   The ID of the annotation set to be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Annotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Annotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_annotation(annotation_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations/{annotationId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Annotation
          command.params['annotationId'] = annotation_id unless annotation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an annotation. The update must respect all mutability restrictions and
        # other invariants described on the annotation resource. Caller must have WRITE
        # permission for the associated dataset. This method supports patch semantics.
        # @param [String] annotation_id
        #   The ID of the annotation set to be updated.
        # @param [Google::Apis::GenomicsV1beta2::Annotation] annotation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Annotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Annotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_annotation(annotation_id, annotation_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations/{annotationId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.request_object = annotation_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Annotation
          command.params['annotationId'] = annotation_id unless annotation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for annotations that match the given criteria. Results are returned
        # ordered by start position. Annotations that have matching start positions are
        # ordered deterministically. Caller must have READ permission for the queried
        # annotation sets.
        # @param [Google::Apis::GenomicsV1beta2::SearchAnnotationsRequest] search_annotations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchAnnotationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchAnnotationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_annotations(search_annotations_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchAnnotationsRequest::Representation
          command.request_object = search_annotations_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchAnnotationsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchAnnotationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an annotation. The update must respect all mutability restrictions and
        # other invariants described on the annotation resource. Caller must have WRITE
        # permission for the associated dataset.
        # @param [String] annotation_id
        #   The ID of the annotation set to be updated.
        # @param [Google::Apis::GenomicsV1beta2::Annotation] annotation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Annotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Annotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_annotation(annotation_id, annotation_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'annotations/{annotationId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.request_object = annotation_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Annotation::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Annotation
          command.params['annotationId'] = annotation_id unless annotation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new call set.
        # @param [Google::Apis::GenomicsV1beta2::CallSet] call_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_call_set(call_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'callsets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.request_object = call_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::CallSet
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a call set.
        # @param [String] call_set_id
        #   The ID of the call set to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_call_set(call_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'callsets/{callSetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a call set by ID.
        # @param [String] call_set_id
        #   The ID of the call set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_call_set(call_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'callsets/{callSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::CallSet
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a call set. This method supports patch semantics.
        # @param [String] call_set_id
        #   The ID of the call set to be updated.
        # @param [Google::Apis::GenomicsV1beta2::CallSet] call_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_call_set(call_set_id, call_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'callsets/{callSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.request_object = call_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::CallSet
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of call sets matching the criteria.
        # Implements GlobalAllianceApi.searchCallSets.
        # @param [Google::Apis::GenomicsV1beta2::SearchCallSetsRequest] search_call_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchCallSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchCallSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_call_sets(search_call_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'callsets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchCallSetsRequest::Representation
          command.request_object = search_call_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchCallSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchCallSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a call set.
        # @param [String] call_set_id
        #   The ID of the call set to be updated.
        # @param [Google::Apis::GenomicsV1beta2::CallSet] call_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_call_set(call_set_id, call_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'callsets/{callSetId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.request_object = call_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::CallSet
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new dataset.
        # @param [Google::Apis::GenomicsV1beta2::Dataset] dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_dataset(dataset_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Dataset
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a dataset.
        # @param [String] dataset_id
        #   The ID of the dataset to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_dataset(dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets/{datasetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a dataset by ID.
        # @param [String] dataset_id
        #   The ID of the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_dataset(dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets/{datasetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists datasets within a project.
        # @param [Fixnum] page_size
        #   The maximum number of results returned by this request. If unspecified,
        #   defaults to 50.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of nextPageToken
        #   from the previous response.
        # @param [String] project_number
        #   Required. The project to list datasets for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datasets(page_size: nil, page_token: nil, project_number: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::ListDatasetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ListDatasetsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projectNumber'] = project_number unless project_number.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a dataset. This method supports patch semantics.
        # @param [String] dataset_id
        #   The ID of the dataset to be updated.
        # @param [Google::Apis::GenomicsV1beta2::Dataset] dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_dataset(dataset_id, dataset_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets/{datasetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a dataset by restoring a dataset which was deleted via this API.
        # This operation is only possible for a week after the deletion occurred.
        # @param [String] dataset_id
        #   The ID of the dataset to be undeleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_dataset(dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets/{datasetId}/undelete'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a dataset.
        # @param [String] dataset_id
        #   The ID of the dataset to be updated.
        # @param [Google::Apis::GenomicsV1beta2::Dataset] dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_dataset(dataset_id, dataset_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'datasets/{datasetId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and asynchronously runs an ad-hoc job. This is an experimental call
        # and may be removed or changed at any time.
        # @param [Google::Apis::GenomicsV1beta2::ExperimentalCreateJobRequest] experimental_create_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ExperimentalCreateJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ExperimentalCreateJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_experimental_job(experimental_create_job_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'experimental/jobs/create'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ExperimentalCreateJobRequest::Representation
          command.request_object = experimental_create_job_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ExperimentalCreateJobResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ExperimentalCreateJobResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a job by ID. Note that it is possible for partial results to be
        # generated and stored for cancelled jobs.
        # @param [String] job_id
        #   Required. The ID of the job.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def cancel_job(job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'jobs/{jobId}/cancel'
          command =  make_simple_command(:post, path, options)
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a job by ID.
        # @param [String] job_id
        #   Required. The ID of the job.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job(job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'jobs/{jobId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::Job::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Job
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of jobs matching the criteria.
        # @param [Google::Apis::GenomicsV1beta2::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_jobs(search_jobs_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'jobs/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchJobsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchJobsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Aligns read data from existing read group sets or files from Google Cloud
        # Storage. See the  alignment and variant calling documentation for more details.
        # @param [Google::Apis::GenomicsV1beta2::AlignReadGroupSetsRequest] align_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::AlignReadGroupSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::AlignReadGroupSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def align_read_group_sets(align_read_group_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/align'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::AlignReadGroupSetsRequest::Representation
          command.request_object = align_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::AlignReadGroupSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::AlignReadGroupSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calls variants on read data from existing read group sets or files from Google
        # Cloud Storage. See the  alignment and variant calling documentation for more
        # details.
        # @param [Google::Apis::GenomicsV1beta2::CallReadGroupSetsRequest] call_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::CallReadGroupSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::CallReadGroupSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def call_read_group_sets(call_read_group_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/call'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::CallReadGroupSetsRequest::Representation
          command.request_object = call_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::CallReadGroupSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::CallReadGroupSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a read group set.
        # @param [String] read_group_set_id
        #   The ID of the read group set to be deleted. The caller must have WRITE
        #   permissions to the dataset associated with this read group set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_read_group_set(read_group_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports read group sets to a BAM file in Google Cloud Storage.
        # Note that currently there may be some differences between exported BAM files
        # and the original BAM file at the time of import. In particular, comments in
        # the input file header will not be preserved, some custom tags will be
        # converted to strings, and original reference sequence order is not necessarily
        # preserved.
        # @param [Google::Apis::GenomicsV1beta2::ExportReadGroupSetsRequest] export_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ExportReadGroupSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ExportReadGroupSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_read_group_sets(export_read_group_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/export'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ExportReadGroupSetsRequest::Representation
          command.request_object = export_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ExportReadGroupSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ExportReadGroupSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a read group set by ID.
        # @param [String] read_group_set_id
        #   The ID of the read group set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ReadGroupSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ReadGroupSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_read_group_set(read_group_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::ReadGroupSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ReadGroupSet
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates read group sets by asynchronously importing the provided information.
        # Note that currently comments in the input file header are not imported and
        # some custom tags will be converted to strings, rather than preserving tag
        # types. The caller must have WRITE permissions to the dataset.
        # @param [Google::Apis::GenomicsV1beta2::ImportReadGroupSetsRequest] import_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ImportReadGroupSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ImportReadGroupSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_read_group_sets(import_read_group_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/import'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ImportReadGroupSetsRequest::Representation
          command.request_object = import_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ImportReadGroupSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ImportReadGroupSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a read group set. This method supports patch semantics.
        # @param [String] read_group_set_id
        #   The ID of the read group set to be updated. The caller must have WRITE
        #   permissions to the dataset associated with this read group set.
        # @param [Google::Apis::GenomicsV1beta2::ReadGroupSet] read_group_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ReadGroupSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ReadGroupSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_read_group_set(read_group_set_id, read_group_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ReadGroupSet::Representation
          command.request_object = read_group_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ReadGroupSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ReadGroupSet
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for read group sets matching the criteria.
        # Implements GlobalAllianceApi.searchReadGroupSets.
        # @param [Google::Apis::GenomicsV1beta2::SearchReadGroupSetsRequest] search_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchReadGroupSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchReadGroupSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_read_group_sets(search_read_group_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchReadGroupSetsRequest::Representation
          command.request_object = search_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchReadGroupSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchReadGroupSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a read group set.
        # @param [String] read_group_set_id
        #   The ID of the read group set to be updated. The caller must have WRITE
        #   permissions to the dataset associated with this read group set.
        # @param [Google::Apis::GenomicsV1beta2::ReadGroupSet] read_group_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ReadGroupSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ReadGroupSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_read_group_set(read_group_set_id, read_group_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ReadGroupSet::Representation
          command.request_object = read_group_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ReadGroupSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ReadGroupSet
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists fixed width coverage buckets for a read group set, each of which
        # correspond to a range of a reference sequence. Each bucket summarizes coverage
        # information across its corresponding genomic range.
        # Coverage is defined as the number of reads which are aligned to a given base
        # in the reference sequence. Coverage buckets are available at several
        # precomputed bucket widths, enabling retrieval of various coverage 'zoom levels'
        # . The caller must have READ permissions for the target read group set.
        # @param [String] read_group_set_id
        #   Required. The ID of the read group set over which coverage is requested.
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single page. If unspecified,
        #   defaults to 1024. The maximum value is 2048.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of nextPageToken
        #   from the previous response.
        # @param [String] range_end
        #   The end position of the range on the reference, 0-based exclusive. If
        #   specified, referenceName must also be specified.
        # @param [String] range_reference_name
        #   The reference sequence name, for example chr1, 1, or chrX.
        # @param [String] range_start
        #   The start position of the range on the reference, 0-based inclusive. If
        #   specified, referenceName must also be specified.
        # @param [String] target_bucket_width
        #   The desired width of each reported coverage bucket in base pairs. This will be
        #   rounded down to the nearest precomputed bucket width; the value of which is
        #   returned as bucketWidth in the response. Defaults to infinity (each bucket
        #   spans an entire reference sequence) or the length of the target range, if
        #   specified. The smallest precomputed bucketWidth is currently 2048 base pairs;
        #   this is subject to change.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ListCoverageBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ListCoverageBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_coverage_buckets(read_group_set_id, page_size: nil, page_token: nil, range_end: nil, range_reference_name: nil, range_start: nil, target_bucket_width: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'readgroupsets/{readGroupSetId}/coveragebuckets'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::ListCoverageBucketsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ListCoverageBucketsResponse
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['range.end'] = range_end unless range_end.nil?
          command.query['range.referenceName'] = range_reference_name unless range_reference_name.nil?
          command.query['range.start'] = range_start unless range_start.nil?
          command.query['targetBucketWidth'] = target_bucket_width unless target_bucket_width.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of reads for one or more read group sets. Reads search operates
        # over a genomic coordinate space of reference sequence & position defined over
        # the reference sequences to which the requested read group sets are aligned.
        # If a target positional range is specified, search returns all reads whose
        # alignment to the reference genome overlap the range. A query which specifies
        # only read group set IDs yields all reads in those read group sets, including
        # unmapped reads.
        # All reads returned (including reads on subsequent pages) are ordered by
        # genomic coordinate (reference sequence & position). Reads with equivalent
        # genomic coordinates are returned in a deterministic order.
        # Implements GlobalAllianceApi.searchReads.
        # @param [Google::Apis::GenomicsV1beta2::SearchReadsRequest] search_reads_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchReadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchReadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_reads(search_reads_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'reads/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchReadsRequest::Representation
          command.request_object = search_reads_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchReadsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchReadsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reference.
        # Implements GlobalAllianceApi.getReference.
        # @param [String] reference_id
        #   The ID of the reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Reference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Reference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_reference(reference_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'references/{referenceId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::Reference::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Reference
          command.params['referenceId'] = reference_id unless reference_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for references which match the given criteria.
        # Implements GlobalAllianceApi.searchReferences.
        # @param [Google::Apis::GenomicsV1beta2::SearchReferencesRequest] search_references_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchReferencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchReferencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_references(search_references_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'references/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchReferencesRequest::Representation
          command.request_object = search_references_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchReferencesResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchReferencesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the bases in a reference, optionally restricted to a range.
        # Implements GlobalAllianceApi.getReferenceBases.
        # @param [String] reference_id
        #   The ID of the reference.
        # @param [String] end_position
        #   The end position (0-based, exclusive) of this query. Defaults to the length of
        #   this reference.
        # @param [Fixnum] page_size
        #   Specifies the maximum number of bases to return in a single page.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of nextPageToken
        #   from the previous response.
        # @param [String] start_position
        #   The start position (0-based) of this query. Defaults to 0.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ListBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ListBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_reference_bases(reference_id, end_position: nil, page_size: nil, page_token: nil, start_position: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'references/{referenceId}/bases'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::ListBasesResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ListBasesResponse
          command.params['referenceId'] = reference_id unless reference_id.nil?
          command.query['end'] = end_position unless end_position.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['start'] = start_position unless start_position.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reference set.
        # Implements GlobalAllianceApi.getReferenceSet.
        # @param [String] reference_set_id
        #   The ID of the reference set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ReferenceSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ReferenceSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_reference_set(reference_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'referencesets/{referenceSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::ReferenceSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ReferenceSet
          command.params['referenceSetId'] = reference_set_id unless reference_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for reference sets which match the given criteria.
        # Implements GlobalAllianceApi.searchReferenceSets.
        # @param [Google::Apis::GenomicsV1beta2::SearchReferenceSetsRequest] search_reference_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchReferenceSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchReferenceSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_reference_sets(search_reference_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'referencesets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchReferenceSetsRequest::Representation
          command.request_object = search_reference_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchReferenceSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchReferenceSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new variant.
        # @param [Google::Apis::GenomicsV1beta2::Variant] variant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_variant(variant_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variants'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Variant::Representation
          command.request_object = variant_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Variant::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Variant
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a variant.
        # @param [String] variant_id
        #   The ID of the variant to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_variant(variant_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variants/{variantId}'
          command =  make_simple_command(:delete, path, options)
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a variant by ID.
        # @param [String] variant_id
        #   The ID of the variant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_variant(variant_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variants/{variantId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::Variant::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Variant
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of variants matching the criteria.
        # Implements GlobalAllianceApi.searchVariants.
        # @param [Google::Apis::GenomicsV1beta2::SearchVariantsRequest] search_variants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchVariantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchVariantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_variants(search_variants_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variants/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchVariantsRequest::Representation
          command.request_object = search_variants_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchVariantsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchVariantsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a variant's names and info fields. All other modifications are
        # silently ignored. Returns the modified variant without its calls.
        # @param [String] variant_id
        #   The ID of the variant to be updated.
        # @param [Google::Apis::GenomicsV1beta2::Variant] variant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_variant(variant_id, variant_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variants/{variantId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::Variant::Representation
          command.request_object = variant_object
          command.response_representation = Google::Apis::GenomicsV1beta2::Variant::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::Variant
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new variant set (only necessary in v1).
        # @param [Google::Apis::GenomicsV1beta2::VariantSet] variant_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_variantset(variant_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.request_object = variant_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::VariantSet
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the contents of a variant set. The variant set object is not deleted.
        # @param [String] variant_set_id
        #   The ID of the variant set to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_variantset(variant_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports variant set data to an external destination.
        # @param [String] variant_set_id
        #   Required. The ID of the variant set that contains variant data which should be
        #   exported. The caller must have READ access to this variant set.
        # @param [Google::Apis::GenomicsV1beta2::ExportVariantSetRequest] export_variant_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ExportVariantSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ExportVariantSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_variant_set(variant_set_id, export_variant_set_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}/export'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ExportVariantSetRequest::Representation
          command.request_object = export_variant_set_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ExportVariantSetResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ExportVariantSetResponse
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a variant set by ID.
        # @param [String] variant_set_id
        #   Required. The ID of the variant set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_variantset(variant_set_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::VariantSet
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates variant data by asynchronously importing the provided information.
        # The variants for import will be merged with any existing data and each other
        # according to the behavior of mergeVariants. In particular, this means for
        # merged VCF variants that have conflicting INFO fields, some data will be
        # arbitrarily discarded. As a special case, for single-sample VCF files, QUAL
        # and FILTER fields will be moved to the call level; these are sometimes
        # interpreted in a call-specific context. Imported VCF headers are appended to
        # the metadata already in a variant set.
        # @param [String] variant_set_id
        #   Required. The variant set to which variant data should be imported.
        # @param [Google::Apis::GenomicsV1beta2::ImportVariantsRequest] import_variants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::ImportVariantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::ImportVariantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_variants(variant_set_id, import_variants_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}/importVariants'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::ImportVariantsRequest::Representation
          command.request_object = import_variants_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::ImportVariantsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::ImportVariantsResponse
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Merges the given variants with existing variants. Each variant will be merged
        # with an existing variant that matches its reference sequence, start, end,
        # reference bases, and alternative bases. If no such variant exists, a new one
        # will be created.
        # When variants are merged, the call information from the new variant is added
        # to the existing variant, and other fields (such as key/value pairs) are
        # discarded.
        # @param [String] variant_set_id
        #   The destination variant set.
        # @param [Google::Apis::GenomicsV1beta2::MergeVariantsRequest] merge_variants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def merge_variants(variant_set_id, merge_variants_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}/mergeVariants'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::MergeVariantsRequest::Representation
          command.request_object = merge_variants_request_object
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a variant set's metadata. All other modifications are silently ignored.
        # This method supports patch semantics.
        # @param [String] variant_set_id
        #   The ID of the variant to be updated (must already exist).
        # @param [Google::Apis::GenomicsV1beta2::VariantSet] variant_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_variantset(variant_set_id, variant_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.request_object = variant_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::VariantSet
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all variant sets matching search criteria.
        # Implements GlobalAllianceApi.searchVariantSets.
        # @param [Google::Apis::GenomicsV1beta2::SearchVariantSetsRequest] search_variant_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::SearchVariantSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::SearchVariantSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_variant_sets(search_variant_sets_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::SearchVariantSetsRequest::Representation
          command.request_object = search_variant_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1beta2::SearchVariantSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::SearchVariantSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a variant set's metadata. All other modifications are silently ignored.
        # @param [String] variant_set_id
        #   The ID of the variant to be updated (must already exist).
        # @param [Google::Apis::GenomicsV1beta2::VariantSet] variant_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1beta2::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1beta2::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_variantset(variant_set_id, variant_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'variantsets/{variantSetId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.request_object = variant_set_object
          command.response_representation = Google::Apis::GenomicsV1beta2::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1beta2::VariantSet
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
