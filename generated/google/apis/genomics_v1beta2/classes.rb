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
      
      # The read group set align request.
      class AlignReadGroupSetsRequest
        include Google::Apis::Core::Hashable
      
        # The BAM source files for alignment. Exactly one of readGroupSetId,
        # bamSourceUris, interleavedFastqSource or pairedFastqSource must be provided.
        # The caller must have READ permissions for these files.
        # Corresponds to the JSON property `bamSourceUris`
        # @return [Array<String>]
        attr_accessor :bam_source_uris
      
        # Required. The ID of the dataset the newly aligned read group sets will belong
        # to. The caller must have WRITE permissions to this dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Describes an interleaved FASTQ file source for alignment.
        # Corresponds to the JSON property `interleavedFastqSource`
        # @return [Google::Apis::GenomicsV1beta2::InterleavedFastqSource]
        attr_accessor :interleaved_fastq_source
      
        # Describes a paired-end FASTQ file source for alignment.
        # Corresponds to the JSON property `pairedFastqSource`
        # @return [Google::Apis::GenomicsV1beta2::PairedFastqSource]
        attr_accessor :paired_fastq_source
      
        # The ID of the read group set which will be aligned. A new read group set will
        # be generated to hold the aligned data, the originals will not be modified. The
        # caller must have READ permissions for this read group set. Exactly one of
        # readGroupSetId, bamSourceUris, interleavedFastqSource or pairedFastqSource
        # must be provided.
        # Corresponds to the JSON property `readGroupSetId`
        # @return [String]
        attr_accessor :read_group_set_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bam_source_uris = args[:bam_source_uris] unless args[:bam_source_uris].nil?
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @interleaved_fastq_source = args[:interleaved_fastq_source] unless args[:interleaved_fastq_source].nil?
          @paired_fastq_source = args[:paired_fastq_source] unless args[:paired_fastq_source].nil?
          @read_group_set_id = args[:read_group_set_id] unless args[:read_group_set_id].nil?
        end
      end
      
      # The read group set align response.
      class AlignReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # An annotation describes a region of reference genome. The value of an
      # annotation may be one of several canonical types, supplemented by arbitrary
      # info tags. A variant annotation is represented by one or more of these
      # canonical types. An annotation is not inherently associated with a specific
      # sample or individual (though a client could choose to use annotations in this
      # way). Example canonical annotation types are 'Gene' and 'Variant'.
      class Annotation
        include Google::Apis::Core::Hashable
      
        # The ID of the containing annotation set.
        # Corresponds to the JSON property `annotationSetId`
        # @return [String]
        attr_accessor :annotation_set_id
      
        # The generated unique ID for this annotation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # The display name of this annotation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A 0-based half-open genomic coordinate range over a reference sequence, for
        # representing the position of a genomic resource.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::GenomicsV1beta2::RangePosition]
        attr_accessor :position
      
        # A transcript represents the assertion that a particular region of the
        # reference genome may be transcribed as RNA.
        # Corresponds to the JSON property `transcript`
        # @return [Google::Apis::GenomicsV1beta2::Transcript]
        attr_accessor :transcript
      
        # The data type for this annotation. Must match the containing annotation set's
        # type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A Variant annotation.
        # Corresponds to the JSON property `variant`
        # @return [Google::Apis::GenomicsV1beta2::VariantAnnotation]
        attr_accessor :variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_set_id = args[:annotation_set_id] unless args[:annotation_set_id].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @name = args[:name] unless args[:name].nil?
          @position = args[:position] unless args[:position].nil?
          @transcript = args[:transcript] unless args[:transcript].nil?
          @type = args[:type] unless args[:type].nil?
          @variant = args[:variant] unless args[:variant].nil?
        end
      end
      
      # An annotation set is a logical grouping of annotations that share consistent
      # type information and provenance. Examples of annotation sets include 'all
      # genes from refseq', and 'all variant annotations from ClinVar'.
      class AnnotationSet
        include Google::Apis::Core::Hashable
      
        # The ID of the containing dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The generated unique ID for this annotation set.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # The display name for this annotation set.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the reference set that defines the coordinate space for this set's
        # annotations.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # The source URI describing the file from which this annotation set was
        # generated, if any.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # The type of annotations contained within this set.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @name = args[:name] unless args[:name].nil?
          @reference_set_id = args[:reference_set_id] unless args[:reference_set_id].nil?
          @source_uri = args[:source_uri] unless args[:source_uri].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class BatchAnnotationsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting per-annotation entries, ordered consistently with the original
        # request.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::GenomicsV1beta2::BatchAnnotationsResponseEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # 
      class BatchAnnotationsResponseEntry
        include Google::Apis::Core::Hashable
      
        # An annotation describes a region of reference genome. The value of an
        # annotation may be one of several canonical types, supplemented by arbitrary
        # info tags. A variant annotation is represented by one or more of these
        # canonical types. An annotation is not inherently associated with a specific
        # sample or individual (though a client could choose to use annotations in this
        # way). Example canonical annotation types are 'Gene' and 'Variant'.
        # Corresponds to the JSON property `annotation`
        # @return [Google::Apis::GenomicsV1beta2::Annotation]
        attr_accessor :annotation
      
        # 
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GenomicsV1beta2::BatchAnnotationsResponseEntryStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation = args[:annotation] unless args[:annotation].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # 
      class BatchAnnotationsResponseEntryStatus
        include Google::Apis::Core::Hashable
      
        # The HTTP status code for this operation.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # Error message for this status, if any.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # 
      class BatchCreateAnnotationsRequest
        include Google::Apis::Core::Hashable
      
        # The annotations to be created. At most 4096 can be specified in a single
        # request.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::GenomicsV1beta2::Annotation>]
        attr_accessor :annotations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] unless args[:annotations].nil?
        end
      end
      
      # A call represents the determination of genotype with respect to a particular
      # variant. It may include associated information such as quality and phasing.
      # For example, a call might assign a probability of 0.32 to the occurrence of a
      # SNP named rs1234 in a call set with the name NA12345.
      class Call
        include Google::Apis::Core::Hashable
      
        # The ID of the call set this variant call belongs to.
        # Corresponds to the JSON property `callSetId`
        # @return [String]
        attr_accessor :call_set_id
      
        # The name of the call set this variant call belongs to.
        # Corresponds to the JSON property `callSetName`
        # @return [String]
        attr_accessor :call_set_name
      
        # The genotype of this variant call. Each value represents either the value of
        # the referenceBases field or a 1-based index into alternateBases. If a variant
        # had a referenceBases value of T and an alternateBases value of ["A", "C"], and
        # the genotype was [2, 1], that would mean the call represented the heterozygous
        # value CA for this variant. If the genotype was instead [0, 1], the represented
        # value would be TA. Ordering of the genotype values is important if the
        # phaseset is present. If a genotype is not called (that is, a . is present in
        # the GT string) -1 is returned.
        # Corresponds to the JSON property `genotype`
        # @return [Array<Fixnum>]
        attr_accessor :genotype
      
        # The genotype likelihoods for this variant call. Each array entry represents
        # how likely a specific genotype is for this call. The value ordering is defined
        # by the GL tag in the VCF spec. If Phred-scaled genotype likelihood scores (PL)
        # are available and log10(P) genotype likelihood scores (GL) are not, PL scores
        # are converted to GL scores. If both are available, PL scores are stored in
        # info.
        # Corresponds to the JSON property `genotypeLikelihood`
        # @return [Array<Float>]
        attr_accessor :genotype_likelihood
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # If this field is present, this variant call's genotype ordering implies the
        # phase of the bases and is consistent with any other variant calls in the same
        # reference sequence which have the same phaseset value. When importing data
        # from VCF, if the genotype data was phased but no phase set was specified this
        # field will be set to *.
        # Corresponds to the JSON property `phaseset`
        # @return [String]
        attr_accessor :phaseset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_set_id = args[:call_set_id] unless args[:call_set_id].nil?
          @call_set_name = args[:call_set_name] unless args[:call_set_name].nil?
          @genotype = args[:genotype] unless args[:genotype].nil?
          @genotype_likelihood = args[:genotype_likelihood] unless args[:genotype_likelihood].nil?
          @info = args[:info] unless args[:info].nil?
          @phaseset = args[:phaseset] unless args[:phaseset].nil?
        end
      end
      
      # The read group set call request.
      class CallReadGroupSetsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the dataset the called variants will belong to. The caller
        # must have WRITE permissions to this dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The IDs of the read group sets which will be called. The caller must have READ
        # permissions for these read group sets. One of readGroupSetId or sourceUris
        # must be provided.
        # Corresponds to the JSON property `readGroupSetId`
        # @return [String]
        attr_accessor :read_group_set_id
      
        # A list of URIs pointing at BAM files in Google Cloud Storage which will be
        # called. FASTQ files are not allowed. The caller must have READ permissions for
        # these files. One of readGroupSetId or sourceUris must be provided.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @read_group_set_id = args[:read_group_set_id] unless args[:read_group_set_id].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
        end
      end
      
      # The read group set call response.
      class CallReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # A call set is a collection of variant calls, typically for one sample. It
      # belongs to a variant set.
      class CallSet
        include Google::Apis::Core::Hashable
      
        # The date this call set was created in milliseconds from the epoch.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # The Google generated ID of the call set, immutable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # The call set name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The sample ID this call set corresponds to.
        # Corresponds to the JSON property `sampleId`
        # @return [String]
        attr_accessor :sample_id
      
        # The IDs of the variant sets this call set belongs to.
        # Corresponds to the JSON property `variantSetIds`
        # @return [Array<String>]
        attr_accessor :variant_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] unless args[:created].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @name = args[:name] unless args[:name].nil?
          @sample_id = args[:sample_id] unless args[:sample_id].nil?
          @variant_set_ids = args[:variant_set_ids] unless args[:variant_set_ids].nil?
        end
      end
      
      # A single CIGAR operation.
      class CigarUnit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The number of bases that the operation runs for. Required.
        # Corresponds to the JSON property `operationLength`
        # @return [String]
        attr_accessor :operation_length
      
        # referenceSequence is only used at mismatches (SEQUENCE_MISMATCH) and deletions
        # (DELETE). Filling this field replaces SAM's MD tag. If the relevant
        # information is not available, this field is unset.
        # Corresponds to the JSON property `referenceSequence`
        # @return [String]
        attr_accessor :reference_sequence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] unless args[:operation].nil?
          @operation_length = args[:operation_length] unless args[:operation_length].nil?
          @reference_sequence = args[:reference_sequence] unless args[:reference_sequence].nil?
        end
      end
      
      # A bucket over which read coverage has been precomputed. A bucket corresponds
      # to a specific range of the reference sequence.
      class CoverageBucket
        include Google::Apis::Core::Hashable
      
        # The average number of reads which are aligned to each individual reference
        # base in this bucket.
        # Corresponds to the JSON property `meanCoverage`
        # @return [Float]
        attr_accessor :mean_coverage
      
        # A 0-based half-open genomic coordinate range over a reference sequence.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::GenomicsV1beta2::Range]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mean_coverage = args[:mean_coverage] unless args[:mean_coverage].nil?
          @range = args[:range] unless args[:range].nil?
        end
      end
      
      # A Dataset is a collection of genomic data.
      class Dataset
        include Google::Apis::Core::Hashable
      
        # The time this dataset was created, in seconds from the epoch.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The Google generated ID of the dataset, immutable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Flag indicating whether or not a dataset is publicly viewable. If a dataset is
        # not public, it inherits viewing permissions from its project.
        # Corresponds to the JSON property `isPublic`
        # @return [Boolean]
        attr_accessor :is_public
        alias_method :is_public?, :is_public
      
        # The dataset name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Google Developers Console project number that this dataset belongs to.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] unless args[:create_time].nil?
          @id = args[:id] unless args[:id].nil?
          @is_public = args[:is_public] unless args[:is_public].nil?
          @name = args[:name] unless args[:name].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
        end
      end
      
      # The job creation request.
      class ExperimentalCreateJobRequest
        include Google::Apis::Core::Hashable
      
        # Specifies whether or not to run the alignment pipeline. Either align or
        # callVariants must be set.
        # Corresponds to the JSON property `align`
        # @return [Boolean]
        attr_accessor :align
        alias_method :align?, :align
      
        # Specifies whether or not to run the variant calling pipeline. Either align or
        # callVariants must be set.
        # Corresponds to the JSON property `callVariants`
        # @return [Boolean]
        attr_accessor :call_variants
        alias_method :call_variants?, :call_variants
      
        # Specifies where to copy the results of certain pipelines. This should be in
        # the form of gs://bucket/path.
        # Corresponds to the JSON property `gcsOutputPath`
        # @return [String]
        attr_accessor :gcs_output_path
      
        # A list of Google Cloud Storage URIs of paired end .fastq files to operate upon.
        # If specified, this represents the second file of each paired .fastq file. The
        # first file of each pair should be specified in sourceUris.
        # Corresponds to the JSON property `pairedSourceUris`
        # @return [Array<String>]
        attr_accessor :paired_source_uris
      
        # Required. The Google Cloud Project ID with which to associate the request.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # A list of Google Cloud Storage URIs of data files to operate upon. These can
        # be .bam, interleaved .fastq, or paired .fastq. If specifying paired .fastq
        # files, the first of each pair of files should be listed here, and the second
        # of each pair should be listed in pairedSourceUris.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @align = args[:align] unless args[:align].nil?
          @call_variants = args[:call_variants] unless args[:call_variants].nil?
          @gcs_output_path = args[:gcs_output_path] unless args[:gcs_output_path].nil?
          @paired_source_uris = args[:paired_source_uris] unless args[:paired_source_uris].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
        end
      end
      
      # The job creation response.
      class ExperimentalCreateJobResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # The read group set export request.
      class ExportReadGroupSetsRequest
        include Google::Apis::Core::Hashable
      
        # Required. A Google Cloud Storage URI for the exported BAM file. The currently
        # authenticated user must have write access to the new file. An error will be
        # returned if the URI already contains data.
        # Corresponds to the JSON property `exportUri`
        # @return [String]
        attr_accessor :export_uri
      
        # Required. The Google Developers Console project number that owns this export.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # Required. The IDs of the read group sets to export.
        # Corresponds to the JSON property `readGroupSetIds`
        # @return [Array<String>]
        attr_accessor :read_group_set_ids
      
        # The reference names to export. If this is not specified, all reference
        # sequences, including unmapped reads, are exported. Use * to export only
        # unmapped reads.
        # Corresponds to the JSON property `referenceNames`
        # @return [Array<String>]
        attr_accessor :reference_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_uri = args[:export_uri] unless args[:export_uri].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
          @read_group_set_ids = args[:read_group_set_ids] unless args[:read_group_set_ids].nil?
          @reference_names = args[:reference_names] unless args[:reference_names].nil?
        end
      end
      
      # The read group set export response.
      class ExportReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # The variant data export request.
      class ExportVariantSetRequest
        include Google::Apis::Core::Hashable
      
        # Required. The BigQuery dataset to export data to. This dataset must already
        # exist. Note that this is distinct from the Genomics concept of "dataset".
        # Corresponds to the JSON property `bigqueryDataset`
        # @return [String]
        attr_accessor :bigquery_dataset
      
        # Required. The BigQuery table to export data to. If the table doesn't exist, it
        # will be created. If it already exists, it will be overwritten.
        # Corresponds to the JSON property `bigqueryTable`
        # @return [String]
        attr_accessor :bigquery_table
      
        # If provided, only variant call information from the specified call sets will
        # be exported. By default all variant calls are exported.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        # The format for the exported data.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Required. The Google Cloud project number that owns the destination BigQuery
        # dataset. The caller must have WRITE access to this project. This project will
        # also own the resulting export job.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_dataset = args[:bigquery_dataset] unless args[:bigquery_dataset].nil?
          @bigquery_table = args[:bigquery_table] unless args[:bigquery_table].nil?
          @call_set_ids = args[:call_set_ids] unless args[:call_set_ids].nil?
          @format = args[:format] unless args[:format].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
        end
      end
      
      # The variant data export response.
      class ExportVariantSetResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # 
      class ExternalId
        include Google::Apis::Core::Hashable
      
        # The id used by the source of this data.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the source of this data.
        # Corresponds to the JSON property `sourceName`
        # @return [String]
        attr_accessor :source_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @source_name = args[:source_name] unless args[:source_name].nil?
        end
      end
      
      # 
      class FastqMetadata
        include Google::Apis::Core::Hashable
      
        # Optionally specifies the library name for alignment from FASTQ.
        # Corresponds to the JSON property `libraryName`
        # @return [String]
        attr_accessor :library_name
      
        # Optionally specifies the platform name for alignment from FASTQ. For example:
        # CAPILLARY, LS454, ILLUMINA, SOLID, HELICOS, IONTORRENT, PACBIO.
        # Corresponds to the JSON property `platformName`
        # @return [String]
        attr_accessor :platform_name
      
        # Optionally specifies the platform unit for alignment from FASTQ. For example:
        # flowcell-barcode.lane for Illumina or slide for SOLID.
        # Corresponds to the JSON property `platformUnit`
        # @return [String]
        attr_accessor :platform_unit
      
        # Optionally specifies the read group name for alignment from FASTQ.
        # Corresponds to the JSON property `readGroupName`
        # @return [String]
        attr_accessor :read_group_name
      
        # Optionally specifies the sample name for alignment from FASTQ.
        # Corresponds to the JSON property `sampleName`
        # @return [String]
        attr_accessor :sample_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @library_name = args[:library_name] unless args[:library_name].nil?
          @platform_name = args[:platform_name] unless args[:platform_name].nil?
          @platform_unit = args[:platform_unit] unless args[:platform_unit].nil?
          @read_group_name = args[:read_group_name] unless args[:read_group_name].nil?
          @sample_name = args[:sample_name] unless args[:sample_name].nil?
        end
      end
      
      # The read group set import request.
      class ImportReadGroupSetsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the dataset these read group sets will belong to. The
        # caller must have WRITE permissions to this dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The partition strategy describes how read groups are partitioned into read
        # group sets.
        # Corresponds to the JSON property `partitionStrategy`
        # @return [String]
        attr_accessor :partition_strategy
      
        # The reference set to which the imported read group sets are aligned to, if any.
        # The reference names of this reference set must be a superset of those found
        # in the imported file headers. If no reference set id is provided, a best
        # effort is made to associate with a matching reference set.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # A list of URIs pointing at BAM files in Google Cloud Storage.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @partition_strategy = args[:partition_strategy] unless args[:partition_strategy].nil?
          @reference_set_id = args[:reference_set_id] unless args[:reference_set_id].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
        end
      end
      
      # The read group set import response.
      class ImportReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # The variant data import request.
      class ImportVariantsRequest
        include Google::Apis::Core::Hashable
      
        # The format of the variant data being imported. If unspecified, defaults to to "
        # VCF".
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Convert reference names to the canonical representation. hg19 haploytypes (
        # those reference names containing "_hap") are not modified in any way. All
        # other reference names are modified according to the following rules: The
        # reference name is capitalized. The "chr" prefix is dropped for all autosomes
        # and sex chromsomes. For example "chr17" becomes "17" and "chrX" becomes "X".
        # All mitochondrial chromosomes ("chrM", "chrMT", etc) become "MT".
        # Corresponds to the JSON property `normalizeReferenceNames`
        # @return [Boolean]
        attr_accessor :normalize_reference_names
        alias_method :normalize_reference_names?, :normalize_reference_names
      
        # A list of URIs referencing variant files in Google Cloud Storage. URIs can
        # include wildcards as described here. Note that recursive wildcards ('**') are
        # not supported.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] unless args[:format].nil?
          @normalize_reference_names = args[:normalize_reference_names] unless args[:normalize_reference_names].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
        end
      end
      
      # The variant data import response.
      class ImportVariantsResponse
        include Google::Apis::Core::Hashable
      
        # A job ID that can be used to get status information.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
        end
      end
      
      # Wrapper message for `int32`.
      # The JSON representation for `Int32Value` is JSON number.
      class Int32Value
        include Google::Apis::Core::Hashable
      
        # The int32 value.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Describes an interleaved FASTQ file source for alignment.
      class InterleavedFastqSource
        include Google::Apis::Core::Hashable
      
        # Optionally specifies the metadata to be associated with the final aligned read
        # group set.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::GenomicsV1beta2::FastqMetadata]
        attr_accessor :metadata
      
        # A list of URIs pointing at interleaved FASTQ files in Google Cloud Storage
        # which will be aligned. The caller must have READ permissions for these files.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] unless args[:metadata].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
        end
      end
      
      # A Job represents an ongoing process that can be monitored for status
      # information.
      class Job
        include Google::Apis::Core::Hashable
      
        # The date this job was created, in milliseconds from the epoch.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # A more detailed description of this job's current status.
        # Corresponds to the JSON property `detailedStatus`
        # @return [String]
        attr_accessor :detailed_status
      
        # Any errors that occurred during processing.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # The job ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # If this Job represents an import, this field will contain the IDs of the
        # objects that were successfully imported.
        # Corresponds to the JSON property `importedIds`
        # @return [Array<String>]
        attr_accessor :imported_ids
      
        # The Google Developers Console project number to which this job belongs.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # A summary representation of the service request that spawned the job.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::GenomicsV1beta2::JobRequest]
        attr_accessor :request
      
        # The status of this job.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Any warnings that occurred during processing.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] unless args[:created].nil?
          @detailed_status = args[:detailed_status] unless args[:detailed_status].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @id = args[:id] unless args[:id].nil?
          @imported_ids = args[:imported_ids] unless args[:imported_ids].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
          @request = args[:request] unless args[:request].nil?
          @status = args[:status] unless args[:status].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
      end
      
      # A summary representation of the service request that spawned the job.
      class JobRequest
        include Google::Apis::Core::Hashable
      
        # The data destination of the request, for example, a Google BigQuery Table or
        # Dataset ID.
        # Corresponds to the JSON property `destination`
        # @return [Array<String>]
        attr_accessor :destination
      
        # The data source of the request, for example, a Google Cloud Storage object
        # path or Readset ID.
        # Corresponds to the JSON property `source`
        # @return [Array<String>]
        attr_accessor :source
      
        # The original request type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] unless args[:destination].nil?
          @source = args[:source] unless args[:source].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Used to hold basic key value information.
      class KeyValue
        include Google::Apis::Core::Hashable
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The string values.
        # Corresponds to the JSON property `value`
        # @return [Array<String>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] unless args[:key].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # A linear alignment can be represented by one CIGAR string. Describes the
      # mapped position and local alignment of the read to the reference.
      class LinearAlignment
        include Google::Apis::Core::Hashable
      
        # Represents the local alignment of this sequence (alignment matches, indels,
        # etc) against the reference.
        # Corresponds to the JSON property `cigar`
        # @return [Array<Google::Apis::GenomicsV1beta2::CigarUnit>]
        attr_accessor :cigar
      
        # The mapping quality of this alignment. Represents how likely the read maps to
        # this position as opposed to other locations.
        # Corresponds to the JSON property `mappingQuality`
        # @return [Fixnum]
        attr_accessor :mapping_quality
      
        # An abstraction for referring to a genomic position, in relation to some
        # already known reference. For now, represents a genomic position as a reference
        # name, a base number on that reference (0-based), and a determination of
        # forward or reverse strand.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::GenomicsV1beta2::Position]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cigar = args[:cigar] unless args[:cigar].nil?
          @mapping_quality = args[:mapping_quality] unless args[:mapping_quality].nil?
          @position = args[:position] unless args[:position].nil?
        end
      end
      
      # 
      class ListBasesResponse
        include Google::Apis::Core::Hashable
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The offset position (0-based) of the given sequence from the start of this
        # Reference. This value will differ for each page in a paginated request.
        # Corresponds to the JSON property `offset`
        # @return [String]
        attr_accessor :offset
      
        # A substring of the bases that make up this reference.
        # Corresponds to the JSON property `sequence`
        # @return [String]
        attr_accessor :sequence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @offset = args[:offset] unless args[:offset].nil?
          @sequence = args[:sequence] unless args[:sequence].nil?
        end
      end
      
      # 
      class ListCoverageBucketsResponse
        include Google::Apis::Core::Hashable
      
        # The length of each coverage bucket in base pairs. Note that buckets at the end
        # of a reference sequence may be shorter. This value is omitted if the bucket
        # width is infinity (the default behaviour, with no range or targetBucketWidth).
        # Corresponds to the JSON property `bucketWidth`
        # @return [String]
        attr_accessor :bucket_width
      
        # The coverage buckets. The list of buckets is sparse; a bucket with 0
        # overlapping reads is not returned. A bucket never crosses more than one
        # reference sequence. Each bucket has width bucketWidth, unless its end is the
        # end of the reference sequence.
        # Corresponds to the JSON property `coverageBuckets`
        # @return [Array<Google::Apis::GenomicsV1beta2::CoverageBucket>]
        attr_accessor :coverage_buckets
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_width = args[:bucket_width] unless args[:bucket_width].nil?
          @coverage_buckets = args[:coverage_buckets] unless args[:coverage_buckets].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The dataset list response.
      class ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching Datasets.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::GenomicsV1beta2::Dataset>]
        attr_accessor :datasets
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] unless args[:datasets].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class MergeVariantsRequest
        include Google::Apis::Core::Hashable
      
        # The variants to be merged with existing variants.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::GenomicsV1beta2::Variant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variants = args[:variants] unless args[:variants].nil?
        end
      end
      
      # Metadata describes a single piece of variant call metadata. These data include
      # a top level key and either a single value string (value) or a list of key-
      # value pairs (info.) Value and info are mutually exclusive.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # A textual description of this metadata.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-provided ID field, not enforced by this API. Two or more pieces of
        # structured metadata with identical id and key fields are considered equivalent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # The top-level key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The number of values that can be included in a field described by this
        # metadata.
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        # The type of data. Possible types include: Integer, Float, Flag, Character, and
        # String.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value field for simple metadata
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @key = args[:key] unless args[:key].nil?
          @number = args[:number] unless args[:number].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Describes a paired-end FASTQ file source for alignment.
      class PairedFastqSource
        include Google::Apis::Core::Hashable
      
        # A list of URIs pointing at paired end FASTQ files in Google Cloud Storage
        # which will be aligned. The first of each paired file should be specified here,
        # in an order that matches the second of each paired file specified in
        # secondSourceUris. For example: firstSourceUris: [file1_1.fq, file2_1.fq],
        # secondSourceUris: [file1_2.fq, file2_2.fq]. The caller must have READ
        # permissions for these files.
        # Corresponds to the JSON property `firstSourceUris`
        # @return [Array<String>]
        attr_accessor :first_source_uris
      
        # Optionally specifies the metadata to be associated with the final aligned read
        # group set.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::GenomicsV1beta2::FastqMetadata]
        attr_accessor :metadata
      
        # A list of URIs pointing at paired end FASTQ files in Google Cloud Storage
        # which will be aligned. The second of each paired file should be specified here,
        # in an order that matches the first of each paired file specified in
        # firstSourceUris. For example: firstSourceUris: [file1_1.fq, file2_1.fq],
        # secondSourceUris: [file1_2.fq, file2_2.fq]. The caller must have READ
        # permissions for these files.
        # Corresponds to the JSON property `secondSourceUris`
        # @return [Array<String>]
        attr_accessor :second_source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_source_uris = args[:first_source_uris] unless args[:first_source_uris].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @second_source_uris = args[:second_source_uris] unless args[:second_source_uris].nil?
        end
      end
      
      # An abstraction for referring to a genomic position, in relation to some
      # already known reference. For now, represents a genomic position as a reference
      # name, a base number on that reference (0-based), and a determination of
      # forward or reverse strand.
      class Position
        include Google::Apis::Core::Hashable
      
        # The 0-based offset from the start of the forward strand for that reference.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        # The name of the reference in whatever reference set is being used.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # Whether this position is on the reverse strand, as opposed to the forward
        # strand.
        # Corresponds to the JSON property `reverseStrand`
        # @return [Boolean]
        attr_accessor :reverse_strand
        alias_method :reverse_strand?, :reverse_strand
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @position = args[:position] unless args[:position].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @reverse_strand = args[:reverse_strand] unless args[:reverse_strand].nil?
        end
      end
      
      # A 0-based half-open genomic coordinate range for search requests.
      class QueryRange
        include Google::Apis::Core::Hashable
      
        # The end position of the range on the reference, 0-based exclusive. If
        # specified, referenceId or referenceName must also be specified. If unset or 0,
        # defaults to the length of the reference.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The ID of the reference to query. At most one of referenceId and referenceName
        # should be specified.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # The name of the reference to query, within the reference set associated with
        # this query. At most one of referenceId and referenceName pshould be specified.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive. If
        # specified, referenceId or referenceName must also be specified. Defaults to 0.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @reference_id = args[:reference_id] unless args[:reference_id].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # A 0-based half-open genomic coordinate range over a reference sequence.
      class Range
        include Google::Apis::Core::Hashable
      
        # The end position of the range on the reference, 0-based exclusive. If
        # specified, referenceName must also be specified.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The reference sequence name, for example chr1, 1, or chrX.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive. If
        # specified, referenceName must also be specified.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # A 0-based half-open genomic coordinate range over a reference sequence, for
      # representing the position of a genomic resource.
      class RangePosition
        include Google::Apis::Core::Hashable
      
        # The end position of the range on the reference, 0-based exclusive.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The ID of the Google Genomics reference associated with this range.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # The display name corresponding to the reference specified by referenceId, for
        # example chr1, 1, or chrX.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # Whether this range refers to the reverse strand, as opposed to the forward
        # strand. Note that regardless of this field, the start/end position of the
        # range always refer to the forward strand.
        # Corresponds to the JSON property `reverseStrand`
        # @return [Boolean]
        attr_accessor :reverse_strand
        alias_method :reverse_strand?, :reverse_strand
      
        # The start position of the range on the reference, 0-based inclusive.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @reference_id = args[:reference_id] unless args[:reference_id].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @reverse_strand = args[:reverse_strand] unless args[:reverse_strand].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # A read alignment describes a linear alignment of a string of DNA to a
      # reference sequence, in addition to metadata about the fragment (the molecule
      # of DNA sequenced) and the read (the bases which were read by the sequencer). A
      # read is equivalent to a line in a SAM file. A read belongs to exactly one read
      # group and exactly one read group set. Generating a reference-aligned sequence
      # string When interacting with mapped reads, it's often useful to produce a
      # string representing the local alignment of the read to reference. The
      # following pseudocode demonstrates one way of doing this:
      # out = "" offset = 0 for c in read.alignment.cigar ` switch c.operation ` case "
      # ALIGNMENT_MATCH", "SEQUENCE_MATCH", "SEQUENCE_MISMATCH": out += read.
      # alignedSequence[offset:offset+c.operationLength] offset += c.operationLength
      # break case "CLIP_SOFT", "INSERT": offset += c.operationLength break case "PAD":
      # out += repeat("*", c.operationLength) break case "DELETE": out += repeat("-",
      # c.operationLength) break case "SKIP": out += repeat(" ", c.operationLength)
      # break case "CLIP_HARD": break ` ` return out
      # Converting to SAM's CIGAR string The following pseudocode generates a SAM
      # CIGAR string from the cigar field. Note that this is a lossy conversion (cigar.
      # referenceSequence is lost).
      # cigarMap = ` "ALIGNMENT_MATCH": "M", "INSERT": "I", "DELETE": "D", "SKIP": "N",
      # "CLIP_SOFT": "S", "CLIP_HARD": "H", "PAD": "P", "SEQUENCE_MATCH": "=", "
      # SEQUENCE_MISMATCH": "X", ` cigarStr = "" for c in read.alignment.cigar `
      # cigarStr += c.operationLength + cigarMap[c.operation] ` return cigarStr
      class Read
        include Google::Apis::Core::Hashable
      
        # The quality of the read sequence contained in this alignment record.
        # alignedSequence and alignedQuality may be shorter than the full read sequence
        # and quality. This will occur if the alignment is part of a chimeric alignment,
        # or if the read was trimmed. When this occurs, the CIGAR for this read will
        # begin/end with a hard clip operator that will indicate the length of the
        # excised sequence.
        # Corresponds to the JSON property `alignedQuality`
        # @return [Array<Fixnum>]
        attr_accessor :aligned_quality
      
        # The bases of the read sequence contained in this alignment record, without
        # CIGAR operations applied. alignedSequence and alignedQuality may be shorter
        # than the full read sequence and quality. This will occur if the alignment is
        # part of a chimeric alignment, or if the read was trimmed. When this occurs,
        # the CIGAR for this read will begin/end with a hard clip operator that will
        # indicate the length of the excised sequence.
        # Corresponds to the JSON property `alignedSequence`
        # @return [String]
        attr_accessor :aligned_sequence
      
        # A linear alignment can be represented by one CIGAR string. Describes the
        # mapped position and local alignment of the read to the reference.
        # Corresponds to the JSON property `alignment`
        # @return [Google::Apis::GenomicsV1beta2::LinearAlignment]
        attr_accessor :alignment
      
        # The fragment is a PCR or optical duplicate (SAM flag 0x400)
        # Corresponds to the JSON property `duplicateFragment`
        # @return [Boolean]
        attr_accessor :duplicate_fragment
        alias_method :duplicate_fragment?, :duplicate_fragment
      
        # SAM flag 0x200
        # Corresponds to the JSON property `failedVendorQualityChecks`
        # @return [Boolean]
        attr_accessor :failed_vendor_quality_checks
        alias_method :failed_vendor_quality_checks?, :failed_vendor_quality_checks
      
        # The observed length of the fragment, equivalent to TLEN in SAM.
        # Corresponds to the JSON property `fragmentLength`
        # @return [Fixnum]
        attr_accessor :fragment_length
      
        # The fragment name. Equivalent to QNAME (query template name) in SAM.
        # Corresponds to the JSON property `fragmentName`
        # @return [String]
        attr_accessor :fragment_name
      
        # The unique ID for this read. This is a generated unique ID, not to be confused
        # with fragmentName.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # An abstraction for referring to a genomic position, in relation to some
        # already known reference. For now, represents a genomic position as a reference
        # name, a base number on that reference (0-based), and a determination of
        # forward or reverse strand.
        # Corresponds to the JSON property `nextMatePosition`
        # @return [Google::Apis::GenomicsV1beta2::Position]
        attr_accessor :next_mate_position
      
        # The number of reads in the fragment (extension to SAM flag 0x1).
        # Corresponds to the JSON property `numberReads`
        # @return [Fixnum]
        attr_accessor :number_reads
      
        # The orientation and the distance between reads from the fragment are
        # consistent with the sequencing protocol (SAM flag 0x2)
        # Corresponds to the JSON property `properPlacement`
        # @return [Boolean]
        attr_accessor :proper_placement
        alias_method :proper_placement?, :proper_placement
      
        # The ID of the read group this read belongs to. (Every read must belong to
        # exactly one read group.)
        # Corresponds to the JSON property `readGroupId`
        # @return [String]
        attr_accessor :read_group_id
      
        # The ID of the read group set this read belongs to. (Every read must belong to
        # exactly one read group set.)
        # Corresponds to the JSON property `readGroupSetId`
        # @return [String]
        attr_accessor :read_group_set_id
      
        # The read number in sequencing. 0-based and less than numberReads. This field
        # replaces SAM flag 0x40 and 0x80.
        # Corresponds to the JSON property `readNumber`
        # @return [Fixnum]
        attr_accessor :read_number
      
        # Whether this alignment is secondary. Equivalent to SAM flag 0x100. A secondary
        # alignment represents an alternative to the primary alignment for this read.
        # Aligners may return secondary alignments if a read can map ambiguously to
        # multiple coordinates in the genome. By convention, each read has one and only
        # one alignment where both secondaryAlignment and supplementaryAlignment are
        # false.
        # Corresponds to the JSON property `secondaryAlignment`
        # @return [Boolean]
        attr_accessor :secondary_alignment
        alias_method :secondary_alignment?, :secondary_alignment
      
        # Whether this alignment is supplementary. Equivalent to SAM flag 0x800.
        # Supplementary alignments are used in the representation of a chimeric
        # alignment. In a chimeric alignment, a read is split into multiple linear
        # alignments that map to different reference contigs. The first linear alignment
        # in the read will be designated as the representative alignment; the remaining
        # linear alignments will be designated as supplementary alignments. These
        # alignments may have different mapping quality scores. In each linear alignment
        # in a chimeric alignment, the read will be hard clipped. The alignedSequence
        # and alignedQuality fields in the alignment record will only represent the
        # bases for its respective linear alignment.
        # Corresponds to the JSON property `supplementaryAlignment`
        # @return [Boolean]
        attr_accessor :supplementary_alignment
        alias_method :supplementary_alignment?, :supplementary_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aligned_quality = args[:aligned_quality] unless args[:aligned_quality].nil?
          @aligned_sequence = args[:aligned_sequence] unless args[:aligned_sequence].nil?
          @alignment = args[:alignment] unless args[:alignment].nil?
          @duplicate_fragment = args[:duplicate_fragment] unless args[:duplicate_fragment].nil?
          @failed_vendor_quality_checks = args[:failed_vendor_quality_checks] unless args[:failed_vendor_quality_checks].nil?
          @fragment_length = args[:fragment_length] unless args[:fragment_length].nil?
          @fragment_name = args[:fragment_name] unless args[:fragment_name].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @next_mate_position = args[:next_mate_position] unless args[:next_mate_position].nil?
          @number_reads = args[:number_reads] unless args[:number_reads].nil?
          @proper_placement = args[:proper_placement] unless args[:proper_placement].nil?
          @read_group_id = args[:read_group_id] unless args[:read_group_id].nil?
          @read_group_set_id = args[:read_group_set_id] unless args[:read_group_set_id].nil?
          @read_number = args[:read_number] unless args[:read_number].nil?
          @secondary_alignment = args[:secondary_alignment] unless args[:secondary_alignment].nil?
          @supplementary_alignment = args[:supplementary_alignment] unless args[:supplementary_alignment].nil?
        end
      end
      
      # A read group is all the data that's processed the same way by the sequencer.
      class ReadGroup
        include Google::Apis::Core::Hashable
      
        # The ID of the dataset this read group belongs to.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # A free-form text description of this read group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The experiment used to generate this read group.
        # Corresponds to the JSON property `experiment`
        # @return [Google::Apis::GenomicsV1beta2::ReadGroupExperiment]
        attr_accessor :experiment
      
        # The generated unique read group ID. Note: This is different than the @RG ID
        # field in the SAM spec. For that value, see the name field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # The read group name. This corresponds to the @RG ID field in the SAM spec.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The predicted insert size of this read group. The insert size is the length
        # the sequenced DNA fragment from end-to-end, not including the adapters.
        # Corresponds to the JSON property `predictedInsertSize`
        # @return [Fixnum]
        attr_accessor :predicted_insert_size
      
        # The programs used to generate this read group. Programs are always identical
        # for all read groups within a read group set. For this reason, only the first
        # read group in a returned set will have this field populated.
        # Corresponds to the JSON property `programs`
        # @return [Array<Google::Apis::GenomicsV1beta2::ReadGroupProgram>]
        attr_accessor :programs
      
        # The reference set the reads in this read group are aligned to. Required if
        # there are any read alignments.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # The sample this read group's data was generated from. Note: This is not an
        # actual ID within this repository, but rather an identifier for a sample which
        # may be meaningful to some external system.
        # Corresponds to the JSON property `sampleId`
        # @return [String]
        attr_accessor :sample_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @description = args[:description] unless args[:description].nil?
          @experiment = args[:experiment] unless args[:experiment].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @name = args[:name] unless args[:name].nil?
          @predicted_insert_size = args[:predicted_insert_size] unless args[:predicted_insert_size].nil?
          @programs = args[:programs] unless args[:programs].nil?
          @reference_set_id = args[:reference_set_id] unless args[:reference_set_id].nil?
          @sample_id = args[:sample_id] unless args[:sample_id].nil?
        end
      end
      
      # 
      class ReadGroupExperiment
        include Google::Apis::Core::Hashable
      
        # The instrument model used as part of this experiment. This maps to sequencing
        # technology in BAM.
        # Corresponds to the JSON property `instrumentModel`
        # @return [String]
        attr_accessor :instrument_model
      
        # The library used as part of this experiment. Note: This is not an actual ID
        # within this repository, but rather an identifier for a library which may be
        # meaningful to some external system.
        # Corresponds to the JSON property `libraryId`
        # @return [String]
        attr_accessor :library_id
      
        # The platform unit used as part of this experiment e.g. flowcell-barcode.lane
        # for Illumina or slide for SOLiD. Corresponds to the
        # Corresponds to the JSON property `platformUnit`
        # @return [String]
        attr_accessor :platform_unit
      
        # The sequencing center used as part of this experiment.
        # Corresponds to the JSON property `sequencingCenter`
        # @return [String]
        attr_accessor :sequencing_center
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instrument_model = args[:instrument_model] unless args[:instrument_model].nil?
          @library_id = args[:library_id] unless args[:library_id].nil?
          @platform_unit = args[:platform_unit] unless args[:platform_unit].nil?
          @sequencing_center = args[:sequencing_center] unless args[:sequencing_center].nil?
        end
      end
      
      # 
      class ReadGroupProgram
        include Google::Apis::Core::Hashable
      
        # The command line used to run this program.
        # Corresponds to the JSON property `commandLine`
        # @return [String]
        attr_accessor :command_line
      
        # The user specified locally unique ID of the program. Used along with
        # prevProgramId to define an ordering between programs.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the program.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the program run before this one.
        # Corresponds to the JSON property `prevProgramId`
        # @return [String]
        attr_accessor :prev_program_id
      
        # The version of the program run.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_line = args[:command_line] unless args[:command_line].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @prev_program_id = args[:prev_program_id] unless args[:prev_program_id].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end
      
      # A read group set is a logical collection of read groups, which are collections
      # of reads produced by a sequencer. A read group set typically models reads
      # corresponding to one sample, sequenced one way, and aligned one way.
      # - A read group set belongs to one dataset.
      # - A read group belongs to one read group set.
      # - A read belongs to one read group.
      class ReadGroupSet
        include Google::Apis::Core::Hashable
      
        # The dataset ID.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The filename of the original source file for this read group set, if any.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # The read group set ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # The read group set name. By default this will be initialized to the sample
        # name of the sequenced data contained in this set.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The read groups in this set. There are typically 1-10 read groups in a read
        # group set.
        # Corresponds to the JSON property `readGroups`
        # @return [Array<Google::Apis::GenomicsV1beta2::ReadGroup>]
        attr_accessor :read_groups
      
        # The reference set the reads in this read group set are aligned to.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @filename = args[:filename] unless args[:filename].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @name = args[:name] unless args[:name].nil?
          @read_groups = args[:read_groups] unless args[:read_groups].nil?
          @reference_set_id = args[:reference_set_id] unless args[:reference_set_id].nil?
        end
      end
      
      # A reference is a canonical assembled DNA sequence, intended to act as a
      # reference coordinate space for other genomic annotations. A single reference
      # might represent the human chromosome 1 or mitochandrial DNA, for instance. A
      # reference belongs to one or more reference sets.
      class Reference
        include Google::Apis::Core::Hashable
      
        # The Google generated immutable ID of the reference.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The length of this reference's sequence.
        # Corresponds to the JSON property `length`
        # @return [String]
        attr_accessor :length
      
        # MD5 of the upper-case sequence excluding all whitespace characters (this is
        # equivalent to SQ:M5 in SAM). This value is represented in lower case
        # hexadecimal format.
        # Corresponds to the JSON property `md5checksum`
        # @return [String]
        attr_accessor :md5checksum
      
        # The name of this reference, for example 22.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ID from http://www.ncbi.nlm.nih.gov/taxonomy (e.g. 9606->human) if not
        # specified by the containing reference set.
        # Corresponds to the JSON property `ncbiTaxonId`
        # @return [Fixnum]
        attr_accessor :ncbi_taxon_id
      
        # All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally with
        # a version number, for example GCF_000001405.26.
        # Corresponds to the JSON property `sourceAccessions`
        # @return [Array<String>]
        attr_accessor :source_accessions
      
        # The URI from which the sequence was obtained. Specifies a FASTA format file/
        # string with one name, sequence pair.
        # Corresponds to the JSON property `sourceURI`
        # @return [String]
        attr_accessor :source_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @length = args[:length] unless args[:length].nil?
          @md5checksum = args[:md5checksum] unless args[:md5checksum].nil?
          @name = args[:name] unless args[:name].nil?
          @ncbi_taxon_id = args[:ncbi_taxon_id] unless args[:ncbi_taxon_id].nil?
          @source_accessions = args[:source_accessions] unless args[:source_accessions].nil?
          @source_uri = args[:source_uri] unless args[:source_uri].nil?
        end
      end
      
      # ReferenceBound records an upper bound for the starting coordinate of variants
      # in a particular reference.
      class ReferenceBound
        include Google::Apis::Core::Hashable
      
        # The reference the bound is associate with.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # An upper bound (inclusive) on the starting coordinate of any variant in the
        # reference sequence.
        # Corresponds to the JSON property `upperBound`
        # @return [String]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @upper_bound = args[:upper_bound] unless args[:upper_bound].nil?
        end
      end
      
      # A reference set is a set of references which typically comprise a reference
      # assembly for a species, such as GRCh38 which is representative of the human
      # genome. A reference set defines a common coordinate space for comparing
      # reference-aligned experimental data. A reference set contains 1 or more
      # references.
      class ReferenceSet
        include Google::Apis::Core::Hashable
      
        # Public id of this reference set, such as GRCh37.
        # Corresponds to the JSON property `assemblyId`
        # @return [String]
        attr_accessor :assembly_id
      
        # Free text description of this reference set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The Google generated immutable ID of the reference set.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Order-independent MD5 checksum which identifies this reference set. The
        # checksum is computed by sorting all lower case hexidecimal string reference.
        # md5checksum (for all reference in this set) in ascending lexicographic order,
        # concatenating, and taking the MD5 of that value. The resulting value is
        # represented in lower case hexadecimal format.
        # Corresponds to the JSON property `md5checksum`
        # @return [String]
        attr_accessor :md5checksum
      
        # ID from http://www.ncbi.nlm.nih.gov/taxonomy (e.g. 9606->human) indicating the
        # species which this assembly is intended to model. Note that contained
        # references may specify a different ncbiTaxonId, as assemblies may contain
        # reference sequences which do not belong to the modeled species, e.g. EBV in a
        # human reference genome.
        # Corresponds to the JSON property `ncbiTaxonId`
        # @return [Fixnum]
        attr_accessor :ncbi_taxon_id
      
        # The IDs of the reference objects that are part of this set. Reference.
        # md5checksum must be unique within this set.
        # Corresponds to the JSON property `referenceIds`
        # @return [Array<String>]
        attr_accessor :reference_ids
      
        # All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally with
        # a version number, for example NC_000001.11.
        # Corresponds to the JSON property `sourceAccessions`
        # @return [Array<String>]
        attr_accessor :source_accessions
      
        # The URI from which the references were obtained.
        # Corresponds to the JSON property `sourceURI`
        # @return [String]
        attr_accessor :source_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assembly_id = args[:assembly_id] unless args[:assembly_id].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @md5checksum = args[:md5checksum] unless args[:md5checksum].nil?
          @ncbi_taxon_id = args[:ncbi_taxon_id] unless args[:ncbi_taxon_id].nil?
          @reference_ids = args[:reference_ids] unless args[:reference_ids].nil?
          @source_accessions = args[:source_accessions] unless args[:source_accessions].nil?
          @source_uri = args[:source_uri] unless args[:source_uri].nil?
        end
      end
      
      # 
      class SearchAnnotationSetsRequest
        include Google::Apis::Core::Hashable
      
        # The dataset IDs to search within. Caller must have READ access to these
        # datasets.
        # Corresponds to the JSON property `datasetIds`
        # @return [Array<String>]
        attr_accessor :dataset_ids
      
        # Only return annotations sets for which a substring of the name matches this
        # string (case insensitive).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies number of results to return in a single page. If unspecified, it
        # will default to 128. The maximum value is 1024.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # If specified, only annotation sets associated with the given reference set are
        # returned.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # If specified, only annotation sets that have any of these types are returned.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_ids = args[:dataset_ids] unless args[:dataset_ids].nil?
          @name = args[:name] unless args[:name].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @reference_set_id = args[:reference_set_id] unless args[:reference_set_id].nil?
          @types = args[:types] unless args[:types].nil?
        end
      end
      
      # 
      class SearchAnnotationSetsResponse
        include Google::Apis::Core::Hashable
      
        # The matching annotation sets.
        # Corresponds to the JSON property `annotationSets`
        # @return [Array<Google::Apis::GenomicsV1beta2::AnnotationSet>]
        attr_accessor :annotation_sets
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_sets = args[:annotation_sets] unless args[:annotation_sets].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class SearchAnnotationsRequest
        include Google::Apis::Core::Hashable
      
        # The annotation sets to search within. The caller must have READ access to
        # these annotation sets. Required. All queried annotation sets must have the
        # same type.
        # Corresponds to the JSON property `annotationSetIds`
        # @return [Array<String>]
        attr_accessor :annotation_set_ids
      
        # Specifies number of results to return in a single page. If unspecified, it
        # will default to 256. The maximum value is 2048.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # A 0-based half-open genomic coordinate range for search requests.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::GenomicsV1beta2::QueryRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_set_ids = args[:annotation_set_ids] unless args[:annotation_set_ids].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @range = args[:range] unless args[:range].nil?
        end
      end
      
      # 
      class SearchAnnotationsResponse
        include Google::Apis::Core::Hashable
      
        # The matching annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::GenomicsV1beta2::Annotation>]
        attr_accessor :annotations
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] unless args[:annotations].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The call set search request.
      class SearchCallSetsRequest
        include Google::Apis::Core::Hashable
      
        # Only return call sets for which a substring of the name matches this string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The maximum number of call sets to return. If unspecified, defaults to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Restrict the query to call sets within the given variant sets. At least one ID
        # must be provided.
        # Corresponds to the JSON property `variantSetIds`
        # @return [Array<String>]
        attr_accessor :variant_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @variant_set_ids = args[:variant_set_ids] unless args[:variant_set_ids].nil?
        end
      end
      
      # The call set search response.
      class SearchCallSetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching call sets.
        # Corresponds to the JSON property `callSets`
        # @return [Array<Google::Apis::GenomicsV1beta2::CallSet>]
        attr_accessor :call_sets
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_sets = args[:call_sets] unless args[:call_sets].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The jobs search request.
      class SearchJobsRequest
        include Google::Apis::Core::Hashable
      
        # If specified, only jobs created on or after this date, given in milliseconds
        # since Unix epoch, will be returned.
        # Corresponds to the JSON property `createdAfter`
        # @return [String]
        attr_accessor :created_after
      
        # If specified, only jobs created prior to this date, given in milliseconds
        # since Unix epoch, will be returned.
        # Corresponds to the JSON property `createdBefore`
        # @return [String]
        attr_accessor :created_before
      
        # Specifies the number of results to return in a single page. Defaults to 128.
        # The maximum value is 256.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token which is used to page through large result sets. To get
        # the next page of results, set this parameter to the value of the nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Only return jobs which belong to this Google Developers Console
        # project.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # Only return jobs which have a matching status.
        # Corresponds to the JSON property `status`
        # @return [Array<String>]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_after = args[:created_after] unless args[:created_after].nil?
          @created_before = args[:created_before] unless args[:created_before].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # The job search response.
      class SearchJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of jobs results, ordered newest to oldest.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::GenomicsV1beta2::Job>]
        attr_accessor :jobs
      
        # The continuation token which is used to page through large result sets.
        # Provide this value is a subsequent request to return the next page of results.
        # This field will be empty if there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] unless args[:jobs].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The read group set search request.
      class SearchReadGroupSetsRequest
        include Google::Apis::Core::Hashable
      
        # Restricts this query to read group sets within the given datasets. At least
        # one ID must be provided.
        # Corresponds to the JSON property `datasetIds`
        # @return [Array<String>]
        attr_accessor :dataset_ids
      
        # Only return read group sets for which a substring of the name matches this
        # string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies number of results to return in a single page. If unspecified, it
        # will default to 256. The maximum value is 1024.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_ids = args[:dataset_ids] unless args[:dataset_ids].nil?
          @name = args[:name] unless args[:name].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
        end
      end
      
      # The read group set search response.
      class SearchReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching read group sets.
        # Corresponds to the JSON property `readGroupSets`
        # @return [Array<Google::Apis::GenomicsV1beta2::ReadGroupSet>]
        attr_accessor :read_group_sets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @read_group_sets = args[:read_group_sets] unless args[:read_group_sets].nil?
        end
      end
      
      # The read search request.
      class SearchReadsRequest
        include Google::Apis::Core::Hashable
      
        # The end position of the range on the reference, 0-based exclusive. If
        # specified, referenceName must also be specified.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Specifies number of results to return in a single page. If unspecified, it
        # will default to 256. The maximum value is 2048.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The IDs of the read groups within which to search for reads. All specified
        # read groups must belong to the same read group sets. Must specify one of
        # readGroupSetIds or readGroupIds.
        # Corresponds to the JSON property `readGroupIds`
        # @return [Array<String>]
        attr_accessor :read_group_ids
      
        # The IDs of the read groups sets within which to search for reads. All
        # specified read group sets must be aligned against a common set of reference
        # sequences; this defines the genomic coordinates for the query. Must specify
        # one of readGroupSetIds or readGroupIds.
        # Corresponds to the JSON property `readGroupSetIds`
        # @return [Array<String>]
        attr_accessor :read_group_set_ids
      
        # The reference sequence name, for example chr1, 1, or chrX. If set to *, only
        # unmapped reads are returned.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive. If
        # specified, referenceName must also be specified.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @read_group_ids = args[:read_group_ids] unless args[:read_group_ids].nil?
          @read_group_set_ids = args[:read_group_set_ids] unless args[:read_group_set_ids].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # The read search response.
      class SearchReadsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching alignments sorted by mapped genomic coordinate, if any,
        # ascending in position within the same reference. Unmapped reads, which have no
        # position, are returned last and are further sorted in ascending lexicographic
        # order by fragment name.
        # Corresponds to the JSON property `alignments`
        # @return [Array<Google::Apis::GenomicsV1beta2::Read>]
        attr_accessor :alignments
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignments = args[:alignments] unless args[:alignments].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class SearchReferenceSetsRequest
        include Google::Apis::Core::Hashable
      
        # If present, return references for which the accession matches any of these
        # strings. Best to give a version number, for example GCF_000001405.26. If only
        # the main accession number is given then all records with that main accession
        # will be returned, whichever version. Note that different versions will have
        # different sequences.
        # Corresponds to the JSON property `accessions`
        # @return [Array<String>]
        attr_accessor :accessions
      
        # If present, return reference sets for which a substring of their assemblyId
        # matches this string (case insensitive).
        # Corresponds to the JSON property `assemblyId`
        # @return [String]
        attr_accessor :assembly_id
      
        # If present, return references for which the md5checksum matches. See
        # ReferenceSet.md5checksum for details.
        # Corresponds to the JSON property `md5checksums`
        # @return [Array<String>]
        attr_accessor :md5checksums
      
        # Specifies the maximum number of results to return in a single page.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessions = args[:accessions] unless args[:accessions].nil?
          @assembly_id = args[:assembly_id] unless args[:assembly_id].nil?
          @md5checksums = args[:md5checksums] unless args[:md5checksums].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
        end
      end
      
      # 
      class SearchReferenceSetsResponse
        include Google::Apis::Core::Hashable
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The matching references sets.
        # Corresponds to the JSON property `referenceSets`
        # @return [Array<Google::Apis::GenomicsV1beta2::ReferenceSet>]
        attr_accessor :reference_sets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @reference_sets = args[:reference_sets] unless args[:reference_sets].nil?
        end
      end
      
      # 
      class SearchReferencesRequest
        include Google::Apis::Core::Hashable
      
        # If present, return references for which the accession matches this string.
        # Best to give a version number, for example GCF_000001405.26. If only the main
        # accession number is given then all records with that main accession will be
        # returned, whichever version. Note that different versions will have different
        # sequences.
        # Corresponds to the JSON property `accessions`
        # @return [Array<String>]
        attr_accessor :accessions
      
        # If present, return references for which the md5checksum matches. See Reference.
        # md5checksum for construction details.
        # Corresponds to the JSON property `md5checksums`
        # @return [Array<String>]
        attr_accessor :md5checksums
      
        # Specifies the maximum number of results to return in a single page.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # If present, return only references which belong to this reference set.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessions = args[:accessions] unless args[:accessions].nil?
          @md5checksums = args[:md5checksums] unless args[:md5checksums].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @reference_set_id = args[:reference_set_id] unless args[:reference_set_id].nil?
        end
      end
      
      # 
      class SearchReferencesResponse
        include Google::Apis::Core::Hashable
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The matching references.
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::GenomicsV1beta2::Reference>]
        attr_accessor :references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @references = args[:references] unless args[:references].nil?
        end
      end
      
      # The search variant sets request.
      class SearchVariantSetsRequest
        include Google::Apis::Core::Hashable
      
        # Exactly one dataset ID must be provided here. Only variant sets which belong
        # to this dataset will be returned.
        # Corresponds to the JSON property `datasetIds`
        # @return [Array<String>]
        attr_accessor :dataset_ids
      
        # The maximum number of variant sets to return in a request.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_ids = args[:dataset_ids] unless args[:dataset_ids].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
        end
      end
      
      # The search variant sets response.
      class SearchVariantSetsResponse
        include Google::Apis::Core::Hashable
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The variant sets belonging to the requested dataset.
        # Corresponds to the JSON property `variantSets`
        # @return [Array<Google::Apis::GenomicsV1beta2::VariantSet>]
        attr_accessor :variant_sets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @variant_sets = args[:variant_sets] unless args[:variant_sets].nil?
        end
      end
      
      # The variant search request.
      class SearchVariantsRequest
        include Google::Apis::Core::Hashable
      
        # Only return variant calls which belong to call sets with these ids. Leaving
        # this blank returns all variant calls. If a variant has no calls belonging to
        # any of these call sets, it won't be returned at all. Currently, variants with
        # no calls from any call set will never be returned.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        # The end of the window, 0-based exclusive. If unspecified or 0, defaults to the
        # length of the reference.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The maximum number of calls to return. However, at least one variant will
        # always be returned, even if it has more calls than this limit. If unspecified,
        # defaults to 5000.
        # Corresponds to the JSON property `maxCalls`
        # @return [Fixnum]
        attr_accessor :max_calls
      
        # The maximum number of variants to return. If unspecified, defaults to 5000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of nextPageToken
        # from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Only return variants in this reference sequence.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The beginning of the window (0-based, inclusive) for which overlapping
        # variants should be returned. If unspecified, defaults to 0.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # Only return variants which have exactly this name.
        # Corresponds to the JSON property `variantName`
        # @return [String]
        attr_accessor :variant_name
      
        # At most one variant set ID must be provided. Only variants from this variant
        # set will be returned. If omitted, a call set id must be included in the
        # request.
        # Corresponds to the JSON property `variantSetIds`
        # @return [Array<String>]
        attr_accessor :variant_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_set_ids = args[:call_set_ids] unless args[:call_set_ids].nil?
          @end = args[:end] unless args[:end].nil?
          @max_calls = args[:max_calls] unless args[:max_calls].nil?
          @page_size = args[:page_size] unless args[:page_size].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @start = args[:start] unless args[:start].nil?
          @variant_name = args[:variant_name] unless args[:variant_name].nil?
          @variant_set_ids = args[:variant_set_ids] unless args[:variant_set_ids].nil?
        end
      end
      
      # The variant search response.
      class SearchVariantsResponse
        include Google::Apis::Core::Hashable
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # This field will be empty if there aren't any additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching Variants.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::GenomicsV1beta2::Variant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @variants = args[:variants] unless args[:variants].nil?
        end
      end
      
      # A transcript represents the assertion that a particular region of the
      # reference genome may be transcribed as RNA.
      class Transcript
        include Google::Apis::Core::Hashable
      
        # The range of the coding sequence for this transcript, if any. To determine the
        # exact ranges of coding sequence, intersect this range with those of the exons,
        # if any. If there are any exons, the codingSequence must start and end within
        # them.
        # Note that in some cases, the reference genome will not exactly match the
        # observed mRNA transcript e.g. due to variance in the source genome from
        # reference. In these cases, exon.frame will not necessarily match the expected
        # reference reading frame and coding exon reference bases cannot necessarily be
        # concatenated to produce the original transcript mRNA.
        # Corresponds to the JSON property `codingSequence`
        # @return [Google::Apis::GenomicsV1beta2::TranscriptCodingSequence]
        attr_accessor :coding_sequence
      
        # The exons that compose this transcript. This field should be unset for genomes
        # where transcript splicing does not occur, for example prokaryotes.
        # Introns are regions of the transcript that are not included in the spliced RNA
        # product. Though not explicitly modeled here, intron ranges can be deduced; all
        # regions of this transcript that are not exons are introns.
        # Exonic sequences do not necessarily code for a translational product (amino
        # acids). Only the regions of exons bounded by the codingSequence correspond to
        # coding DNA sequence.
        # Exons are ordered by start position and may not overlap.
        # Corresponds to the JSON property `exons`
        # @return [Array<Google::Apis::GenomicsV1beta2::TranscriptExon>]
        attr_accessor :exons
      
        # The annotation ID of the gene from which this transcript is transcribed.
        # Corresponds to the JSON property `geneId`
        # @return [String]
        attr_accessor :gene_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coding_sequence = args[:coding_sequence] unless args[:coding_sequence].nil?
          @exons = args[:exons] unless args[:exons].nil?
          @gene_id = args[:gene_id] unless args[:gene_id].nil?
        end
      end
      
      # 
      class TranscriptCodingSequence
        include Google::Apis::Core::Hashable
      
        # The end of the coding sequence on this annotation's reference sequence, 0-
        # based exclusive. Note that this position is relative to the reference start,
        # and not the containing annotation start.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The start of the coding sequence on this annotation's reference sequence, 0-
        # based inclusive. Note that this position is relative to the reference start,
        # and not the containing annotation start.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # 
      class TranscriptExon
        include Google::Apis::Core::Hashable
      
        # The end position of the exon on this annotation's reference sequence, 0-based
        # exclusive. Note that this is relative to the reference start, and not the
        # containing annotation start.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Wrapper message for `int32`.
        # The JSON representation for `Int32Value` is JSON number.
        # Corresponds to the JSON property `frame`
        # @return [Google::Apis::GenomicsV1beta2::Int32Value]
        attr_accessor :frame
      
        # The start position of the exon on this annotation's reference sequence, 0-
        # based inclusive. Note that this is relative to the reference start, and not
        # the containing annotation start.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @frame = args[:frame] unless args[:frame].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # A variant represents a change in DNA sequence relative to a reference sequence.
      # For example, a variant could represent a SNP or an insertion. Variants belong
      # to a variant set. Each of the calls on a variant represent a determination of
      # genotype with respect to that variant. For example, a call might assign
      # probability of 0.32 to the occurrence of a SNP named rs1234 in a sample named
      # NA12345. A call belongs to a call set, which contains related calls typically
      # from one sample.
      class Variant
        include Google::Apis::Core::Hashable
      
        # The bases that appear instead of the reference bases.
        # Corresponds to the JSON property `alternateBases`
        # @return [Array<String>]
        attr_accessor :alternate_bases
      
        # The variant calls for this particular variant. Each one represents the
        # determination of genotype with respect to this variant.
        # Corresponds to the JSON property `calls`
        # @return [Array<Google::Apis::GenomicsV1beta2::Call>]
        attr_accessor :calls
      
        # The date this variant was created, in milliseconds from the epoch.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # The end position (0-based) of this variant. This corresponds to the first base
        # after the last base in the reference allele. So, the length of the reference
        # allele is (end - start). This is useful for variants that don't explicitly
        # give alternate bases, for example large deletions.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # A list of filters (normally quality filters) this variant has failed. PASS
        # indicates this variant has passed all filters.
        # Corresponds to the JSON property `filter`
        # @return [Array<String>]
        attr_accessor :filter
      
        # The Google generated ID of the variant, immutable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A string which maps to an array of values.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<String>>]
        attr_accessor :info
      
        # Names for the variant, for example a RefSNP ID.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # A measure of how likely this variant is to be real. A higher value is better.
        # Corresponds to the JSON property `quality`
        # @return [Float]
        attr_accessor :quality
      
        # The reference bases for this variant. They start at the given position.
        # Corresponds to the JSON property `referenceBases`
        # @return [String]
        attr_accessor :reference_bases
      
        # The reference on which this variant occurs. (such as chr20 or X)
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The position at which this variant occurs (0-based). This corresponds to the
        # first base of the string of reference bases.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The ID of the variant set this variant belongs to.
        # Corresponds to the JSON property `variantSetId`
        # @return [String]
        attr_accessor :variant_set_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_bases = args[:alternate_bases] unless args[:alternate_bases].nil?
          @calls = args[:calls] unless args[:calls].nil?
          @created = args[:created] unless args[:created].nil?
          @end = args[:end] unless args[:end].nil?
          @filter = args[:filter] unless args[:filter].nil?
          @id = args[:id] unless args[:id].nil?
          @info = args[:info] unless args[:info].nil?
          @names = args[:names] unless args[:names].nil?
          @quality = args[:quality] unless args[:quality].nil?
          @reference_bases = args[:reference_bases] unless args[:reference_bases].nil?
          @reference_name = args[:reference_name] unless args[:reference_name].nil?
          @start = args[:start] unless args[:start].nil?
          @variant_set_id = args[:variant_set_id] unless args[:variant_set_id].nil?
        end
      end
      
      # A Variant annotation.
      class VariantAnnotation
        include Google::Apis::Core::Hashable
      
        # The alternate allele for this variant. If multiple alternate alleles exist at
        # this location, create a separate variant for each one, as they may represent
        # distinct conditions.
        # Corresponds to the JSON property `alternateBases`
        # @return [String]
        attr_accessor :alternate_bases
      
        # Describes the clinical significance of a variant. It is adapted from the
        # ClinVar controlled vocabulary for clinical significance described at: http://
        # www.ncbi.nlm.nih.gov/clinvar/docs/clinsig/
        # Corresponds to the JSON property `clinicalSignificance`
        # @return [String]
        attr_accessor :clinical_significance
      
        # The set of conditions associated with this variant. A condition describes the
        # way a variant influences human health.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::GenomicsV1beta2::VariantAnnotationCondition>]
        attr_accessor :conditions
      
        # Effect of the variant on the coding sequence.
        # Corresponds to the JSON property `effect`
        # @return [String]
        attr_accessor :effect
      
        # Google annotation ID of the gene affected by this variant. This should be
        # provided when the variant is created.
        # Corresponds to the JSON property `geneId`
        # @return [String]
        attr_accessor :gene_id
      
        # Google annotation IDs of the transcripts affected by this variant. These
        # should be provided when the variant is created.
        # Corresponds to the JSON property `transcriptIds`
        # @return [Array<String>]
        attr_accessor :transcript_ids
      
        # Type has been adapted from ClinVar's list of variant types.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_bases = args[:alternate_bases] unless args[:alternate_bases].nil?
          @clinical_significance = args[:clinical_significance] unless args[:clinical_significance].nil?
          @conditions = args[:conditions] unless args[:conditions].nil?
          @effect = args[:effect] unless args[:effect].nil?
          @gene_id = args[:gene_id] unless args[:gene_id].nil?
          @transcript_ids = args[:transcript_ids] unless args[:transcript_ids].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class VariantAnnotationCondition
        include Google::Apis::Core::Hashable
      
        # The MedGen concept id associated with this gene. Search for these IDs at http:/
        # /www.ncbi.nlm.nih.gov/medgen/
        # Corresponds to the JSON property `conceptId`
        # @return [String]
        attr_accessor :concept_id
      
        # The set of external IDs for this condition.
        # Corresponds to the JSON property `externalIds`
        # @return [Array<Google::Apis::GenomicsV1beta2::ExternalId>]
        attr_accessor :external_ids
      
        # A set of names for the condition.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # The OMIM id for this condition. Search for these IDs at http://omim.org/
        # Corresponds to the JSON property `omimId`
        # @return [String]
        attr_accessor :omim_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concept_id = args[:concept_id] unless args[:concept_id].nil?
          @external_ids = args[:external_ids] unless args[:external_ids].nil?
          @names = args[:names] unless args[:names].nil?
          @omim_id = args[:omim_id] unless args[:omim_id].nil?
        end
      end
      
      # A variant set is a collection of call sets and variants. It contains summary
      # statistics of those contents. A variant set belongs to a dataset.
      class VariantSet
        include Google::Apis::Core::Hashable
      
        # The dataset to which this variant set belongs. Immutable.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The Google-generated ID of the variant set. Immutable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The metadata associated with this variant set.
        # Corresponds to the JSON property `metadata`
        # @return [Array<Google::Apis::GenomicsV1beta2::Metadata>]
        attr_accessor :metadata
      
        # A list of all references used by the variants in a variant set with associated
        # coordinate upper bounds for each one.
        # Corresponds to the JSON property `referenceBounds`
        # @return [Array<Google::Apis::GenomicsV1beta2::ReferenceBound>]
        attr_accessor :reference_bounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @id = args[:id] unless args[:id].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @reference_bounds = args[:reference_bounds] unless args[:reference_bounds].nil?
        end
      end
    end
  end
end
