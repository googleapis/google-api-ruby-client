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
    module GenomicsV1beta2
      
      class AlignReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AlignReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AnnotationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AnnotationSetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BatchAnnotationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BatchAnnotationsResponseEntryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BatchAnnotationsResponseEntryStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BatchCreateAnnotationsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CallRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CallReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CallReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CallSetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CigarUnitRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CoverageBucketRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DatasetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExperimentalCreateJobRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExperimentalCreateJobResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExportReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExportReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExportVariantSetRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExportVariantSetResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExternalIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FastqMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImportReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImportReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImportVariantsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImportVariantsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class Int32ValueRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InterleavedFastqSourceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class JobRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class JobRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LinearAlignmentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListBasesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListCoverageBucketsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListDatasetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MergeVariantsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PairedFastqSourceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PositionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QueryRangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RangePositionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReadRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReadGroupRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReadGroupExperimentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReadGroupProgramRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReadGroupSetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReferenceBoundRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReferenceSetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchAnnotationSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchAnnotationSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchAnnotationsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchAnnotationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchCallSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchCallSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchJobsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchJobsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReadsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReadsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReferenceSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReferenceSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReferencesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchReferencesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchVariantSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchVariantSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchVariantsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchVariantsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class StreamReadsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class StreamReadsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TranscriptRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TranscriptCodingSequenceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TranscriptExonRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VariantRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VariantAnnotationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VariantAnnotationConditionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VariantSetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AlignReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :bam_source_uris, as: 'bamSourceUris'
        
        property :dataset_id, as: 'datasetId'
        property :interleaved_fastq_source, as: 'interleavedFastqSource', class: Google::Apis::GenomicsV1beta2::InterleavedFastqSource, decorator: Google::Apis::GenomicsV1beta2::InterleavedFastqSourceRepresentation
        
        property :paired_fastq_source, as: 'pairedFastqSource', class: Google::Apis::GenomicsV1beta2::PairedFastqSource, decorator: Google::Apis::GenomicsV1beta2::PairedFastqSourceRepresentation
        
        property :read_group_set_id, as: 'readGroupSetId'
      end

      # @private
      class AlignReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class AnnotationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :annotation_set_id, as: 'annotationSetId'
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :name, as: 'name'
        property :position, as: 'position', class: Google::Apis::GenomicsV1beta2::RangePosition, decorator: Google::Apis::GenomicsV1beta2::RangePositionRepresentation
        
        property :transcript, as: 'transcript', class: Google::Apis::GenomicsV1beta2::Transcript, decorator: Google::Apis::GenomicsV1beta2::TranscriptRepresentation
        
        property :type, as: 'type'
        property :variant, as: 'variant', class: Google::Apis::GenomicsV1beta2::VariantAnnotation, decorator: Google::Apis::GenomicsV1beta2::VariantAnnotationRepresentation
      end

      # @private
      class AnnotationSetRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dataset_id, as: 'datasetId'
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :name, as: 'name'
        property :reference_set_id, as: 'referenceSetId'
        property :source_uri, as: 'sourceUri'
        property :type, as: 'type'
      end

      # @private
      class BatchAnnotationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :entries, as: 'entries', class: Google::Apis::GenomicsV1beta2::BatchAnnotationsResponseEntry, decorator: Google::Apis::GenomicsV1beta2::BatchAnnotationsResponseEntryRepresentation
      end

      # @private
      class BatchAnnotationsResponseEntryRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :annotation, as: 'annotation', class: Google::Apis::GenomicsV1beta2::Annotation, decorator: Google::Apis::GenomicsV1beta2::AnnotationRepresentation
        
        property :status, as: 'status', class: Google::Apis::GenomicsV1beta2::BatchAnnotationsResponseEntryStatus, decorator: Google::Apis::GenomicsV1beta2::BatchAnnotationsResponseEntryStatusRepresentation
      end

      # @private
      class BatchAnnotationsResponseEntryStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :code, as: 'code'
        property :message, as: 'message'
      end

      # @private
      class BatchCreateAnnotationsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :annotations, as: 'annotations', class: Google::Apis::GenomicsV1beta2::Annotation, decorator: Google::Apis::GenomicsV1beta2::AnnotationRepresentation
      end

      # @private
      class CallRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :call_set_id, as: 'callSetId'
        property :call_set_name, as: 'callSetName'
        collection :genotype, as: 'genotype'
        
        collection :genotype_likelihood, as: 'genotypeLikelihood'
        
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :phaseset, as: 'phaseset'
      end

      # @private
      class CallReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dataset_id, as: 'datasetId'
        property :read_group_set_id, as: 'readGroupSetId'
        collection :source_uris, as: 'sourceUris'
      end

      # @private
      class CallReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class CallSetRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :created, as: 'created'
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :name, as: 'name'
        property :sample_id, as: 'sampleId'
        collection :variant_set_ids, as: 'variantSetIds'
      end

      # @private
      class CigarUnitRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :operation, as: 'operation'
        property :operation_length, as: 'operationLength'
        property :reference_sequence, as: 'referenceSequence'
      end

      # @private
      class CoverageBucketRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :mean_coverage, as: 'meanCoverage'
        property :range, as: 'range', class: Google::Apis::GenomicsV1beta2::Range, decorator: Google::Apis::GenomicsV1beta2::RangeRepresentation
      end

      # @private
      class DatasetRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :is_public, as: 'isPublic'
        property :name, as: 'name'
        property :project_number, as: 'projectNumber'
      end

      # @private
      class ExperimentalCreateJobRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :align, as: 'align'
        property :call_variants, as: 'callVariants'
        property :gcs_output_path, as: 'gcsOutputPath'
        collection :paired_source_uris, as: 'pairedSourceUris'
        
        property :project_number, as: 'projectNumber'
        collection :source_uris, as: 'sourceUris'
      end

      # @private
      class ExperimentalCreateJobResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class ExportReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :export_uri, as: 'exportUri'
        property :project_number, as: 'projectNumber'
        collection :read_group_set_ids, as: 'readGroupSetIds'
        
        collection :reference_names, as: 'referenceNames'
      end

      # @private
      class ExportReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class ExportVariantSetRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :bigquery_dataset, as: 'bigqueryDataset'
        property :bigquery_table, as: 'bigqueryTable'
        collection :call_set_ids, as: 'callSetIds'
        
        property :format, as: 'format'
        property :project_number, as: 'projectNumber'
      end

      # @private
      class ExportVariantSetResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class ExternalIdRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :source_name, as: 'sourceName'
      end

      # @private
      class FastqMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :library_name, as: 'libraryName'
        property :platform_name, as: 'platformName'
        property :platform_unit, as: 'platformUnit'
        property :read_group_name, as: 'readGroupName'
        property :sample_name, as: 'sampleName'
      end

      # @private
      class ImportReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dataset_id, as: 'datasetId'
        property :partition_strategy, as: 'partitionStrategy'
        property :reference_set_id, as: 'referenceSetId'
        collection :source_uris, as: 'sourceUris'
      end

      # @private
      class ImportReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class ImportVariantsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :format, as: 'format'
        collection :source_uris, as: 'sourceUris'
      end

      # @private
      class ImportVariantsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :job_id, as: 'jobId'
      end

      # @private
      class Int32ValueRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :value, as: 'value'
      end

      # @private
      class InterleavedFastqSourceRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :metadata, as: 'metadata', class: Google::Apis::GenomicsV1beta2::FastqMetadata, decorator: Google::Apis::GenomicsV1beta2::FastqMetadataRepresentation
        
        collection :source_uris, as: 'sourceUris'
      end

      # @private
      class JobRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :created, as: 'created'
        property :detailed_status, as: 'detailedStatus'
        collection :errors, as: 'errors'
        
        property :id, as: 'id'
        collection :imported_ids, as: 'importedIds'
        
        property :project_number, as: 'projectNumber'
        property :request, as: 'request', class: Google::Apis::GenomicsV1beta2::JobRequest, decorator: Google::Apis::GenomicsV1beta2::JobRequestRepresentation
        
        property :status, as: 'status'
        collection :warnings, as: 'warnings'
      end

      # @private
      class JobRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :destination, as: 'destination'
        
        collection :source, as: 'source'
        
        property :type, as: 'type'
      end

      # @private
      class LinearAlignmentRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :cigar, as: 'cigar', class: Google::Apis::GenomicsV1beta2::CigarUnit, decorator: Google::Apis::GenomicsV1beta2::CigarUnitRepresentation
        
        
        property :mapping_quality, as: 'mappingQuality'
        property :position, as: 'position', class: Google::Apis::GenomicsV1beta2::Position, decorator: Google::Apis::GenomicsV1beta2::PositionRepresentation
      end

      # @private
      class ListBasesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        property :offset, as: 'offset'
        property :sequence, as: 'sequence'
      end

      # @private
      class ListCoverageBucketsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :bucket_width, as: 'bucketWidth'
        collection :coverage_buckets, as: 'coverageBuckets', class: Google::Apis::GenomicsV1beta2::CoverageBucket, decorator: Google::Apis::GenomicsV1beta2::CoverageBucketRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ListDatasetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :datasets, as: 'datasets', class: Google::Apis::GenomicsV1beta2::Dataset, decorator: Google::Apis::GenomicsV1beta2::DatasetRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MergeVariantsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :variants, as: 'variants', class: Google::Apis::GenomicsV1beta2::Variant, decorator: Google::Apis::GenomicsV1beta2::VariantRepresentation
      end

      # @private
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :description, as: 'description'
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :key, as: 'key'
        property :number, as: 'number'
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class PairedFastqSourceRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :first_source_uris, as: 'firstSourceUris'
        
        property :metadata, as: 'metadata', class: Google::Apis::GenomicsV1beta2::FastqMetadata, decorator: Google::Apis::GenomicsV1beta2::FastqMetadataRepresentation
        
        collection :second_source_uris, as: 'secondSourceUris'
      end

      # @private
      class PositionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :position, as: 'position'
        property :reference_name, as: 'referenceName'
        property :reverse_strand, as: 'reverseStrand'
      end

      # @private
      class QueryRangeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        property :reference_id, as: 'referenceId'
        property :reference_name, as: 'referenceName'
        property :start, as: 'start'
      end

      # @private
      class RangeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        property :reference_name, as: 'referenceName'
        property :start, as: 'start'
      end

      # @private
      class RangePositionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        property :reference_id, as: 'referenceId'
        property :reference_name, as: 'referenceName'
        property :reverse_strand, as: 'reverseStrand'
        property :start, as: 'start'
      end

      # @private
      class ReadRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :aligned_quality, as: 'alignedQuality'
        
        property :aligned_sequence, as: 'alignedSequence'
        property :alignment, as: 'alignment', class: Google::Apis::GenomicsV1beta2::LinearAlignment, decorator: Google::Apis::GenomicsV1beta2::LinearAlignmentRepresentation
        
        property :duplicate_fragment, as: 'duplicateFragment'
        property :failed_vendor_quality_checks, as: 'failedVendorQualityChecks'
        property :fragment_length, as: 'fragmentLength'
        property :fragment_name, as: 'fragmentName'
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :next_mate_position, as: 'nextMatePosition', class: Google::Apis::GenomicsV1beta2::Position, decorator: Google::Apis::GenomicsV1beta2::PositionRepresentation
        
        property :number_reads, as: 'numberReads'
        property :proper_placement, as: 'properPlacement'
        property :read_group_id, as: 'readGroupId'
        property :read_group_set_id, as: 'readGroupSetId'
        property :read_number, as: 'readNumber'
        property :secondary_alignment, as: 'secondaryAlignment'
        property :supplementary_alignment, as: 'supplementaryAlignment'
      end

      # @private
      class ReadGroupRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dataset_id, as: 'datasetId'
        property :description, as: 'description'
        property :experiment, as: 'experiment', class: Google::Apis::GenomicsV1beta2::ReadGroupExperiment, decorator: Google::Apis::GenomicsV1beta2::ReadGroupExperimentRepresentation
        
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :name, as: 'name'
        property :predicted_insert_size, as: 'predictedInsertSize'
        collection :programs, as: 'programs', class: Google::Apis::GenomicsV1beta2::ReadGroupProgram, decorator: Google::Apis::GenomicsV1beta2::ReadGroupProgramRepresentation
        
        
        property :reference_set_id, as: 'referenceSetId'
        property :sample_id, as: 'sampleId'
      end

      # @private
      class ReadGroupExperimentRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :instrument_model, as: 'instrumentModel'
        property :library_id, as: 'libraryId'
        property :platform_unit, as: 'platformUnit'
        property :sequencing_center, as: 'sequencingCenter'
      end

      # @private
      class ReadGroupProgramRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :command_line, as: 'commandLine'
        property :id, as: 'id'
        property :name, as: 'name'
        property :prev_program_id, as: 'prevProgramId'
        property :version, as: 'version'
      end

      # @private
      class ReadGroupSetRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dataset_id, as: 'datasetId'
        property :filename, as: 'filename'
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :name, as: 'name'
        collection :read_groups, as: 'readGroups', class: Google::Apis::GenomicsV1beta2::ReadGroup, decorator: Google::Apis::GenomicsV1beta2::ReadGroupRepresentation
        
        
        property :reference_set_id, as: 'referenceSetId'
      end

      # @private
      class ReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :length, as: 'length'
        property :md5checksum, as: 'md5checksum'
        property :name, as: 'name'
        property :ncbi_taxon_id, as: 'ncbiTaxonId'
        collection :source_accessions, as: 'sourceAccessions'
        
        property :source_uri, as: 'sourceURI'
      end

      # @private
      class ReferenceBoundRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :reference_name, as: 'referenceName'
        property :upper_bound, as: 'upperBound'
      end

      # @private
      class ReferenceSetRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :assembly_id, as: 'assemblyId'
        property :description, as: 'description'
        property :id, as: 'id'
        property :md5checksum, as: 'md5checksum'
        property :ncbi_taxon_id, as: 'ncbiTaxonId'
        collection :reference_ids, as: 'referenceIds'
        
        collection :source_accessions, as: 'sourceAccessions'
        
        property :source_uri, as: 'sourceURI'
      end

      # @private
      class SearchAnnotationSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :dataset_ids, as: 'datasetIds'
        
        property :name, as: 'name'
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        property :reference_set_id, as: 'referenceSetId'
        collection :types, as: 'types'
      end

      # @private
      class SearchAnnotationSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :annotation_sets, as: 'annotationSets', class: Google::Apis::GenomicsV1beta2::AnnotationSet, decorator: Google::Apis::GenomicsV1beta2::AnnotationSetRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class SearchAnnotationsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :annotation_set_ids, as: 'annotationSetIds'
        
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        property :range, as: 'range', class: Google::Apis::GenomicsV1beta2::QueryRange, decorator: Google::Apis::GenomicsV1beta2::QueryRangeRepresentation
      end

      # @private
      class SearchAnnotationsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :annotations, as: 'annotations', class: Google::Apis::GenomicsV1beta2::Annotation, decorator: Google::Apis::GenomicsV1beta2::AnnotationRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class SearchCallSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :name, as: 'name'
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        collection :variant_set_ids, as: 'variantSetIds'
      end

      # @private
      class SearchCallSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :call_sets, as: 'callSets', class: Google::Apis::GenomicsV1beta2::CallSet, decorator: Google::Apis::GenomicsV1beta2::CallSetRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class SearchJobsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :created_after, as: 'createdAfter'
        property :created_before, as: 'createdBefore'
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        property :project_number, as: 'projectNumber'
        collection :status, as: 'status'
      end

      # @private
      class SearchJobsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :jobs, as: 'jobs', class: Google::Apis::GenomicsV1beta2::Job, decorator: Google::Apis::GenomicsV1beta2::JobRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class SearchReadGroupSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :dataset_ids, as: 'datasetIds'
        
        property :name, as: 'name'
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
      end

      # @private
      class SearchReadGroupSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :read_group_sets, as: 'readGroupSets', class: Google::Apis::GenomicsV1beta2::ReadGroupSet, decorator: Google::Apis::GenomicsV1beta2::ReadGroupSetRepresentation
      end

      # @private
      class SearchReadsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        collection :read_group_ids, as: 'readGroupIds'
        
        collection :read_group_set_ids, as: 'readGroupSetIds'
        
        property :reference_name, as: 'referenceName'
        property :start, as: 'start'
      end

      # @private
      class SearchReadsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :alignments, as: 'alignments', class: Google::Apis::GenomicsV1beta2::Read, decorator: Google::Apis::GenomicsV1beta2::ReadRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class SearchReferenceSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :accessions, as: 'accessions'
        
        property :assembly_id, as: 'assemblyId'
        collection :md5checksums, as: 'md5checksums'
        
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
      end

      # @private
      class SearchReferenceSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :reference_sets, as: 'referenceSets', class: Google::Apis::GenomicsV1beta2::ReferenceSet, decorator: Google::Apis::GenomicsV1beta2::ReferenceSetRepresentation
      end

      # @private
      class SearchReferencesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :accessions, as: 'accessions'
        
        collection :md5checksums, as: 'md5checksums'
        
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        property :reference_set_id, as: 'referenceSetId'
      end

      # @private
      class SearchReferencesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :references, as: 'references', class: Google::Apis::GenomicsV1beta2::Reference, decorator: Google::Apis::GenomicsV1beta2::ReferenceRepresentation
      end

      # @private
      class SearchVariantSetsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :dataset_ids, as: 'datasetIds'
        
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
      end

      # @private
      class SearchVariantSetsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :variant_sets, as: 'variantSets', class: Google::Apis::GenomicsV1beta2::VariantSet, decorator: Google::Apis::GenomicsV1beta2::VariantSetRepresentation
      end

      # @private
      class SearchVariantsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :call_set_ids, as: 'callSetIds'
        
        property :end, as: 'end'
        property :max_calls, as: 'maxCalls'
        property :page_size, as: 'pageSize'
        property :page_token, as: 'pageToken'
        property :reference_name, as: 'referenceName'
        property :start, as: 'start'
        property :variant_name, as: 'variantName'
        collection :variant_set_ids, as: 'variantSetIds'
      end

      # @private
      class SearchVariantsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :variants, as: 'variants', class: Google::Apis::GenomicsV1beta2::Variant, decorator: Google::Apis::GenomicsV1beta2::VariantRepresentation
      end

      # @private
      class StreamReadsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        collection :read_group_set_ids, as: 'readGroupSetIds'
        
        property :reference_name, as: 'referenceName'
        property :start, as: 'start'
      end

      # @private
      class StreamReadsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :alignments, as: 'alignments', class: Google::Apis::GenomicsV1beta2::Read, decorator: Google::Apis::GenomicsV1beta2::ReadRepresentation
      end

      # @private
      class TranscriptRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :coding_sequence, as: 'codingSequence', class: Google::Apis::GenomicsV1beta2::TranscriptCodingSequence, decorator: Google::Apis::GenomicsV1beta2::TranscriptCodingSequenceRepresentation
        
        collection :exons, as: 'exons', class: Google::Apis::GenomicsV1beta2::TranscriptExon, decorator: Google::Apis::GenomicsV1beta2::TranscriptExonRepresentation
        
        
        property :gene_id, as: 'geneId'
      end

      # @private
      class TranscriptCodingSequenceRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        property :start, as: 'start'
      end

      # @private
      class TranscriptExonRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :end, as: 'end'
        property :frame, as: 'frame', class: Google::Apis::GenomicsV1beta2::Int32Value, decorator: Google::Apis::GenomicsV1beta2::Int32ValueRepresentation
        
        property :start, as: 'start'
      end

      # @private
      class VariantRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :alternate_bases, as: 'alternateBases'
        
        collection :calls, as: 'calls', class: Google::Apis::GenomicsV1beta2::Call, decorator: Google::Apis::GenomicsV1beta2::CallRepresentation
        
        
        property :created, as: 'created'
        property :end, as: 'end'
        collection :filter, as: 'filter'
        
        property :id, as: 'id'
        hash :info, as: 'info', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        collection :names, as: 'names'
        
        property :quality, as: 'quality'
        property :reference_bases, as: 'referenceBases'
        property :reference_name, as: 'referenceName'
        property :start, as: 'start'
        property :variant_set_id, as: 'variantSetId'
      end

      # @private
      class VariantAnnotationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :alternate_bases, as: 'alternateBases'
        property :clinical_significance, as: 'clinicalSignificance'
        collection :conditions, as: 'conditions', class: Google::Apis::GenomicsV1beta2::VariantAnnotationCondition, decorator: Google::Apis::GenomicsV1beta2::VariantAnnotationConditionRepresentation
        
        
        property :effect, as: 'effect'
        property :gene_id, as: 'geneId'
        collection :transcript_ids, as: 'transcriptIds'
        
        property :type, as: 'type'
      end

      # @private
      class VariantAnnotationConditionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :concept_id, as: 'conceptId'
        collection :external_ids, as: 'externalIds', class: Google::Apis::GenomicsV1beta2::ExternalId, decorator: Google::Apis::GenomicsV1beta2::ExternalIdRepresentation
        
        
        collection :names, as: 'names'
        
        property :omim_id, as: 'omimId'
      end

      # @private
      class VariantSetRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :dataset_id, as: 'datasetId'
        property :id, as: 'id'
        collection :metadata, as: 'metadata', class: Google::Apis::GenomicsV1beta2::Metadata, decorator: Google::Apis::GenomicsV1beta2::MetadataRepresentation
        
        
        collection :reference_bounds, as: 'referenceBounds', class: Google::Apis::GenomicsV1beta2::ReferenceBound, decorator: Google::Apis::GenomicsV1beta2::ReferenceBoundRepresentation
      end
    end
  end
end
