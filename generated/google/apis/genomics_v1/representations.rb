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
      
      class AnnotationSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariantAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClinicalCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Transcript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CodingSequence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateAnnotationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateAnnotationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnnotationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportReadGroupSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportReadGroupSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadGroupSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadGroupSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadGroupSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Experiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Program
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCoverageBucketsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CoverageBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Read
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinearAlignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CigarUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamReadsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamReadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferenceSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferenceSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferencesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchReferencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportVariantsRequest
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
      
      class VariantSetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportVariantSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchVariantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Variant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariantCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MergeVariantsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCallSetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchCallSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamVariantsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamVariantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportReadGroupSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportVariantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotationSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :dataset_id, as: 'datasetId'
          property :reference_set_id, as: 'referenceSetId'
          property :name, as: 'name'
          property :source_uri, as: 'sourceUri'
          property :type, as: 'type'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SearchAnnotationSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dataset_ids, as: 'datasetIds'
          property :reference_set_id, as: 'referenceSetId'
          property :name, as: 'name'
          collection :types, as: 'types'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchAnnotationSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_sets, as: 'annotationSets', class: Google::Apis::GenomicsV1::AnnotationSet, decorator: Google::Apis::GenomicsV1::AnnotationSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :annotation_set_id, as: 'annotationSetId'
          property :name, as: 'name'
          property :reference_id, as: 'referenceId'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
          property :reverse_strand, as: 'reverseStrand'
          property :type, as: 'type'
          property :variant, as: 'variant', class: Google::Apis::GenomicsV1::VariantAnnotation, decorator: Google::Apis::GenomicsV1::VariantAnnotation::Representation
      
          property :transcript, as: 'transcript', class: Google::Apis::GenomicsV1::Transcript, decorator: Google::Apis::GenomicsV1::Transcript::Representation
      
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class VariantAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :effect, as: 'effect'
          property :alternate_bases, as: 'alternateBases'
          property :gene_id, as: 'geneId'
          collection :transcript_ids, as: 'transcriptIds'
          collection :conditions, as: 'conditions', class: Google::Apis::GenomicsV1::ClinicalCondition, decorator: Google::Apis::GenomicsV1::ClinicalCondition::Representation
      
          property :clinical_significance, as: 'clinicalSignificance'
        end
      end
      
      class ClinicalCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
          collection :external_ids, as: 'externalIds', class: Google::Apis::GenomicsV1::ExternalId, decorator: Google::Apis::GenomicsV1::ExternalId::Representation
      
          property :concept_id, as: 'conceptId'
          property :omim_id, as: 'omimId'
        end
      end
      
      class ExternalId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_name, as: 'sourceName'
          property :id, as: 'id'
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
      
      class Exon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
          property :frame, as: 'frame'
        end
      end
      
      class CodingSequence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start, as: 'start'
          property :end, as: 'end'
        end
      end
      
      class BatchCreateAnnotationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::GenomicsV1::Annotation, decorator: Google::Apis::GenomicsV1::Annotation::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class BatchCreateAnnotationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::GenomicsV1::Entry, decorator: Google::Apis::GenomicsV1::Entry::Representation
      
        end
      end
      
      class Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::GenomicsV1::Status, decorator: Google::Apis::GenomicsV1::Status::Representation
      
          property :annotation, as: 'annotation', class: Google::Apis::GenomicsV1::Annotation, decorator: Google::Apis::GenomicsV1::Annotation::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class SearchAnnotationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_set_ids, as: 'annotationSetIds'
          property :reference_id, as: 'referenceId'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchAnnotationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::GenomicsV1::Annotation, decorator: Google::Apis::GenomicsV1::Annotation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::GenomicsV1::Dataset, decorator: Google::Apis::GenomicsV1::Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :project_id, as: 'projectId'
          property :name, as: 'name'
          property :create_time, as: 'createTime'
        end
      end
      
      class UndeleteDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GenomicsV1::Policy, decorator: Google::Apis::GenomicsV1::Policy::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
          collection :bindings, as: 'bindings', class: Google::Apis::GenomicsV1::Binding, decorator: Google::Apis::GenomicsV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role, as: 'role'
          collection :members, as: 'members'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::GenomicsV1::Operation, decorator: Google::Apis::GenomicsV1::Operation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GenomicsV1::Status, decorator: Google::Apis::GenomicsV1::Status::Representation
      
          hash :response, as: 'response'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportReadGroupSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :reference_set_id, as: 'referenceSetId'
          collection :source_uris, as: 'sourceUris'
          property :partition_strategy, as: 'partitionStrategy'
        end
      end
      
      class ExportReadGroupSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :export_uri, as: 'exportUri'
          collection :reference_names, as: 'referenceNames'
        end
      end
      
      class SearchReadGroupSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dataset_ids, as: 'datasetIds'
          property :name, as: 'name'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchReadGroupSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :read_group_sets, as: 'readGroupSets', class: Google::Apis::GenomicsV1::ReadGroupSet, decorator: Google::Apis::GenomicsV1::ReadGroupSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ReadGroupSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :dataset_id, as: 'datasetId'
          property :reference_set_id, as: 'referenceSetId'
          property :name, as: 'name'
          property :filename, as: 'filename'
          collection :read_groups, as: 'readGroups', class: Google::Apis::GenomicsV1::ReadGroup, decorator: Google::Apis::GenomicsV1::ReadGroup::Representation
      
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class ReadGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :dataset_id, as: 'datasetId'
          property :name, as: 'name'
          property :description, as: 'description'
          property :sample_id, as: 'sampleId'
          property :experiment, as: 'experiment', class: Google::Apis::GenomicsV1::Experiment, decorator: Google::Apis::GenomicsV1::Experiment::Representation
      
          property :predicted_insert_size, as: 'predictedInsertSize'
          collection :programs, as: 'programs', class: Google::Apis::GenomicsV1::Program, decorator: Google::Apis::GenomicsV1::Program::Representation
      
          property :reference_set_id, as: 'referenceSetId'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class Experiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :library_id, as: 'libraryId'
          property :platform_unit, as: 'platformUnit'
          property :sequencing_center, as: 'sequencingCenter'
          property :instrument_model, as: 'instrumentModel'
        end
      end
      
      class Program
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command_line, as: 'commandLine'
          property :id, as: 'id'
          property :name, as: 'name'
          property :prev_program_id, as: 'prevProgramId'
          property :version, as: 'version'
        end
      end
      
      class ListCoverageBucketsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_width, as: 'bucketWidth'
          collection :coverage_buckets, as: 'coverageBuckets', class: Google::Apis::GenomicsV1::CoverageBucket, decorator: Google::Apis::GenomicsV1::CoverageBucket::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CoverageBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::GenomicsV1::Range, decorator: Google::Apis::GenomicsV1::Range::Representation
      
          property :mean_coverage, as: 'meanCoverage'
        end
      end
      
      class Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
        end
      end
      
      class SearchReadsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :read_group_set_ids, as: 'readGroupSetIds'
          collection :read_group_ids, as: 'readGroupIds'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchReadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alignments, as: 'alignments', class: Google::Apis::GenomicsV1::Read, decorator: Google::Apis::GenomicsV1::Read::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Read
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :read_group_id, as: 'readGroupId'
          property :read_group_set_id, as: 'readGroupSetId'
          property :fragment_name, as: 'fragmentName'
          property :proper_placement, as: 'properPlacement'
          property :duplicate_fragment, as: 'duplicateFragment'
          property :fragment_length, as: 'fragmentLength'
          property :read_number, as: 'readNumber'
          property :number_reads, as: 'numberReads'
          property :failed_vendor_quality_checks, as: 'failedVendorQualityChecks'
          property :alignment, as: 'alignment', class: Google::Apis::GenomicsV1::LinearAlignment, decorator: Google::Apis::GenomicsV1::LinearAlignment::Representation
      
          property :secondary_alignment, as: 'secondaryAlignment'
          property :supplementary_alignment, as: 'supplementaryAlignment'
          property :aligned_sequence, as: 'alignedSequence'
          collection :aligned_quality, as: 'alignedQuality'
          property :next_mate_position, as: 'nextMatePosition', class: Google::Apis::GenomicsV1::Position, decorator: Google::Apis::GenomicsV1::Position::Representation
      
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class LinearAlignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::GenomicsV1::Position, decorator: Google::Apis::GenomicsV1::Position::Representation
      
          property :mapping_quality, as: 'mappingQuality'
          collection :cigar, as: 'cigar', class: Google::Apis::GenomicsV1::CigarUnit, decorator: Google::Apis::GenomicsV1::CigarUnit::Representation
      
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_name, as: 'referenceName'
          property :position, as: 'position'
          property :reverse_strand, as: 'reverseStrand'
        end
      end
      
      class CigarUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          property :operation_length, as: 'operationLength'
          property :reference_sequence, as: 'referenceSequence'
        end
      end
      
      class StreamReadsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :read_group_set_id, as: 'readGroupSetId'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
          property :shard, as: 'shard'
          property :total_shards, as: 'totalShards'
        end
      end
      
      class StreamReadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alignments, as: 'alignments', class: Google::Apis::GenomicsV1::Read, decorator: Google::Apis::GenomicsV1::Read::Representation
      
        end
      end
      
      class SearchReferenceSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :md5checksums, as: 'md5checksums'
          collection :accessions, as: 'accessions'
          property :assembly_id, as: 'assemblyId'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchReferenceSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reference_sets, as: 'referenceSets', class: Google::Apis::GenomicsV1::ReferenceSet, decorator: Google::Apis::GenomicsV1::ReferenceSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ReferenceSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :reference_ids, as: 'referenceIds'
          property :md5checksum, as: 'md5checksum'
          property :ncbi_taxon_id, as: 'ncbiTaxonId'
          property :description, as: 'description'
          property :assembly_id, as: 'assemblyId'
          property :source_uri, as: 'sourceUri'
          collection :source_accessions, as: 'sourceAccessions'
        end
      end
      
      class SearchReferencesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :md5checksums, as: 'md5checksums'
          collection :accessions, as: 'accessions'
          property :reference_set_id, as: 'referenceSetId'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchReferencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::GenomicsV1::Reference, decorator: Google::Apis::GenomicsV1::Reference::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :length, as: 'length'
          property :md5checksum, as: 'md5checksum'
          property :name, as: 'name'
          property :source_uri, as: 'sourceUri'
          collection :source_accessions, as: 'sourceAccessions'
          property :ncbi_taxon_id, as: 'ncbiTaxonId'
        end
      end
      
      class ListBasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :sequence, as: 'sequence'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ImportVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant_set_id, as: 'variantSetId'
          collection :source_uris, as: 'sourceUris'
          property :format, as: 'format'
          property :normalize_reference_names, as: 'normalizeReferenceNames'
          hash :info_merge_config, as: 'infoMergeConfig'
        end
      end
      
      class VariantSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :id, as: 'id'
          property :reference_set_id, as: 'referenceSetId'
          collection :reference_bounds, as: 'referenceBounds', class: Google::Apis::GenomicsV1::ReferenceBound, decorator: Google::Apis::GenomicsV1::ReferenceBound::Representation
      
          collection :metadata, as: 'metadata', class: Google::Apis::GenomicsV1::VariantSetMetadata, decorator: Google::Apis::GenomicsV1::VariantSetMetadata::Representation
      
          property :name, as: 'name'
          property :description, as: 'description'
        end
      end
      
      class ReferenceBound
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_name, as: 'referenceName'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      class VariantSetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
          property :id, as: 'id'
          property :type, as: 'type'
          property :number, as: 'number'
          property :description, as: 'description'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class ExportVariantSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :call_set_ids, as: 'callSetIds'
          property :project_id, as: 'projectId'
          property :format, as: 'format'
          property :bigquery_dataset, as: 'bigqueryDataset'
          property :bigquery_table, as: 'bigqueryTable'
        end
      end
      
      class SearchVariantSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dataset_ids, as: 'datasetIds'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchVariantSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variant_sets, as: 'variantSets', class: Google::Apis::GenomicsV1::VariantSet, decorator: Google::Apis::GenomicsV1::VariantSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variant_set_ids, as: 'variantSetIds'
          property :variant_name, as: 'variantName'
          collection :call_set_ids, as: 'callSetIds'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
          property :max_calls, as: 'maxCalls'
        end
      end
      
      class SearchVariantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variants, as: 'variants', class: Google::Apis::GenomicsV1::Variant, decorator: Google::Apis::GenomicsV1::Variant::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Variant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant_set_id, as: 'variantSetId'
          property :id, as: 'id'
          collection :names, as: 'names'
          property :created, as: 'created'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
          property :reference_bases, as: 'referenceBases'
          collection :alternate_bases, as: 'alternateBases'
          property :quality, as: 'quality'
          collection :filter, as: 'filter'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :calls, as: 'calls', class: Google::Apis::GenomicsV1::VariantCall, decorator: Google::Apis::GenomicsV1::VariantCall::Representation
      
        end
      end
      
      class VariantCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :call_set_id, as: 'callSetId'
          property :call_set_name, as: 'callSetName'
          collection :genotype, as: 'genotype'
          property :phaseset, as: 'phaseset'
          collection :genotype_likelihood, as: 'genotypeLikelihood'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class MergeVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant_set_id, as: 'variantSetId'
          collection :variants, as: 'variants', class: Google::Apis::GenomicsV1::Variant, decorator: Google::Apis::GenomicsV1::Variant::Representation
      
          hash :info_merge_config, as: 'infoMergeConfig'
        end
      end
      
      class SearchCallSetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variant_set_ids, as: 'variantSetIds'
          property :name, as: 'name'
          property :page_token, as: 'pageToken'
          property :page_size, as: 'pageSize'
        end
      end
      
      class SearchCallSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :call_sets, as: 'callSets', class: Google::Apis::GenomicsV1::CallSet, decorator: Google::Apis::GenomicsV1::CallSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CallSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :sample_id, as: 'sampleId'
          collection :variant_set_ids, as: 'variantSetIds'
          property :created, as: 'created'
          hash :info, as: 'info', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class StreamVariantsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :variant_set_id, as: 'variantSetId'
          collection :call_set_ids, as: 'callSetIds'
          property :reference_name, as: 'referenceName'
          property :start, as: 'start'
          property :end, as: 'end'
        end
      end
      
      class StreamVariantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :variants, as: 'variants', class: Google::Apis::GenomicsV1::Variant, decorator: Google::Apis::GenomicsV1::Variant::Representation
      
        end
      end
      
      class ImportReadGroupSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :read_group_set_ids, as: 'readGroupSetIds'
        end
      end
      
      class ImportVariantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :call_set_ids, as: 'callSetIds'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :create_time, as: 'createTime'
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          hash :request, as: 'request'
          collection :events, as: 'events', class: Google::Apis::GenomicsV1::OperationEvent, decorator: Google::Apis::GenomicsV1::OperationEvent::Representation
      
          property :client_id, as: 'clientId'
          hash :runtime_metadata, as: 'runtimeMetadata'
          hash :labels, as: 'labels'
        end
      end
      
      class OperationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          property :description, as: 'description'
        end
      end
      
      class RuntimeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine, as: 'computeEngine', class: Google::Apis::GenomicsV1::ComputeEngine, decorator: Google::Apis::GenomicsV1::ComputeEngine::Representation
      
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
    end
  end
end
