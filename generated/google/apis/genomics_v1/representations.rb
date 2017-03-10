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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module GenomicsV1
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadGroupSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferencesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinearAlignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportVariantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadGroupSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferenceSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCallSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportReadGroupSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportReadGroupSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariantCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariantSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceBound
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateAnnotationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCallSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Variant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadGroupSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClinicalCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Program
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CoverageBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariantSetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferenceSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MergeVariantsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateAnnotationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Read
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CigarUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotationSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Transcript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Experiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportReadGroupSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportVariantsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariantAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCoverageBucketsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportVariantSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CodingSequence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SearchReferencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::GenomicsV1::Reference, decorator: Google::Apis::GenomicsV1::Reference::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchAnnotationSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reference_set_id, as: 'referenceSetId'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          collection :dataset_ids, as: 'datasetIds'
          collection :types, as: 'types'
        end
      end
      
      class SearchReadGroupSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :read_group_sets, as: 'readGroupSets', class: Google::Apis::GenomicsV1::ReadGroupSet, decorator: Google::Apis::GenomicsV1::ReadGroupSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchReferencesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :md5checksums, as: 'md5checksums'
          collection :accessions, as: 'accessions'
          property :page_token, as: 'pageToken'
          property :reference_set_id, as: 'referenceSetId'
          property :page_size, as: 'pageSize'
        end
      end
      
      class LinearAlignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::GenomicsV1::Position, decorator: Google::Apis::GenomicsV1::Position::Representation
      
          collection :cigar, as: 'cigar', class: Google::Apis::GenomicsV1::CigarUnit, decorator: Google::Apis::GenomicsV1::CigarUnit::Representation
      
          property :mapping_quality, as: 'mappingQuality'
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :id, as: 'id'
          property :create_time, as: 'createTime'
        end
      end
      
      class ImportVariantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :call_set_ids, as: 'callSetIds'
        end
      end
      
      class ReadGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reference_set_id, as: 'referenceSetId'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :id, as: 'id'
          property :predicted_insert_size, as: 'predictedInsertSize'
          collection :programs, as: 'programs', class: Google::Apis::GenomicsV1::Program, decorator: Google::Apis::GenomicsV1::Program::Representation
      
          property :description, as: 'description'
          property :sample_id, as: 'sampleId'
          property :dataset_id, as: 'datasetId'
          property :experiment, as: 'experiment', class: Google::Apis::GenomicsV1::Experiment, decorator: Google::Apis::GenomicsV1::Experiment::Representation
      
        end
      end
      
      class ReadGroupSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :dataset_id, as: 'datasetId'
          property :filename, as: 'filename'
          collection :read_groups, as: 'readGroups', class: Google::Apis::GenomicsV1::ReadGroup, decorator: Google::Apis::GenomicsV1::ReadGroup::Representation
      
          property :name, as: 'name'
          property :reference_set_id, as: 'referenceSetId'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class SearchVariantSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variant_sets, as: 'variantSets', class: Google::Apis::GenomicsV1::VariantSet, decorator: Google::Apis::GenomicsV1::VariantSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::GenomicsV1::Status, decorator: Google::Apis::GenomicsV1::Status::Representation
      
          property :annotation, as: 'annotation', class: Google::Apis::GenomicsV1::Annotation, decorator: Google::Apis::GenomicsV1::Annotation::Representation
      
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reverse_strand, as: 'reverseStrand'
          property :position, as: 'position'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class SearchReferenceSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reference_sets, as: 'referenceSets', class: Google::Apis::GenomicsV1::ReferenceSet, decorator: Google::Apis::GenomicsV1::ReferenceSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchCallSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          collection :variant_set_ids, as: 'variantSetIds'
        end
      end
      
      class ImportReadGroupSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_set_id, as: 'referenceSetId'
          property :partition_strategy, as: 'partitionStrategy'
          property :dataset_id, as: 'datasetId'
          collection :source_uris, as: 'sourceUris'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
          collection :bindings, as: 'bindings', class: Google::Apis::GenomicsV1::Binding, decorator: Google::Apis::GenomicsV1::Binding::Representation
      
        end
      end
      
      class SearchReadsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :read_group_set_ids, as: 'readGroupSetIds'
          collection :read_group_ids, as: 'readGroupIds'
          property :end, as: 'end'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          property :start, as: 'start'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_name, as: 'referenceName'
          property :type, as: 'type'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :end, as: 'end'
          property :transcript, as: 'transcript', class: Google::Apis::GenomicsV1::Transcript, decorator: Google::Apis::GenomicsV1::Transcript::Representation
      
          property :start, as: 'start'
          property :annotation_set_id, as: 'annotationSetId'
          property :name, as: 'name'
          property :variant, as: 'variant', class: Google::Apis::GenomicsV1::VariantAnnotation, decorator: Google::Apis::GenomicsV1::VariantAnnotation::Representation
      
          property :id, as: 'id'
          property :reference_id, as: 'referenceId'
          property :reverse_strand, as: 'reverseStrand'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RuntimeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine, as: 'computeEngine', class: Google::Apis::GenomicsV1::ComputeEngine, decorator: Google::Apis::GenomicsV1::ComputeEngine::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::GenomicsV1::Status, decorator: Google::Apis::GenomicsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
        end
      end
      
      class ImportReadGroupSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :read_group_set_ids, as: 'readGroupSetIds'
        end
      end
      
      class VariantCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :genotype, as: 'genotype'
          property :phaseset, as: 'phaseset'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :call_set_name, as: 'callSetName'
          collection :genotype_likelihood, as: 'genotypeLikelihood'
          property :call_set_id, as: 'callSetId'
        end
      end
      
      class SearchVariantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variants, as: 'variants', class: Google::Apis::GenomicsV1::Variant, decorator: Google::Apis::GenomicsV1::Variant::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :next_page_token, as: 'nextPageToken'
          property :sequence, as: 'sequence'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          collection :details, as: 'details'
          property :code, as: 'code'
        end
      end
      
      class UndeleteDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class VariantSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :name, as: 'name'
          property :reference_set_id, as: 'referenceSetId'
          collection :metadata, as: 'metadata', class: Google::Apis::GenomicsV1::VariantSetMetadata, decorator: Google::Apis::GenomicsV1::VariantSetMetadata::Representation
      
          collection :reference_bounds, as: 'referenceBounds', class: Google::Apis::GenomicsV1::ReferenceBound, decorator: Google::Apis::GenomicsV1::ReferenceBound::Representation
      
          property :id, as: 'id'
          property :description, as: 'description'
        end
      end
      
      class ReferenceBound
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upper_bound, as: 'upperBound'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class BatchCreateAnnotationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::GenomicsV1::Entry, decorator: Google::Apis::GenomicsV1::Entry::Representation
      
        end
      end
      
      class SearchCallSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :call_sets, as: 'callSets', class: Google::Apis::GenomicsV1::CallSet, decorator: Google::Apis::GenomicsV1::CallSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Variant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :reference_bases, as: 'referenceBases'
          collection :names, as: 'names'
          collection :alternate_bases, as: 'alternateBases'
          property :end, as: 'end'
          collection :filter, as: 'filter'
          collection :calls, as: 'calls', class: Google::Apis::GenomicsV1::VariantCall, decorator: Google::Apis::GenomicsV1::VariantCall::Representation
      
          property :created, as: 'created'
          property :start, as: 'start'
          property :quality, as: 'quality'
          property :id, as: 'id'
          property :variant_set_id, as: 'variantSetId'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::GenomicsV1::Operation, decorator: Google::Apis::GenomicsV1::Operation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variant_set_ids, as: 'variantSetIds'
          property :end, as: 'end'
          property :max_calls, as: 'maxCalls'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          collection :call_set_ids, as: 'callSetIds'
          property :start, as: 'start'
          property :variant_name, as: 'variantName'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          collection :events, as: 'events', class: Google::Apis::GenomicsV1::OperationEvent, decorator: Google::Apis::GenomicsV1::OperationEvent::Representation
      
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          hash :request, as: 'request'
          hash :runtime_metadata, as: 'runtimeMetadata'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :project_id, as: 'projectId'
        end
      end
      
      class SearchReadGroupSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          collection :dataset_ids, as: 'datasetIds'
        end
      end
      
      class SearchAnnotationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :annotations, as: 'annotations', class: Google::Apis::GenomicsV1::Annotation, decorator: Google::Apis::GenomicsV1::Annotation::Representation
      
        end
      end
      
      class SearchReadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alignments, as: 'alignments', class: Google::Apis::GenomicsV1::Read, decorator: Google::Apis::GenomicsV1::Read::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ClinicalCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
          property :omim_id, as: 'omimId'
          collection :external_ids, as: 'externalIds', class: Google::Apis::GenomicsV1::ExternalId, decorator: Google::Apis::GenomicsV1::ExternalId::Representation
      
          property :concept_id, as: 'conceptId'
        end
      end
      
      class Program
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
          property :name, as: 'name'
          property :command_line, as: 'commandLine'
          property :prev_program_id, as: 'prevProgramId'
        end
      end
      
      class CoverageBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mean_coverage, as: 'meanCoverage'
          property :range, as: 'range', class: Google::Apis::GenomicsV1::Range, decorator: Google::Apis::GenomicsV1::Range::Representation
      
        end
      end
      
      class ComputeEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_name, as: 'instanceName'
          property :zone, as: 'zone'
          property :machine_type, as: 'machineType'
          collection :disk_names, as: 'diskNames'
        end
      end
      
      class ExternalId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :source_name, as: 'sourceName'
        end
      end
      
      class SearchVariantSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          collection :dataset_ids, as: 'datasetIds'
        end
      end
      
      class VariantSetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :number, as: 'number'
          property :id, as: 'id'
          property :value, as: 'value'
          property :key, as: 'key'
          property :description, as: 'description'
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_accessions, as: 'sourceAccessions'
          property :ncbi_taxon_id, as: 'ncbiTaxonId'
          property :source_uri, as: 'sourceUri'
          property :name, as: 'name'
          property :md5checksum, as: 'md5checksum'
          property :id, as: 'id'
          property :length, as: 'length'
        end
      end
      
      class SearchReferenceSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accessions, as: 'accessions'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          property :assembly_id, as: 'assemblyId'
          collection :md5checksums, as: 'md5checksums'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GenomicsV1::Policy, decorator: Google::Apis::GenomicsV1::Policy::Representation
      
        end
      end
      
      class MergeVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variants, as: 'variants', class: Google::Apis::GenomicsV1::Variant, decorator: Google::Apis::GenomicsV1::Variant::Representation
      
          hash :info_merge_config, as: 'infoMergeConfig'
          property :variant_set_id, as: 'variantSetId'
        end
      end
      
      class BatchCreateAnnotationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::GenomicsV1::Annotation, decorator: Google::Apis::GenomicsV1::Annotation::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class Read
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_group_set_id, as: 'readGroupSetId'
          property :duplicate_fragment, as: 'duplicateFragment'
          property :read_number, as: 'readNumber'
          property :aligned_sequence, as: 'alignedSequence'
          property :read_group_id, as: 'readGroupId'
          property :next_mate_position, as: 'nextMatePosition', class: Google::Apis::GenomicsV1::Position, decorator: Google::Apis::GenomicsV1::Position::Representation
      
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :proper_placement, as: 'properPlacement'
          property :supplementary_alignment, as: 'supplementaryAlignment'
          property :fragment_length, as: 'fragmentLength'
          property :failed_vendor_quality_checks, as: 'failedVendorQualityChecks'
          collection :aligned_quality, as: 'alignedQuality'
          property :alignment, as: 'alignment', class: Google::Apis::GenomicsV1::LinearAlignment, decorator: Google::Apis::GenomicsV1::LinearAlignment::Representation
      
          property :number_reads, as: 'numberReads'
          property :id, as: 'id'
          property :secondary_alignment, as: 'secondaryAlignment'
          property :fragment_name, as: 'fragmentName'
        end
      end
      
      class ReferenceSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reference_ids, as: 'referenceIds'
          property :md5checksum, as: 'md5checksum'
          property :assembly_id, as: 'assemblyId'
          property :id, as: 'id'
          property :description, as: 'description'
          collection :source_accessions, as: 'sourceAccessions'
          property :source_uri, as: 'sourceUri'
          property :ncbi_taxon_id, as: 'ncbiTaxonId'
        end
      end
      
      class CigarUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_length, as: 'operationLength'
          property :operation, as: 'operation'
          property :reference_sequence, as: 'referenceSequence'
        end
      end
      
      class AnnotationSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :dataset_id, as: 'datasetId'
          property :source_uri, as: 'sourceUri'
          property :name, as: 'name'
          property :reference_set_id, as: 'referenceSetId'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :type, as: 'type'
        end
      end
      
      class Transcript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gene_id, as: 'geneId'
          collection :exons, as: 'exons', class: Google::Apis::GenomicsV1::Exon, decorator: Google::Apis::GenomicsV1::Exon::Representation
      
          property :coding_sequence, as: 'codingSequence', class: Google::Apis::GenomicsV1::CodingSequence, decorator: Google::Apis::GenomicsV1::CodingSequence::Representation
      
        end
      end
      
      class Experiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sequencing_center, as: 'sequencingCenter'
          property :platform_unit, as: 'platformUnit'
          property :library_id, as: 'libraryId'
          property :instrument_model, as: 'instrumentModel'
        end
      end
      
      class ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::GenomicsV1::Dataset, decorator: Google::Apis::GenomicsV1::Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class ExportReadGroupSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_uri, as: 'exportUri'
          collection :reference_names, as: 'referenceNames'
          property :project_id, as: 'projectId'
        end
      end
      
      class Exon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
          property :frame, as: 'frame'
        end
      end
      
      class CallSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :variant_set_ids, as: 'variantSetIds'
          property :id, as: 'id'
          property :created, as: 'created'
          property :sample_id, as: 'sampleId'
        end
      end
      
      class SearchAnnotationSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_sets, as: 'annotationSets', class: Google::Apis::GenomicsV1::AnnotationSet, decorator: Google::Apis::GenomicsV1::AnnotationSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ImportVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          hash :info_merge_config, as: 'infoMergeConfig'
          property :variant_set_id, as: 'variantSetId'
          collection :source_uris, as: 'sourceUris'
          property :normalize_reference_names, as: 'normalizeReferenceNames'
        end
      end
      
      class VariantAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effect, as: 'effect'
          collection :transcript_ids, as: 'transcriptIds'
          property :type, as: 'type'
          property :alternate_bases, as: 'alternateBases'
          property :gene_id, as: 'geneId'
          property :clinical_significance, as: 'clinicalSignificance'
          collection :conditions, as: 'conditions', class: Google::Apis::GenomicsV1::ClinicalCondition, decorator: Google::Apis::GenomicsV1::ClinicalCondition::Representation
      
        end
      end
      
      class ListCoverageBucketsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :bucket_width, as: 'bucketWidth'
          collection :coverage_buckets, as: 'coverageBuckets', class: Google::Apis::GenomicsV1::CoverageBucket, decorator: Google::Apis::GenomicsV1::CoverageBucket::Representation
      
        end
      end
      
      class ExportVariantSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :bigquery_dataset, as: 'bigqueryDataset'
          property :bigquery_table, as: 'bigqueryTable'
          collection :call_set_ids, as: 'callSetIds'
          property :project_id, as: 'projectId'
        end
      end
      
      class SearchAnnotationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
          property :end, as: 'end'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          property :start, as: 'start'
          collection :annotation_set_ids, as: 'annotationSetIds'
          property :reference_name, as: 'referenceName'
        end
      end
      
      class OperationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
        end
      end
      
      class CodingSequence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
        end
      end
    end
  end
end
