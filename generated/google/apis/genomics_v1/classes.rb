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
      
      # An annotation set is a logical grouping of annotations that share consistent
      # type information and provenance. Examples of annotation sets include 'all
      # genes from refseq', and 'all variant annotations from ClinVar'.
      class AnnotationSet
        include Google::Apis::Core::Hashable
      
        # The server-generated annotation set ID, unique across all annotation sets.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The dataset to which this annotation set belongs.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The ID of the reference set that defines the coordinate space for this set's
        # annotations.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # The display name for this annotation set.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The source URI describing the file from which this annotation set was
        # generated, if any.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # The type of annotations contained within this set.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A map of additional read alignment information. This must be of the form map (
        # string key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @name = args[:name] if args.key?(:name)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @type = args[:type] if args.key?(:type)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class SearchAnnotationSetsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The dataset IDs to search within. Caller must have `READ` access to
        # these datasets.
        # Corresponds to the JSON property `datasetIds`
        # @return [Array<String>]
        attr_accessor :dataset_ids
      
        # If specified, only annotation sets associated with the given reference set are
        # returned.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # Only return annotations sets for which a substring of the name matches this
        # string (case insensitive).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If specified, only annotation sets that have any of these types are returned.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 128. The maximum value is 1024.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_ids = args[:dataset_ids] if args.key?(:dataset_ids)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @name = args[:name] if args.key?(:name)
          @types = args[:types] if args.key?(:types)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # 
      class SearchAnnotationSetsResponse
        include Google::Apis::Core::Hashable
      
        # The matching annotation sets.
        # Corresponds to the JSON property `annotationSets`
        # @return [Array<Google::Apis::GenomicsV1::AnnotationSet>]
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
          @annotation_sets = args[:annotation_sets] if args.key?(:annotation_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An annotation describes a region of reference genome. The value of an
      # annotation may be one of several canonical types, supplemented by arbitrary
      # info tags. An annotation is not inherently associated with a specific sample
      # or individual (though a client could choose to use annotations in this way).
      # Example canonical annotation types are `GENE` and `VARIANT`.
      class Annotation
        include Google::Apis::Core::Hashable
      
        # The server-generated annotation ID, unique across all annotations.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The annotation set to which this annotation belongs.
        # Corresponds to the JSON property `annotationSetId`
        # @return [String]
        attr_accessor :annotation_set_id
      
        # The display name of this annotation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the Google Genomics reference associated with this range.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # The display name corresponding to the reference specified by `referenceId`,
        # for example `chr1`, `1`, or `chrX`.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position of the range on the reference, 0-based exclusive.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Whether this range refers to the reverse strand, as opposed to the forward
        # strand. Note that regardless of this field, the start/end position of the
        # range always refer to the forward strand.
        # Corresponds to the JSON property `reverseStrand`
        # @return [Boolean]
        attr_accessor :reverse_strand
        alias_method :reverse_strand?, :reverse_strand
      
        # The data type for this annotation. Must match the containing annotation set's
        # type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A variant annotation, which describes the effect of a variant on the genome,
        # the coding sequence, and/or higher level consequences at the organism level e.
        # g. pathogenicity. This field is only set for annotations of type `VARIANT`.
        # Corresponds to the JSON property `variant`
        # @return [Google::Apis::GenomicsV1::VariantAnnotation]
        attr_accessor :variant
      
        # A transcript represents the assertion that a particular region of the
        # reference genome may be transcribed as RNA.
        # Corresponds to the JSON property `transcript`
        # @return [Google::Apis::GenomicsV1::Transcript]
        attr_accessor :transcript
      
        # A map of additional read alignment information. This must be of the form map (
        # string key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @annotation_set_id = args[:annotation_set_id] if args.key?(:annotation_set_id)
          @name = args[:name] if args.key?(:name)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @reverse_strand = args[:reverse_strand] if args.key?(:reverse_strand)
          @type = args[:type] if args.key?(:type)
          @variant = args[:variant] if args.key?(:variant)
          @transcript = args[:transcript] if args.key?(:transcript)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # 
      class VariantAnnotation
        include Google::Apis::Core::Hashable
      
        # Type has been adapted from ClinVar's list of variant types.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Effect of the variant on the coding sequence.
        # Corresponds to the JSON property `effect`
        # @return [String]
        attr_accessor :effect
      
        # The alternate allele for this variant. If multiple alternate alleles exist at
        # this location, create a separate variant for each one, as they may represent
        # distinct conditions.
        # Corresponds to the JSON property `alternateBases`
        # @return [String]
        attr_accessor :alternate_bases
      
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
      
        # The set of conditions associated with this variant. A condition describes the
        # way a variant influences human health.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::GenomicsV1::ClinicalCondition>]
        attr_accessor :conditions
      
        # Describes the clinical significance of a variant. It is adapted from the
        # ClinVar controlled vocabulary for clinical significance described at: http://
        # www.ncbi.nlm.nih.gov/clinvar/docs/clinsig/
        # Corresponds to the JSON property `clinicalSignificance`
        # @return [String]
        attr_accessor :clinical_significance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @effect = args[:effect] if args.key?(:effect)
          @alternate_bases = args[:alternate_bases] if args.key?(:alternate_bases)
          @gene_id = args[:gene_id] if args.key?(:gene_id)
          @transcript_ids = args[:transcript_ids] if args.key?(:transcript_ids)
          @conditions = args[:conditions] if args.key?(:conditions)
          @clinical_significance = args[:clinical_significance] if args.key?(:clinical_significance)
        end
      end
      
      # 
      class ClinicalCondition
        include Google::Apis::Core::Hashable
      
        # A set of names for the condition.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # The set of external IDs for this condition.
        # Corresponds to the JSON property `externalIds`
        # @return [Array<Google::Apis::GenomicsV1::ExternalId>]
        attr_accessor :external_ids
      
        # The MedGen concept id associated with this gene. Search for these IDs at http:/
        # /www.ncbi.nlm.nih.gov/medgen/
        # Corresponds to the JSON property `conceptId`
        # @return [String]
        attr_accessor :concept_id
      
        # The OMIM id for this condition. Search for these IDs at http://omim.org/
        # Corresponds to the JSON property `omimId`
        # @return [String]
        attr_accessor :omim_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
          @external_ids = args[:external_ids] if args.key?(:external_ids)
          @concept_id = args[:concept_id] if args.key?(:concept_id)
          @omim_id = args[:omim_id] if args.key?(:omim_id)
        end
      end
      
      # 
      class ExternalId
        include Google::Apis::Core::Hashable
      
        # The name of the source of this data.
        # Corresponds to the JSON property `sourceName`
        # @return [String]
        attr_accessor :source_name
      
        # The id used by the source of this data.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_name = args[:source_name] if args.key?(:source_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # A transcript represents the assertion that a particular region of the
      # reference genome may be transcribed as RNA.
      class Transcript
        include Google::Apis::Core::Hashable
      
        # The annotation ID of the gene from which this transcript is transcribed.
        # Corresponds to the JSON property `geneId`
        # @return [String]
        attr_accessor :gene_id
      
        # The exons that compose this transcript. This field should be unset for genomes
        # where transcript splicing does not occur, for example prokaryotes. Introns are
        # regions of the transcript that are not included in the spliced RNA product.
        # Though not explicitly modeled here, intron ranges can be deduced; all regions
        # of this transcript that are not exons are introns. Exonic sequences do not
        # necessarily code for a translational product (amino acids). Only the regions
        # of exons bounded by the codingSequence correspond to coding DNA sequence.
        # Exons are ordered by start position and may not overlap.
        # Corresponds to the JSON property `exons`
        # @return [Array<Google::Apis::GenomicsV1::Exon>]
        attr_accessor :exons
      
        # The range of the coding sequence for this transcript, if any. To determine the
        # exact ranges of coding sequence, intersect this range with those of the exons,
        # if any. If there are any exons, the codingSequence must start and end within
        # them. Note that in some cases, the reference genome will not exactly match the
        # observed mRNA transcript e.g. due to variance in the source genome from
        # reference. In these cases, exon.frame will not necessarily match the expected
        # reference reading frame and coding exon reference bases cannot necessarily be
        # concatenated to produce the original transcript mRNA.
        # Corresponds to the JSON property `codingSequence`
        # @return [Google::Apis::GenomicsV1::CodingSequence]
        attr_accessor :coding_sequence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gene_id = args[:gene_id] if args.key?(:gene_id)
          @exons = args[:exons] if args.key?(:exons)
          @coding_sequence = args[:coding_sequence] if args.key?(:coding_sequence)
        end
      end
      
      # 
      class Exon
        include Google::Apis::Core::Hashable
      
        # The start position of the exon on this annotation's reference sequence, 0-
        # based inclusive. Note that this is relative to the reference start, and **not**
        # the containing annotation start.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position of the exon on this annotation's reference sequence, 0-based
        # exclusive. Note that this is relative to the reference start, and *not* the
        # containing annotation start.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The frame of this exon. Contains a value of 0, 1, or 2, which indicates the
        # offset of the first coding base of the exon within the reading frame of the
        # coding DNA sequence, if any. This field is dependent on the strandedness of
        # this annotation (see Annotation.reverse_strand). For forward stranded
        # annotations, this offset is relative to the exon.start. For reverse strand
        # annotations, this offset is relative to the exon.end `- 1`. Unset if this exon
        # does not intersect the coding sequence. Upon creation of a transcript, the
        # frame must be populated for all or none of the coding exons.
        # Corresponds to the JSON property `frame`
        # @return [Fixnum]
        attr_accessor :frame
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @frame = args[:frame] if args.key?(:frame)
        end
      end
      
      # 
      class CodingSequence
        include Google::Apis::Core::Hashable
      
        # The start of the coding sequence on this annotation's reference sequence, 0-
        # based inclusive. Note that this position is relative to the reference start,
        # and *not* the containing annotation start.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end of the coding sequence on this annotation's reference sequence, 0-
        # based exclusive. Note that this position is relative to the reference start,
        # and *not* the containing annotation start.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
        end
      end
      
      # 
      class BatchCreateAnnotationsRequest
        include Google::Apis::Core::Hashable
      
        # The annotations to be created. At most 4096 can be specified in a single
        # request.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::GenomicsV1::Annotation>]
        attr_accessor :annotations
      
        # A unique request ID which enables the server to detect duplicated requests. If
        # provided, duplicated requests will result in the same response; if not
        # provided, duplicated requests may result in duplicated data. For a given
        # annotation set, callers should not reuse `request_id`s when writing different
        # batches of annotations - behavior in this case is undefined. A common approach
        # is to use a UUID. For batch jobs where worker crashes are a possibility,
        # consider using some unique variant of a worker or run ID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class BatchCreateAnnotationsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting per-annotation entries, ordered consistently with the original
        # request.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::GenomicsV1::Entry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # 
      class Entry
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
        # use and understand for most users - Flexible enough to meet unexpected needs #
        # Overview The `Status` message contains three pieces of data: error code, error
        # message, and error details. The error code should be an enum value of google.
        # rpc.Code, but it may accept additional error codes if needed. The error
        # message should be a developer-facing English message that helps developers *
        # understand* and *resolve* the error. If a localized user-facing error message
        # is needed, put the localized message in the error details or localize it in
        # the client. The optional error details may contain arbitrary information about
        # the error. There is a predefined set of error detail types in the package `
        # google.rpc` which can be used for common error conditions. # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C. # Other uses The
        # error model and the `Status` message can be used in a variety of environments,
        # either with or without APIs, to provide a consistent developer experience
        # across different environments. Example uses of this error model include: -
        # Partial errors. If a service needs to return partial errors to the client, it
        # may embed the `Status` in the normal response to indicate the partial errors. -
        # Workflow errors. A typical workflow has multiple steps. Each step may have a `
        # Status` message for error reporting purpose. - Batch operations. If a client
        # uses batch request and batch response, the `Status` message should be used
        # directly inside batch response, one for each error sub-response. -
        # Asynchronous operations. If an API call embeds asynchronous operation results
        # in its response, the status of those operations should be represented directly
        # using the `Status` message. - Logging. If some API errors are stored in logs,
        # the message `Status` could be used directly after any stripping needed for
        # security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GenomicsV1::Status]
        attr_accessor :status
      
        # An annotation describes a region of reference genome. The value of an
        # annotation may be one of several canonical types, supplemented by arbitrary
        # info tags. An annotation is not inherently associated with a specific sample
        # or individual (though a client could choose to use annotations in this way).
        # Example canonical annotation types are `GENE` and `VARIANT`.
        # Corresponds to the JSON property `annotation`
        # @return [Google::Apis::GenomicsV1::Annotation]
        attr_accessor :annotation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @annotation = args[:annotation] if args.key?(:annotation)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
      # use and understand for most users - Flexible enough to meet unexpected needs #
      # Overview The `Status` message contains three pieces of data: error code, error
      # message, and error details. The error code should be an enum value of google.
      # rpc.Code, but it may accept additional error codes if needed. The error
      # message should be a developer-facing English message that helps developers *
      # understand* and *resolve* the error. If a localized user-facing error message
      # is needed, put the localized message in the error details or localize it in
      # the client. The optional error details may contain arbitrary information about
      # the error. There is a predefined set of error detail types in the package `
      # google.rpc` which can be used for common error conditions. # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C. # Other uses The
      # error model and the `Status` message can be used in a variety of environments,
      # either with or without APIs, to provide a consistent developer experience
      # across different environments. Example uses of this error model include: -
      # Partial errors. If a service needs to return partial errors to the client, it
      # may embed the `Status` in the normal response to indicate the partial errors. -
      # Workflow errors. A typical workflow has multiple steps. Each step may have a `
      # Status` message for error reporting purpose. - Batch operations. If a client
      # uses batch request and batch response, the `Status` message should be used
      # directly inside batch response, one for each error sub-response. -
      # Asynchronous operations. If an API call embeds asynchronous operation results
      # in its response, the status of those operations should be represented directly
      # using the `Status` message. - Logging. If some API errors are stored in logs,
      # the message `Status` could be used directly after any stripping needed for
      # security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A list of messages that carry the error details. There will be a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # 
      class SearchAnnotationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The annotation sets to search within. The caller must have `READ`
        # access to these annotation sets. All queried annotation sets must have the
        # same type.
        # Corresponds to the JSON property `annotationSetIds`
        # @return [Array<String>]
        attr_accessor :annotation_set_ids
      
        # The ID of the reference to query.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # The name of the reference to query, within the reference set associated with
        # this query.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive. If
        # specified, referenceId or referenceName must be specified. Defaults to 0.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position of the range on the reference, 0-based exclusive. If
        # referenceId or referenceName must be specified, Defaults to the length of the
        # reference.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 256. The maximum value is 2048.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_set_ids = args[:annotation_set_ids] if args.key?(:annotation_set_ids)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # 
      class SearchAnnotationsResponse
        include Google::Apis::Core::Hashable
      
        # The matching annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::GenomicsV1::Annotation>]
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
          @annotations = args[:annotations] if args.key?(:annotations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The dataset list response.
      class ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching Datasets.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::GenomicsV1::Dataset>]
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
          @datasets = args[:datasets] if args.key?(:datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A Dataset is a collection of genomic data. For more genomics resource
      # definitions, see [Fundamentals of Google Genomics](https://cloud.google.com/
      # genomics/fundamentals-of-google-genomics)
      class Dataset
        include Google::Apis::Core::Hashable
      
        # The server-generated dataset ID, unique across all datasets.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The Google Cloud project ID that this dataset belongs to.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The dataset name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time this dataset was created, in seconds from the epoch.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @name = args[:name] if args.key?(:name)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # 
      class UndeleteDatasetRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to specify
        # access control policies for Cloud Platform resources. A `Policy` consists of a
        # list of `bindings`. A `Binding` binds a list of `members` to a `role`, where
        # the members can be user accounts, Google groups, Google domains, and service
        # accounts. A `role` is a named list of permissions defined by IAM. **Example** `
        # "bindings": [ ` "role": "roles/owner", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@
        # appspot.gserviceaccount.com", ] `, ` "role": "roles/viewer", "members": ["user:
        # sean@example.com"] ` ] ` For a description of IAM and its features, see the [
        # IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::GenomicsV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to specify
      # access control policies for Cloud Platform resources. A `Policy` consists of a
      # list of `bindings`. A `Binding` binds a list of `members` to a `role`, where
      # the members can be user accounts, Google groups, Google domains, and service
      # accounts. A `role` is a named list of permissions defined by IAM. **Example** `
      # "bindings": [ ` "role": "roles/owner", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@
      # appspot.gserviceaccount.com", ] `, ` "role": "roles/viewer", "members": ["user:
      # sean@example.com"] ` ] ` For a description of IAM and its features, see the [
      # IAM developer's guide](https://cloud.google.com/iam).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Version of the `Policy`. The default version is 0.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Associates a list of `members` to a `role`. Multiple `bindings` must not be
        # specified for the same `role`. `bindings` with no members will result in an
        # error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::GenomicsV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. If no `etag` is provided in the
        # call to `setIamPolicy`, then the existing policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`. Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@gmail.com` or `joe@example.com`. * `serviceAccount:`
        # emailid``: An email address that represents a service account. For example, `
        # my-other-app@appspot.gserviceaccount.com`. * `group:`emailid``: An email
        # address that represents a Google group. For example, `admins@example.com`. * `
        # domain:`domain``: A Google Apps domain name that represents all the users of
        # that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] if args.key?(:role)
          @members = args[:members] if args.key?(:members)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # REQUIRED: The set of permissions to check for the 'resource'. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. Allowed permissions
        # are: * `genomics.datasets.create` * `genomics.datasets.delete` * `genomics.
        # datasets.get` * `genomics.datasets.list` * `genomics.datasets.update` * `
        # genomics.datasets.getIamPolicy` * `genomics.datasets.setIamPolicy`
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::GenomicsV1::Operation>]
        attr_accessor :operations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. For example: `operations/CJHU7Oi_ChDrveSpBRjfuL-
        # qzoWAgEw`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An OperationMetadata object. This will always be returned with the Operation.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # If the value is `false`, it means the operation is still in progress. If true,
        # the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
        # use and understand for most users - Flexible enough to meet unexpected needs #
        # Overview The `Status` message contains three pieces of data: error code, error
        # message, and error details. The error code should be an enum value of google.
        # rpc.Code, but it may accept additional error codes if needed. The error
        # message should be a developer-facing English message that helps developers *
        # understand* and *resolve* the error. If a localized user-facing error message
        # is needed, put the localized message in the error details or localize it in
        # the client. The optional error details may contain arbitrary information about
        # the error. There is a predefined set of error detail types in the package `
        # google.rpc` which can be used for common error conditions. # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C. # Other uses The
        # error model and the `Status` message can be used in a variety of environments,
        # either with or without APIs, to provide a consistent developer experience
        # across different environments. Example uses of this error model include: -
        # Partial errors. If a service needs to return partial errors to the client, it
        # may embed the `Status` in the normal response to indicate the partial errors. -
        # Workflow errors. A typical workflow has multiple steps. Each step may have a `
        # Status` message for error reporting purpose. - Batch operations. If a client
        # uses batch request and batch response, the `Status` message should be used
        # directly inside batch response, one for each error sub-response. -
        # Asynchronous operations. If an API call embeds asynchronous operation results
        # in its response, the status of those operations should be represented directly
        # using the `Status` message. - Logging. If some API errors are stored in logs,
        # the message `Status` could be used directly after any stripping needed for
        # security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::GenomicsV1::Status]
        attr_accessor :error
      
        # If importing ReadGroupSets, an ImportReadGroupSetsResponse is returned. If
        # importing Variants, an ImportVariantsResponse is returned. For exports, an
        # empty response is returned.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # The reference set to which the imported read group sets are aligned to, if any.
        # The reference names of this reference set must be a superset of those found
        # in the imported file headers. If no reference set id is provided, a best
        # effort is made to associate with a matching reference set.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # A list of URIs pointing at [BAM files](https://samtools.github.io/hts-specs/
        # SAMv1.pdf) in Google Cloud Storage.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        # The partition strategy describes how read groups are partitioned into read
        # group sets.
        # Corresponds to the JSON property `partitionStrategy`
        # @return [String]
        attr_accessor :partition_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @source_uris = args[:source_uris] if args.key?(:source_uris)
          @partition_strategy = args[:partition_strategy] if args.key?(:partition_strategy)
        end
      end
      
      # The read group set export request.
      class ExportReadGroupSetRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Google Cloud project ID that owns this export. The caller must
        # have WRITE access to this project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. A Google Cloud Storage URI for the exported BAM file. The currently
        # authenticated user must have write access to the new file. An error will be
        # returned if the URI already contains data.
        # Corresponds to the JSON property `exportUri`
        # @return [String]
        attr_accessor :export_uri
      
        # The reference names to export. If this is not specified, all reference
        # sequences, including unmapped reads, are exported. Use `*` to export only
        # unmapped reads.
        # Corresponds to the JSON property `referenceNames`
        # @return [Array<String>]
        attr_accessor :reference_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @export_uri = args[:export_uri] if args.key?(:export_uri)
          @reference_names = args[:reference_names] if args.key?(:reference_names)
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
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 256. The maximum value is 1024.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_ids = args[:dataset_ids] if args.key?(:dataset_ids)
          @name = args[:name] if args.key?(:name)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # The read group set search response.
      class SearchReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching read group sets.
        # Corresponds to the JSON property `readGroupSets`
        # @return [Array<Google::Apis::GenomicsV1::ReadGroupSet>]
        attr_accessor :read_group_sets
      
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
          @read_group_sets = args[:read_group_sets] if args.key?(:read_group_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A read group set is a logical collection of read groups, which are collections
      # of reads produced by a sequencer. A read group set typically models reads
      # corresponding to one sample, sequenced one way, and aligned one way. * A read
      # group set belongs to one dataset. * A read group belongs to one read group set.
      # * A read belongs to one read group. For more genomics resource definitions,
      # see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/
      # fundamentals-of-google-genomics)
      class ReadGroupSet
        include Google::Apis::Core::Hashable
      
        # The server-generated read group set ID, unique for all read group sets.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The dataset to which this read group set belongs.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The reference set to which the reads in this read group set are aligned.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # The read group set name. By default this will be initialized to the sample
        # name of the sequenced data contained in this set.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The filename of the original source file for this read group set, if any.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # The read groups in this set. There are typically 1-10 read groups in a read
        # group set.
        # Corresponds to the JSON property `readGroups`
        # @return [Array<Google::Apis::GenomicsV1::ReadGroup>]
        attr_accessor :read_groups
      
        # A map of additional read group set information.
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @name = args[:name] if args.key?(:name)
          @filename = args[:filename] if args.key?(:filename)
          @read_groups = args[:read_groups] if args.key?(:read_groups)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # A read group is all the data that's processed the same way by the sequencer.
      class ReadGroup
        include Google::Apis::Core::Hashable
      
        # The server-generated read group ID, unique for all read groups. Note: This is
        # different than the @RG ID field in the SAM spec. For that value, see name.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The dataset to which this read group belongs.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The read group name. This corresponds to the @RG ID field in the SAM spec.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A free-form text description of this read group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A client-supplied sample identifier for the reads in this read group.
        # Corresponds to the JSON property `sampleId`
        # @return [String]
        attr_accessor :sample_id
      
        # The experiment used to generate this read group.
        # Corresponds to the JSON property `experiment`
        # @return [Google::Apis::GenomicsV1::Experiment]
        attr_accessor :experiment
      
        # The predicted insert size of this read group. The insert size is the length
        # the sequenced DNA fragment from end-to-end, not including the adapters.
        # Corresponds to the JSON property `predictedInsertSize`
        # @return [Fixnum]
        attr_accessor :predicted_insert_size
      
        # The programs used to generate this read group. Programs are always identical
        # for all read groups within a read group set. For this reason, only the first
        # read group in a returned set will have this field populated.
        # Corresponds to the JSON property `programs`
        # @return [Array<Google::Apis::GenomicsV1::Program>]
        attr_accessor :programs
      
        # The reference set the reads in this read group are aligned to.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # A map of additional read group information. This must be of the form map (
        # string key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @name = args[:name] if args.key?(:name)
          @description = args[:description] if args.key?(:description)
          @sample_id = args[:sample_id] if args.key?(:sample_id)
          @experiment = args[:experiment] if args.key?(:experiment)
          @predicted_insert_size = args[:predicted_insert_size] if args.key?(:predicted_insert_size)
          @programs = args[:programs] if args.key?(:programs)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # 
      class Experiment
        include Google::Apis::Core::Hashable
      
        # A client-supplied library identifier; a library is a collection of DNA
        # fragments which have been prepared for sequencing from a sample. This field is
        # important for quality control as error or bias can be introduced during sample
        # preparation.
        # Corresponds to the JSON property `libraryId`
        # @return [String]
        attr_accessor :library_id
      
        # The platform unit used as part of this experiment, for example flowcell-
        # barcode.lane for Illumina or slide for SOLiD. Corresponds to the @RG PU field
        # in the SAM spec.
        # Corresponds to the JSON property `platformUnit`
        # @return [String]
        attr_accessor :platform_unit
      
        # The sequencing center used as part of this experiment.
        # Corresponds to the JSON property `sequencingCenter`
        # @return [String]
        attr_accessor :sequencing_center
      
        # The instrument model used as part of this experiment. This maps to sequencing
        # technology in the SAM spec.
        # Corresponds to the JSON property `instrumentModel`
        # @return [String]
        attr_accessor :instrument_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @library_id = args[:library_id] if args.key?(:library_id)
          @platform_unit = args[:platform_unit] if args.key?(:platform_unit)
          @sequencing_center = args[:sequencing_center] if args.key?(:sequencing_center)
          @instrument_model = args[:instrument_model] if args.key?(:instrument_model)
        end
      end
      
      # 
      class Program
        include Google::Apis::Core::Hashable
      
        # The command line used to run this program.
        # Corresponds to the JSON property `commandLine`
        # @return [String]
        attr_accessor :command_line
      
        # The user specified locally unique ID of the program. Used along with `
        # prevProgramId` to define an ordering between programs.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The display name of the program. This is typically the colloquial name of the
        # tool used, for example 'bwa' or 'picard'.
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
          @command_line = args[:command_line] if args.key?(:command_line)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @prev_program_id = args[:prev_program_id] if args.key?(:prev_program_id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class ListCoverageBucketsResponse
        include Google::Apis::Core::Hashable
      
        # The length of each coverage bucket in base pairs. Note that buckets at the end
        # of a reference sequence may be shorter. This value is omitted if the bucket
        # width is infinity (the default behaviour, with no range or `targetBucketWidth`)
        # .
        # Corresponds to the JSON property `bucketWidth`
        # @return [String]
        attr_accessor :bucket_width
      
        # The coverage buckets. The list of buckets is sparse; a bucket with 0
        # overlapping reads is not returned. A bucket never crosses more than one
        # reference sequence. Each bucket has width `bucketWidth`, unless its end is the
        # end of the reference sequence.
        # Corresponds to the JSON property `coverageBuckets`
        # @return [Array<Google::Apis::GenomicsV1::CoverageBucket>]
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
          @bucket_width = args[:bucket_width] if args.key?(:bucket_width)
          @coverage_buckets = args[:coverage_buckets] if args.key?(:coverage_buckets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A bucket over which read coverage has been precomputed. A bucket corresponds
      # to a specific range of the reference sequence.
      class CoverageBucket
        include Google::Apis::Core::Hashable
      
        # A 0-based half-open genomic coordinate range for search requests.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::GenomicsV1::Range]
        attr_accessor :range
      
        # The average number of reads which are aligned to each individual reference
        # base in this bucket.
        # Corresponds to the JSON property `meanCoverage`
        # @return [Float]
        attr_accessor :mean_coverage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @mean_coverage = args[:mean_coverage] if args.key?(:mean_coverage)
        end
      end
      
      # A 0-based half-open genomic coordinate range for search requests.
      class Range
        include Google::Apis::Core::Hashable
      
        # The reference sequence name, for example `chr1`, `1`, or `chrX`.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position of the range on the reference, 0-based exclusive.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
        end
      end
      
      # The read search request.
      class SearchReadsRequest
        include Google::Apis::Core::Hashable
      
        # The IDs of the read groups sets within which to search for reads. All
        # specified read group sets must be aligned against a common set of reference
        # sequences; this defines the genomic coordinates for the query. Must specify
        # one of `readGroupSetIds` or `readGroupIds`.
        # Corresponds to the JSON property `readGroupSetIds`
        # @return [Array<String>]
        attr_accessor :read_group_set_ids
      
        # The IDs of the read groups within which to search for reads. All specified
        # read groups must belong to the same read group sets. Must specify one of `
        # readGroupSetIds` or `readGroupIds`.
        # Corresponds to the JSON property `readGroupIds`
        # @return [Array<String>]
        attr_accessor :read_group_ids
      
        # The reference sequence name, for example `chr1`, `1`, or `chrX`. If set to `*`,
        # only unmapped reads are returned. If unspecified, all reads (mapped and
        # unmapped) are returned.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive. If
        # specified, `referenceName` must also be specified.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position of the range on the reference, 0-based exclusive. If
        # specified, `referenceName` must also be specified.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 256. The maximum value is 2048.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_group_set_ids = args[:read_group_set_ids] if args.key?(:read_group_set_ids)
          @read_group_ids = args[:read_group_ids] if args.key?(:read_group_ids)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # The read search response.
      class SearchReadsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching alignments sorted by mapped genomic coordinate, if any,
        # ascending in position within the same reference. Unmapped reads, which have no
        # position, are returned contiguously and are sorted in ascending lexicographic
        # order by fragment name.
        # Corresponds to the JSON property `alignments`
        # @return [Array<Google::Apis::GenomicsV1::Read>]
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
          @alignments = args[:alignments] if args.key?(:alignments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A read alignment describes a linear alignment of a string of DNA to a
      # reference sequence, in addition to metadata about the fragment (the molecule
      # of DNA sequenced) and the read (the bases which were read by the sequencer). A
      # read is equivalent to a line in a SAM file. A read belongs to exactly one read
      # group and exactly one read group set. For more genomics resource definitions,
      # see [Fundamentals of Google Genomics](https://cloud.google.com/genomics/
      # fundamentals-of-google-genomics) ### Reverse-stranded reads Mapped reads (
      # reads having a non-null `alignment`) can be aligned to either the forward or
      # the reverse strand of their associated reference. Strandedness of a mapped
      # read is encoded by `alignment.position.reverseStrand`. If we consider the
      # reference to be a forward-stranded coordinate space of `[0, reference.length)`
      # with `0` as the left-most position and `reference.length` as the right-most
      # position, reads are always aligned left to right. That is, `alignment.position.
      # position` always refers to the left-most reference coordinate and `alignment.
      # cigar` describes the alignment of this read to the reference from left to
      # right. All per-base fields such as `alignedSequence` and `alignedQuality`
      # share this same left-to-right orientation; this is true of reads which are
      # aligned to either strand. For reverse-stranded reads, this means that `
      # alignedSequence` is the reverse complement of the bases that were originally
      # reported by the sequencing machine. ### Generating a reference-aligned
      # sequence string When interacting with mapped reads, it's often useful to
      # produce a string representing the local alignment of the read to reference.
      # The following pseudocode demonstrates one way of doing this: out = "" offset =
      # 0 for c in read.alignment.cigar ` switch c.operation ` case "ALIGNMENT_MATCH",
      # "SEQUENCE_MATCH", "SEQUENCE_MISMATCH": out += read.alignedSequence[offset:
      # offset+c.operationLength] offset += c.operationLength break case "CLIP_SOFT", "
      # INSERT": offset += c.operationLength break case "PAD": out += repeat("*", c.
      # operationLength) break case "DELETE": out += repeat("-", c.operationLength)
      # break case "SKIP": out += repeat(" ", c.operationLength) break case "CLIP_HARD"
      # : break ` ` return out ### Converting to SAM's CIGAR string The following
      # pseudocode generates a SAM CIGAR string from the `cigar` field. Note that this
      # is a lossy conversion (`cigar.referenceSequence` is lost). cigarMap = ` "
      # ALIGNMENT_MATCH": "M", "INSERT": "I", "DELETE": "D", "SKIP": "N", "CLIP_SOFT":
      # "S", "CLIP_HARD": "H", "PAD": "P", "SEQUENCE_MATCH": "=", "SEQUENCE_MISMATCH":
      # "X", ` cigarStr = "" for c in read.alignment.cigar ` cigarStr += c.
      # operationLength + cigarMap[c.operation] ` return cigarStr
      class Read
        include Google::Apis::Core::Hashable
      
        # The server-generated read ID, unique across all reads. This is different from
        # the `fragmentName`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The ID of the read group this read belongs to. A read belongs to exactly one
        # read group. This is a server-generated ID which is distinct from SAM's RG tag (
        # for that value, see ReadGroup.name).
        # Corresponds to the JSON property `readGroupId`
        # @return [String]
        attr_accessor :read_group_id
      
        # The ID of the read group set this read belongs to. A read belongs to exactly
        # one read group set.
        # Corresponds to the JSON property `readGroupSetId`
        # @return [String]
        attr_accessor :read_group_set_id
      
        # The fragment name. Equivalent to QNAME (query template name) in SAM.
        # Corresponds to the JSON property `fragmentName`
        # @return [String]
        attr_accessor :fragment_name
      
        # The orientation and the distance between reads from the fragment are
        # consistent with the sequencing protocol (SAM flag 0x2).
        # Corresponds to the JSON property `properPlacement`
        # @return [Boolean]
        attr_accessor :proper_placement
        alias_method :proper_placement?, :proper_placement
      
        # The fragment is a PCR or optical duplicate (SAM flag 0x400).
        # Corresponds to the JSON property `duplicateFragment`
        # @return [Boolean]
        attr_accessor :duplicate_fragment
        alias_method :duplicate_fragment?, :duplicate_fragment
      
        # The observed length of the fragment, equivalent to TLEN in SAM.
        # Corresponds to the JSON property `fragmentLength`
        # @return [Fixnum]
        attr_accessor :fragment_length
      
        # The read number in sequencing. 0-based and less than numberReads. This field
        # replaces SAM flag 0x40 and 0x80.
        # Corresponds to the JSON property `readNumber`
        # @return [Fixnum]
        attr_accessor :read_number
      
        # The number of reads in the fragment (extension to SAM flag 0x1).
        # Corresponds to the JSON property `numberReads`
        # @return [Fixnum]
        attr_accessor :number_reads
      
        # Whether this read did not pass filters, such as platform or vendor quality
        # controls (SAM flag 0x200).
        # Corresponds to the JSON property `failedVendorQualityChecks`
        # @return [Boolean]
        attr_accessor :failed_vendor_quality_checks
        alias_method :failed_vendor_quality_checks?, :failed_vendor_quality_checks
      
        # A linear alignment can be represented by one CIGAR string. Describes the
        # mapped position and local alignment of the read to the reference.
        # Corresponds to the JSON property `alignment`
        # @return [Google::Apis::GenomicsV1::LinearAlignment]
        attr_accessor :alignment
      
        # Whether this alignment is secondary. Equivalent to SAM flag 0x100. A secondary
        # alignment represents an alternative to the primary alignment for this read.
        # Aligners may return secondary alignments if a read can map ambiguously to
        # multiple coordinates in the genome. By convention, each read has one and only
        # one alignment where both `secondaryAlignment` and `supplementaryAlignment` are
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
        # in a chimeric alignment, the read will be hard clipped. The `alignedSequence`
        # and `alignedQuality` fields in the alignment record will only represent the
        # bases for its respective linear alignment.
        # Corresponds to the JSON property `supplementaryAlignment`
        # @return [Boolean]
        attr_accessor :supplementary_alignment
        alias_method :supplementary_alignment?, :supplementary_alignment
      
        # The bases of the read sequence contained in this alignment record, **without
        # CIGAR operations applied** (equivalent to SEQ in SAM). `alignedSequence` and `
        # alignedQuality` may be shorter than the full read sequence and quality. This
        # will occur if the alignment is part of a chimeric alignment, or if the read
        # was trimmed. When this occurs, the CIGAR for this read will begin/end with a
        # hard clip operator that will indicate the length of the excised sequence.
        # Corresponds to the JSON property `alignedSequence`
        # @return [String]
        attr_accessor :aligned_sequence
      
        # The quality of the read sequence contained in this alignment record (
        # equivalent to QUAL in SAM). `alignedSequence` and `alignedQuality` may be
        # shorter than the full read sequence and quality. This will occur if the
        # alignment is part of a chimeric alignment, or if the read was trimmed. When
        # this occurs, the CIGAR for this read will begin/end with a hard clip operator
        # that will indicate the length of the excised sequence.
        # Corresponds to the JSON property `alignedQuality`
        # @return [Array<Fixnum>]
        attr_accessor :aligned_quality
      
        # An abstraction for referring to a genomic position, in relation to some
        # already known reference. For now, represents a genomic position as a reference
        # name, a base number on that reference (0-based), and a determination of
        # forward or reverse strand.
        # Corresponds to the JSON property `nextMatePosition`
        # @return [Google::Apis::GenomicsV1::Position]
        attr_accessor :next_mate_position
      
        # A map of additional read alignment information. This must be of the form map (
        # string key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @read_group_id = args[:read_group_id] if args.key?(:read_group_id)
          @read_group_set_id = args[:read_group_set_id] if args.key?(:read_group_set_id)
          @fragment_name = args[:fragment_name] if args.key?(:fragment_name)
          @proper_placement = args[:proper_placement] if args.key?(:proper_placement)
          @duplicate_fragment = args[:duplicate_fragment] if args.key?(:duplicate_fragment)
          @fragment_length = args[:fragment_length] if args.key?(:fragment_length)
          @read_number = args[:read_number] if args.key?(:read_number)
          @number_reads = args[:number_reads] if args.key?(:number_reads)
          @failed_vendor_quality_checks = args[:failed_vendor_quality_checks] if args.key?(:failed_vendor_quality_checks)
          @alignment = args[:alignment] if args.key?(:alignment)
          @secondary_alignment = args[:secondary_alignment] if args.key?(:secondary_alignment)
          @supplementary_alignment = args[:supplementary_alignment] if args.key?(:supplementary_alignment)
          @aligned_sequence = args[:aligned_sequence] if args.key?(:aligned_sequence)
          @aligned_quality = args[:aligned_quality] if args.key?(:aligned_quality)
          @next_mate_position = args[:next_mate_position] if args.key?(:next_mate_position)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # A linear alignment can be represented by one CIGAR string. Describes the
      # mapped position and local alignment of the read to the reference.
      class LinearAlignment
        include Google::Apis::Core::Hashable
      
        # An abstraction for referring to a genomic position, in relation to some
        # already known reference. For now, represents a genomic position as a reference
        # name, a base number on that reference (0-based), and a determination of
        # forward or reverse strand.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::GenomicsV1::Position]
        attr_accessor :position
      
        # The mapping quality of this alignment. Represents how likely the read maps to
        # this position as opposed to other locations. Specifically, this is -10 log10
        # Pr(mapping position is wrong), rounded to the nearest integer.
        # Corresponds to the JSON property `mappingQuality`
        # @return [Fixnum]
        attr_accessor :mapping_quality
      
        # Represents the local alignment of this sequence (alignment matches, indels,
        # etc) against the reference.
        # Corresponds to the JSON property `cigar`
        # @return [Array<Google::Apis::GenomicsV1::CigarUnit>]
        attr_accessor :cigar
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @position = args[:position] if args.key?(:position)
          @mapping_quality = args[:mapping_quality] if args.key?(:mapping_quality)
          @cigar = args[:cigar] if args.key?(:cigar)
        end
      end
      
      # An abstraction for referring to a genomic position, in relation to some
      # already known reference. For now, represents a genomic position as a reference
      # name, a base number on that reference (0-based), and a determination of
      # forward or reverse strand.
      class Position
        include Google::Apis::Core::Hashable
      
        # The name of the reference in whatever reference set is being used.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The 0-based offset from the start of the forward strand for that reference.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
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
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @position = args[:position] if args.key?(:position)
          @reverse_strand = args[:reverse_strand] if args.key?(:reverse_strand)
        end
      end
      
      # A single CIGAR operation.
      class CigarUnit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The number of genomic bases that the operation runs for. Required.
        # Corresponds to the JSON property `operationLength`
        # @return [String]
        attr_accessor :operation_length
      
        # `referenceSequence` is only used at mismatches (`SEQUENCE_MISMATCH`) and
        # deletions (`DELETE`). Filling this field replaces SAM's MD tag. If the
        # relevant information is not available, this field is unset.
        # Corresponds to the JSON property `referenceSequence`
        # @return [String]
        attr_accessor :reference_sequence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @operation_length = args[:operation_length] if args.key?(:operation_length)
          @reference_sequence = args[:reference_sequence] if args.key?(:reference_sequence)
        end
      end
      
      # The stream reads request.
      class StreamReadsRequest
        include Google::Apis::Core::Hashable
      
        # The Google Cloud project ID which will be billed for this access. The caller
        # must have WRITE access to this project. Required.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The ID of the read group set from which to stream reads.
        # Corresponds to the JSON property `readGroupSetId`
        # @return [String]
        attr_accessor :read_group_set_id
      
        # The reference sequence name, for example `chr1`, `1`, or `chrX`. If set to *,
        # only unmapped reads are returned.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The start position of the range on the reference, 0-based inclusive. If
        # specified, `referenceName` must also be specified.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position of the range on the reference, 0-based exclusive. If
        # specified, `referenceName` must also be specified.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Restricts results to a shard containing approximately `1/totalShards` of the
        # normal response payload for this query. Results from a sharded request are
        # disjoint from those returned by all queries which differ only in their shard
        # parameter. A shard may yield 0 results; this is especially likely for large
        # values of `totalShards`. Valid values are `[0, totalShards)`.
        # Corresponds to the JSON property `shard`
        # @return [Fixnum]
        attr_accessor :shard
      
        # Specifying `totalShards` causes a disjoint subset of the normal response
        # payload to be returned for each query with a unique `shard` parameter
        # specified. A best effort is made to yield equally sized shards. Sharding can
        # be used to distribute processing amongst workers, where each worker is
        # assigned a unique `shard` number and all workers specify the same `totalShards`
        # number. The union of reads returned for all sharded queries `[0, totalShards)`
        # is equal to those returned by a single unsharded query. Queries for different
        # values of `totalShards` with common divisors will share shard boundaries. For
        # example, streaming `shard` 2 of 5 `totalShards` yields the same results as
        # streaming `shard`s 4 and 5 of 10 `totalShards`. This property can be leveraged
        # for adaptive retries.
        # Corresponds to the JSON property `totalShards`
        # @return [Fixnum]
        attr_accessor :total_shards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @read_group_set_id = args[:read_group_set_id] if args.key?(:read_group_set_id)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @shard = args[:shard] if args.key?(:shard)
          @total_shards = args[:total_shards] if args.key?(:total_shards)
        end
      end
      
      # 
      class StreamReadsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alignments`
        # @return [Array<Google::Apis::GenomicsV1::Read>]
        attr_accessor :alignments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignments = args[:alignments] if args.key?(:alignments)
        end
      end
      
      # 
      class SearchReferenceSetsRequest
        include Google::Apis::Core::Hashable
      
        # If present, return reference sets for which the md5checksum matches exactly.
        # Corresponds to the JSON property `md5checksums`
        # @return [Array<String>]
        attr_accessor :md5checksums
      
        # If present, return reference sets for which a prefix of any of
        # sourceAccessions match any of these strings. Accession numbers typically have
        # a main number and a version, for example `NC_000001.11`.
        # Corresponds to the JSON property `accessions`
        # @return [Array<String>]
        attr_accessor :accessions
      
        # If present, return reference sets for which a substring of their `assemblyId`
        # matches this string (case insensitive).
        # Corresponds to the JSON property `assemblyId`
        # @return [String]
        attr_accessor :assembly_id
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 1024. The maximum value is 4096.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @md5checksums = args[:md5checksums] if args.key?(:md5checksums)
          @accessions = args[:accessions] if args.key?(:accessions)
          @assembly_id = args[:assembly_id] if args.key?(:assembly_id)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # 
      class SearchReferenceSetsResponse
        include Google::Apis::Core::Hashable
      
        # The matching references sets.
        # Corresponds to the JSON property `referenceSets`
        # @return [Array<Google::Apis::GenomicsV1::ReferenceSet>]
        attr_accessor :reference_sets
      
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
          @reference_sets = args[:reference_sets] if args.key?(:reference_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A reference set is a set of references which typically comprise a reference
      # assembly for a species, such as `GRCh38` which is representative of the human
      # genome. A reference set defines a common coordinate space for comparing
      # reference-aligned experimental data. A reference set contains 1 or more
      # references. For more genomics resource definitions, see [Fundamentals of
      # Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-
      # genomics)
      class ReferenceSet
        include Google::Apis::Core::Hashable
      
        # The server-generated reference set ID, unique across all reference sets.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The IDs of the reference objects that are part of this set. `Reference.
        # md5checksum` must be unique within this set.
        # Corresponds to the JSON property `referenceIds`
        # @return [Array<String>]
        attr_accessor :reference_ids
      
        # Order-independent MD5 checksum which identifies this reference set. The
        # checksum is computed by sorting all lower case hexidecimal string `reference.
        # md5checksum` (for all reference in this set) in ascending lexicographic order,
        # concatenating, and taking the MD5 of that value. The resulting value is
        # represented in lower case hexadecimal format.
        # Corresponds to the JSON property `md5checksum`
        # @return [String]
        attr_accessor :md5checksum
      
        # ID from http://www.ncbi.nlm.nih.gov/taxonomy (for example, 9606 for human)
        # indicating the species which this reference set is intended to model. Note
        # that contained references may specify a different `ncbiTaxonId`, as assemblies
        # may contain reference sequences which do not belong to the modeled species,
        # for example EBV in a human reference genome.
        # Corresponds to the JSON property `ncbiTaxonId`
        # @return [Fixnum]
        attr_accessor :ncbi_taxon_id
      
        # Free text description of this reference set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Public id of this reference set, such as `GRCh37`.
        # Corresponds to the JSON property `assemblyId`
        # @return [String]
        attr_accessor :assembly_id
      
        # The URI from which the references were obtained.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally with
        # a version number, for example `NC_000001.11`.
        # Corresponds to the JSON property `sourceAccessions`
        # @return [Array<String>]
        attr_accessor :source_accessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @reference_ids = args[:reference_ids] if args.key?(:reference_ids)
          @md5checksum = args[:md5checksum] if args.key?(:md5checksum)
          @ncbi_taxon_id = args[:ncbi_taxon_id] if args.key?(:ncbi_taxon_id)
          @description = args[:description] if args.key?(:description)
          @assembly_id = args[:assembly_id] if args.key?(:assembly_id)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @source_accessions = args[:source_accessions] if args.key?(:source_accessions)
        end
      end
      
      # 
      class SearchReferencesRequest
        include Google::Apis::Core::Hashable
      
        # If present, return references for which the md5checksum matches exactly.
        # Corresponds to the JSON property `md5checksums`
        # @return [Array<String>]
        attr_accessor :md5checksums
      
        # If present, return references for which a prefix of any of sourceAccessions
        # match any of these strings. Accession numbers typically have a main number and
        # a version, for example `GCF_000001405.26`.
        # Corresponds to the JSON property `accessions`
        # @return [Array<String>]
        attr_accessor :accessions
      
        # If present, return only references which belong to this reference set.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 1024. The maximum value is 4096.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @md5checksums = args[:md5checksums] if args.key?(:md5checksums)
          @accessions = args[:accessions] if args.key?(:accessions)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # 
      class SearchReferencesResponse
        include Google::Apis::Core::Hashable
      
        # The matching references.
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::GenomicsV1::Reference>]
        attr_accessor :references
      
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
          @references = args[:references] if args.key?(:references)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A reference is a canonical assembled DNA sequence, intended to act as a
      # reference coordinate space for other genomic annotations. A single reference
      # might represent the human chromosome 1 or mitochandrial DNA, for instance. A
      # reference belongs to one or more reference sets. For more genomics resource
      # definitions, see [Fundamentals of Google Genomics](https://cloud.google.com/
      # genomics/fundamentals-of-google-genomics)
      class Reference
        include Google::Apis::Core::Hashable
      
        # The server-generated reference ID, unique across all references.
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
      
        # The name of this reference, for example `22`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URI from which the sequence was obtained. Typically specifies a FASTA
        # format file.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally with
        # a version number, for example `GCF_000001405.26`.
        # Corresponds to the JSON property `sourceAccessions`
        # @return [Array<String>]
        attr_accessor :source_accessions
      
        # ID from http://www.ncbi.nlm.nih.gov/taxonomy. For example, 9606 for human.
        # Corresponds to the JSON property `ncbiTaxonId`
        # @return [Fixnum]
        attr_accessor :ncbi_taxon_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @length = args[:length] if args.key?(:length)
          @md5checksum = args[:md5checksum] if args.key?(:md5checksum)
          @name = args[:name] if args.key?(:name)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @source_accessions = args[:source_accessions] if args.key?(:source_accessions)
          @ncbi_taxon_id = args[:ncbi_taxon_id] if args.key?(:ncbi_taxon_id)
        end
      end
      
      # 
      class ListBasesResponse
        include Google::Apis::Core::Hashable
      
        # The offset position (0-based) of the given `sequence` from the start of this `
        # Reference`. This value will differ for each page in a paginated request.
        # Corresponds to the JSON property `offset`
        # @return [String]
        attr_accessor :offset
      
        # A substring of the bases that make up this reference.
        # Corresponds to the JSON property `sequence`
        # @return [String]
        attr_accessor :sequence
      
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
          @offset = args[:offset] if args.key?(:offset)
          @sequence = args[:sequence] if args.key?(:sequence)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The variant data import request.
      class ImportVariantsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The variant set to which variant data should be imported.
        # Corresponds to the JSON property `variantSetId`
        # @return [String]
        attr_accessor :variant_set_id
      
        # A list of URIs referencing variant files in Google Cloud Storage. URIs can
        # include wildcards [as described here](https://cloud.google.com/storage/docs/
        # gsutil/addlhelp/WildcardNames). Note that recursive wildcards ('**') are not
        # supported.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        # The format of the variant data being imported. If unspecified, defaults to to `
        # VCF`.
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
      
        # A mapping between info field keys and the InfoMergeOperations to be performed
        # on them. This is plumbed down to the MergeVariantRequests generated by the
        # resulting import job.
        # Corresponds to the JSON property `infoMergeConfig`
        # @return [Hash<String,String>]
        attr_accessor :info_merge_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_set_id = args[:variant_set_id] if args.key?(:variant_set_id)
          @source_uris = args[:source_uris] if args.key?(:source_uris)
          @format = args[:format] if args.key?(:format)
          @normalize_reference_names = args[:normalize_reference_names] if args.key?(:normalize_reference_names)
          @info_merge_config = args[:info_merge_config] if args.key?(:info_merge_config)
        end
      end
      
      # A variant set is a collection of call sets and variants. It contains summary
      # statistics of those contents. A variant set belongs to a dataset. For more
      # genomics resource definitions, see [Fundamentals of Google Genomics](https://
      # cloud.google.com/genomics/fundamentals-of-google-genomics)
      class VariantSet
        include Google::Apis::Core::Hashable
      
        # The dataset to which this variant set belongs.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The server-generated variant set ID, unique across all variant sets.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The reference set to which the variant set is mapped. The reference set
        # describes the alignment provenance of the variant set, while the `
        # referenceBounds` describe the shape of the actual variant data. The reference
        # set's reference names are a superset of those found in the `referenceBounds`.
        # For example, given a variant set that is mapped to the GRCh38 reference set
        # and contains a single variant on reference 'X', `referenceBounds` would
        # contain only an entry for 'X', while the associated reference set enumerates
        # all possible references: '1', '2', 'X', 'Y', 'MT', etc.
        # Corresponds to the JSON property `referenceSetId`
        # @return [String]
        attr_accessor :reference_set_id
      
        # A list of all references used by the variants in a variant set with associated
        # coordinate upper bounds for each one.
        # Corresponds to the JSON property `referenceBounds`
        # @return [Array<Google::Apis::GenomicsV1::ReferenceBound>]
        attr_accessor :reference_bounds
      
        # The metadata associated with this variant set.
        # Corresponds to the JSON property `metadata`
        # @return [Array<Google::Apis::GenomicsV1::VariantSetMetadata>]
        attr_accessor :metadata
      
        # User-specified, mutable name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A textual description of this variant set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @id = args[:id] if args.key?(:id)
          @reference_set_id = args[:reference_set_id] if args.key?(:reference_set_id)
          @reference_bounds = args[:reference_bounds] if args.key?(:reference_bounds)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # ReferenceBound records an upper bound for the starting coordinate of variants
      # in a particular reference.
      class ReferenceBound
        include Google::Apis::Core::Hashable
      
        # The name of the reference associated with this reference bound.
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
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # Metadata describes a single piece of variant call metadata. These data include
      # a top level key and either a single value string (value) or a list of key-
      # value pairs (info.) Value and info are mutually exclusive.
      class VariantSetMetadata
        include Google::Apis::Core::Hashable
      
        # The top-level key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value field for simple metadata
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # User-provided ID field, not enforced by this API. Two or more pieces of
        # structured metadata with identical id and key fields are considered equivalent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of data. Possible types include: Integer, Float, Flag, Character, and
        # String.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The number of values that can be included in a field described by this
        # metadata.
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        # A textual description of this metadata.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Remaining structured metadata key-value pairs. This must be of the form map (
        # string key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
          @id = args[:id] if args.key?(:id)
          @type = args[:type] if args.key?(:type)
          @number = args[:number] if args.key?(:number)
          @description = args[:description] if args.key?(:description)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # The variant data export request.
      class ExportVariantSetRequest
        include Google::Apis::Core::Hashable
      
        # If provided, only variant call information from the specified call sets will
        # be exported. By default all variant calls are exported.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        # Required. The Google Cloud project ID that owns the destination BigQuery
        # dataset. The caller must have WRITE access to this project. This project will
        # also own the resulting export job.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The format for the exported data.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_set_ids = args[:call_set_ids] if args.key?(:call_set_ids)
          @project_id = args[:project_id] if args.key?(:project_id)
          @format = args[:format] if args.key?(:format)
          @bigquery_dataset = args[:bigquery_dataset] if args.key?(:bigquery_dataset)
          @bigquery_table = args[:bigquery_table] if args.key?(:bigquery_table)
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
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 1024.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_ids = args[:dataset_ids] if args.key?(:dataset_ids)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # The search variant sets response.
      class SearchVariantSetsResponse
        include Google::Apis::Core::Hashable
      
        # The variant sets belonging to the requested dataset.
        # Corresponds to the JSON property `variantSets`
        # @return [Array<Google::Apis::GenomicsV1::VariantSet>]
        attr_accessor :variant_sets
      
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
          @variant_sets = args[:variant_sets] if args.key?(:variant_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The variant search request.
      class SearchVariantsRequest
        include Google::Apis::Core::Hashable
      
        # At most one variant set ID must be provided. Only variants from this variant
        # set will be returned. If omitted, a call set id must be included in the
        # request.
        # Corresponds to the JSON property `variantSetIds`
        # @return [Array<String>]
        attr_accessor :variant_set_ids
      
        # Only return variants which have exactly this name.
        # Corresponds to the JSON property `variantName`
        # @return [String]
        attr_accessor :variant_name
      
        # Only return variant calls which belong to call sets with these ids. Leaving
        # this blank returns all variant calls. If a variant has no calls belonging to
        # any of these call sets, it won't be returned at all.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        # Required. Only return variants in this reference sequence.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The beginning of the window (0-based, inclusive) for which overlapping
        # variants should be returned. If unspecified, defaults to 0.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end of the window, 0-based exclusive. If unspecified or 0, defaults to the
        # length of the reference.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of variants to return in a single page. If unspecified,
        # defaults to 5000. The maximum value is 10000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The maximum number of calls to return in a single page. Note that this limit
        # may be exceeded in the event that a matching variant contains more calls than
        # the requested maximum. If unspecified, defaults to 5000. The maximum value is
        # 10000.
        # Corresponds to the JSON property `maxCalls`
        # @return [Fixnum]
        attr_accessor :max_calls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_set_ids = args[:variant_set_ids] if args.key?(:variant_set_ids)
          @variant_name = args[:variant_name] if args.key?(:variant_name)
          @call_set_ids = args[:call_set_ids] if args.key?(:call_set_ids)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
          @max_calls = args[:max_calls] if args.key?(:max_calls)
        end
      end
      
      # The variant search response.
      class SearchVariantsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching Variants.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::GenomicsV1::Variant>]
        attr_accessor :variants
      
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
          @variants = args[:variants] if args.key?(:variants)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A variant represents a change in DNA sequence relative to a reference sequence.
      # For example, a variant could represent a SNP or an insertion. Variants belong
      # to a variant set. For more genomics resource definitions, see [Fundamentals of
      # Google Genomics](https://cloud.google.com/genomics/fundamentals-of-google-
      # genomics) Each of the calls on a variant represent a determination of genotype
      # with respect to that variant. For example, a call might assign probability of
      # 0.32 to the occurrence of a SNP named rs1234 in a sample named NA12345. A call
      # belongs to a call set, which contains related calls typically from one sample.
      class Variant
        include Google::Apis::Core::Hashable
      
        # The ID of the variant set this variant belongs to.
        # Corresponds to the JSON property `variantSetId`
        # @return [String]
        attr_accessor :variant_set_id
      
        # The server-generated variant ID, unique across all variants.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Names for the variant, for example a RefSNP ID.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # The date this variant was created, in milliseconds from the epoch.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # The reference on which this variant occurs. (such as `chr20` or `X`)
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The position at which this variant occurs (0-based). This corresponds to the
        # first base of the string of reference bases.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end position (0-based) of this variant. This corresponds to the first base
        # after the last base in the reference allele. So, the length of the reference
        # allele is (end - start). This is useful for variants that don't explicitly
        # give alternate bases, for example large deletions.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The reference bases for this variant. They start at the given position.
        # Corresponds to the JSON property `referenceBases`
        # @return [String]
        attr_accessor :reference_bases
      
        # The bases that appear instead of the reference bases.
        # Corresponds to the JSON property `alternateBases`
        # @return [Array<String>]
        attr_accessor :alternate_bases
      
        # A measure of how likely this variant is to be real. A higher value is better.
        # Corresponds to the JSON property `quality`
        # @return [Float]
        attr_accessor :quality
      
        # A list of filters (normally quality filters) this variant has failed. `PASS`
        # indicates this variant has passed all filters.
        # Corresponds to the JSON property `filter`
        # @return [Array<String>]
        attr_accessor :filter
      
        # A map of additional variant information. This must be of the form map (string
        # key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        # The variant calls for this particular variant. Each one represents the
        # determination of genotype with respect to this variant.
        # Corresponds to the JSON property `calls`
        # @return [Array<Google::Apis::GenomicsV1::VariantCall>]
        attr_accessor :calls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_set_id = args[:variant_set_id] if args.key?(:variant_set_id)
          @id = args[:id] if args.key?(:id)
          @names = args[:names] if args.key?(:names)
          @created = args[:created] if args.key?(:created)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
          @reference_bases = args[:reference_bases] if args.key?(:reference_bases)
          @alternate_bases = args[:alternate_bases] if args.key?(:alternate_bases)
          @quality = args[:quality] if args.key?(:quality)
          @filter = args[:filter] if args.key?(:filter)
          @info = args[:info] if args.key?(:info)
          @calls = args[:calls] if args.key?(:calls)
        end
      end
      
      # A call represents the determination of genotype with respect to a particular
      # variant. It may include associated information such as quality and phasing.
      # For example, a call might assign a probability of 0.32 to the occurrence of a
      # SNP named rs1234 in a call set with the name NA12345.
      class VariantCall
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
        # the `referenceBases` field or a 1-based index into `alternateBases`. If a
        # variant had a `referenceBases` value of `T` and an `alternateBases` value of `[
        # "A", "C"]`, and the `genotype` was `[2, 1]`, that would mean the call
        # represented the heterozygous value `CA` for this variant. If the `genotype`
        # was instead `[0, 1]`, the represented value would be `TA`. Ordering of the
        # genotype values is important if the `phaseset` is present. If a genotype is
        # not called (that is, a `.` is present in the GT string) -1 is returned.
        # Corresponds to the JSON property `genotype`
        # @return [Array<Fixnum>]
        attr_accessor :genotype
      
        # If this field is present, this variant call's genotype ordering implies the
        # phase of the bases and is consistent with any other variant calls in the same
        # reference sequence which have the same phaseset value. When importing data
        # from VCF, if the genotype data was phased but no phase set was specified this
        # field will be set to `*`.
        # Corresponds to the JSON property `phaseset`
        # @return [String]
        attr_accessor :phaseset
      
        # The genotype likelihoods for this variant call. Each array entry represents
        # how likely a specific genotype is for this call. The value ordering is defined
        # by the GL tag in the VCF spec. If Phred-scaled genotype likelihood scores (PL)
        # are available and log10(P) genotype likelihood scores (GL) are not, PL scores
        # are converted to GL scores. If both are available, PL scores are stored in `
        # info`.
        # Corresponds to the JSON property `genotypeLikelihood`
        # @return [Array<Float>]
        attr_accessor :genotype_likelihood
      
        # A map of additional variant call information. This must be of the form map (
        # string key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_set_id = args[:call_set_id] if args.key?(:call_set_id)
          @call_set_name = args[:call_set_name] if args.key?(:call_set_name)
          @genotype = args[:genotype] if args.key?(:genotype)
          @phaseset = args[:phaseset] if args.key?(:phaseset)
          @genotype_likelihood = args[:genotype_likelihood] if args.key?(:genotype_likelihood)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # 
      class MergeVariantsRequest
        include Google::Apis::Core::Hashable
      
        # The destination variant set.
        # Corresponds to the JSON property `variantSetId`
        # @return [String]
        attr_accessor :variant_set_id
      
        # The variants to be merged with existing variants.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::GenomicsV1::Variant>]
        attr_accessor :variants
      
        # A mapping between info field keys and the InfoMergeOperations to be performed
        # on them.
        # Corresponds to the JSON property `infoMergeConfig`
        # @return [Hash<String,String>]
        attr_accessor :info_merge_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_set_id = args[:variant_set_id] if args.key?(:variant_set_id)
          @variants = args[:variants] if args.key?(:variants)
          @info_merge_config = args[:info_merge_config] if args.key?(:info_merge_config)
        end
      end
      
      # The call set search request.
      class SearchCallSetsRequest
        include Google::Apis::Core::Hashable
      
        # Restrict the query to call sets within the given variant sets. At least one ID
        # must be provided.
        # Corresponds to the JSON property `variantSetIds`
        # @return [Array<String>]
        attr_accessor :variant_set_ids
      
        # Only return call sets for which a substring of the name matches this string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The continuation token, which is used to page through large result sets. To
        # get the next page of results, set this parameter to the value of `
        # nextPageToken` from the previous response.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The maximum number of results to return in a single page. If unspecified,
        # defaults to 1024.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_set_ids = args[:variant_set_ids] if args.key?(:variant_set_ids)
          @name = args[:name] if args.key?(:name)
          @page_token = args[:page_token] if args.key?(:page_token)
          @page_size = args[:page_size] if args.key?(:page_size)
        end
      end
      
      # The call set search response.
      class SearchCallSetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching call sets.
        # Corresponds to the JSON property `callSets`
        # @return [Array<Google::Apis::GenomicsV1::CallSet>]
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
          @call_sets = args[:call_sets] if args.key?(:call_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A call set is a collection of variant calls, typically for one sample. It
      # belongs to a variant set. For more genomics resource definitions, see [
      # Fundamentals of Google Genomics](https://cloud.google.com/genomics/
      # fundamentals-of-google-genomics)
      class CallSet
        include Google::Apis::Core::Hashable
      
        # The server-generated call set ID, unique across all call sets.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The call set name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The sample ID this call set corresponds to.
        # Corresponds to the JSON property `sampleId`
        # @return [String]
        attr_accessor :sample_id
      
        # The IDs of the variant sets this call set belongs to. This field must have
        # exactly length one, as a call set belongs to a single variant set. This field
        # is repeated for compatibility with the [GA4GH 0.5.1 API](https://github.com/
        # ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/variants.avdl#L76).
        # Corresponds to the JSON property `variantSetIds`
        # @return [Array<String>]
        attr_accessor :variant_set_ids
      
        # The date this call set was created in milliseconds from the epoch.
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # A map of additional call set information. This must be of the form map (string
        # key mapping to a list of string values).
        # Corresponds to the JSON property `info`
        # @return [Hash<String,Array<Object>>]
        attr_accessor :info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @sample_id = args[:sample_id] if args.key?(:sample_id)
          @variant_set_ids = args[:variant_set_ids] if args.key?(:variant_set_ids)
          @created = args[:created] if args.key?(:created)
          @info = args[:info] if args.key?(:info)
        end
      end
      
      # The stream variants request.
      class StreamVariantsRequest
        include Google::Apis::Core::Hashable
      
        # The Google Cloud project ID which will be billed for this access. The caller
        # must have WRITE access to this project. Required.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The variant set ID from which to stream variants.
        # Corresponds to the JSON property `variantSetId`
        # @return [String]
        attr_accessor :variant_set_id
      
        # Only return variant calls which belong to call sets with these IDs. Leaving
        # this blank returns all variant calls.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        # Required. Only return variants in this reference sequence.
        # Corresponds to the JSON property `referenceName`
        # @return [String]
        attr_accessor :reference_name
      
        # The beginning of the window (0-based, inclusive) for which overlapping
        # variants should be returned.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        # The end of the window (0-based, exclusive) for which overlapping variants
        # should be returned.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @variant_set_id = args[:variant_set_id] if args.key?(:variant_set_id)
          @call_set_ids = args[:call_set_ids] if args.key?(:call_set_ids)
          @reference_name = args[:reference_name] if args.key?(:reference_name)
          @start = args[:start] if args.key?(:start)
          @end = args[:end] if args.key?(:end)
        end
      end
      
      # 
      class StreamVariantsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::GenomicsV1::Variant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # The read group set import response.
      class ImportReadGroupSetsResponse
        include Google::Apis::Core::Hashable
      
        # IDs of the read group sets that were created.
        # Corresponds to the JSON property `readGroupSetIds`
        # @return [Array<String>]
        attr_accessor :read_group_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_group_set_ids = args[:read_group_set_ids] if args.key?(:read_group_set_ids)
        end
      end
      
      # The variant data import response.
      class ImportVariantsResponse
        include Google::Apis::Core::Hashable
      
        # IDs of the call sets created during the import.
        # Corresponds to the JSON property `callSetIds`
        # @return [Array<String>]
        attr_accessor :call_set_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_set_ids = args[:call_set_ids] if args.key?(:call_set_ids)
        end
      end
      
      # Metadata describing an Operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Project in which the job is scoped.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The time at which the job was submitted to the Genomics service.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the job began to run.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The time at which the job stopped running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The original request that started the operation. Note that this will be in
        # current version of the API. If the operation was started with v1beta2 API and
        # a GetOperation is performed on v1 API, a v1 request will be returned.
        # Corresponds to the JSON property `request`
        # @return [Hash<String,Object>]
        attr_accessor :request
      
        # Optional event messages that were generated during the job's execution. This
        # also contains any warnings that were generated during import or export.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::GenomicsV1::OperationEvent>]
        attr_accessor :events
      
        # This field is deprecated. Use `labels` instead. Optionally provided by the
        # caller when submitting the request that creates the operation.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Runtime metadata on this Operation.
        # Corresponds to the JSON property `runtimeMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :runtime_metadata
      
        # Optionally provided by the caller when submitting the request that creates the
        # operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
          @events = args[:events] if args.key?(:events)
          @client_id = args[:client_id] if args.key?(:client_id)
          @runtime_metadata = args[:runtime_metadata] if args.key?(:runtime_metadata)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # An event that occurred during an Operation.
      class OperationEvent
        include Google::Apis::Core::Hashable
      
        # Optional time of when event started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Optional time of when event finished. An event can have a start time and no
        # finish time. If an event has a finish time, there must be a start time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required description of event.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Runtime metadata that will be populated in the runtimeMetadata field of the
      # Operation associated with a RunPipeline execution.
      class RuntimeMetadata
        include Google::Apis::Core::Hashable
      
        # Describes a Compute Engine resource that is being managed by a running
        # pipeline.
        # Corresponds to the JSON property `computeEngine`
        # @return [Google::Apis::GenomicsV1::ComputeEngine]
        attr_accessor :compute_engine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine = args[:compute_engine] if args.key?(:compute_engine)
        end
      end
      
      # Describes a Compute Engine resource that is being managed by a running
      # pipeline.
      class ComputeEngine
        include Google::Apis::Core::Hashable
      
        # The instance on which the operation is running.
        # Corresponds to the JSON property `instanceName`
        # @return [String]
        attr_accessor :instance_name
      
        # The availability zone in which the instance resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        # The machine type of the instance.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The names of the disks that were created for this pipeline.
        # Corresponds to the JSON property `diskNames`
        # @return [Array<String>]
        attr_accessor :disk_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_name = args[:instance_name] if args.key?(:instance_name)
          @zone = args[:zone] if args.key?(:zone)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @disk_names = args[:disk_names] if args.key?(:disk_names)
        end
      end
    end
  end
end
