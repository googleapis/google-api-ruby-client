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
    module DisplayvideoV1
      
      # Request message for [SdfDownloadTaskService.CreateSdfDownloadTask].
      class CreateSdfDownloadTaskRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the advertiser to download SDF for.
        # Corresponds to the JSON property `advertiserId`
        # @return [Fixnum]
        attr_accessor :advertiser_id
      
        # A filtering option that filters entities by their entity IDs.
        # Corresponds to the JSON property `idFilter`
        # @return [Google::Apis::DisplayvideoV1::IdFilter]
        attr_accessor :id_filter
      
        # A filtering option for filtering on Inventory Source entities.
        # Corresponds to the JSON property `inventorySourceFilter`
        # @return [Google::Apis::DisplayvideoV1::InventorySourceFilter]
        attr_accessor :inventory_source_filter
      
        # A filtering option that filters on selected file types belonging to a chosen
        # set of filter entities.
        # Corresponds to the JSON property `parentEntityFilter`
        # @return [Google::Apis::DisplayvideoV1::ParentEntityFilter]
        attr_accessor :parent_entity_filter
      
        # The ID of the partner to download SDF for.
        # Corresponds to the JSON property `partnerId`
        # @return [Fixnum]
        attr_accessor :partner_id
      
        # Required. The SDF version of the downloaded file. If set to
        # `SDF_VERSION_UNSPECIFIED`, this will default to the version specified by
        # the advertiser or partner identified by `root_id`. An advertiser inherits
        # its SDF version from its partner unless configured otherwise.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @id_filter = args[:id_filter] if args.key?(:id_filter)
          @inventory_source_filter = args[:inventory_source_filter] if args.key?(:inventory_source_filter)
          @parent_entity_filter = args[:parent_entity_filter] if args.key?(:parent_entity_filter)
          @partner_id = args[:partner_id] if args.key?(:partner_id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Media resource.
      class GoogleBytestreamMedia
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A filtering option that filters entities by their entity IDs.
      class IdFilter
        include Google::Apis::Core::Hashable
      
        # TrueView Ads to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupAdIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_ad_ids
      
        # TrueView Ad Groups to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `adGroupIds`
        # @return [Array<Fixnum>]
        attr_accessor :ad_group_ids
      
        # Campaigns to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `campaignIds`
        # @return [Array<Fixnum>]
        attr_accessor :campaign_ids
      
        # Insertion Orders to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `insertionOrderIds`
        # @return [Array<Fixnum>]
        attr_accessor :insertion_order_ids
      
        # Line Items to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `lineItemIds`
        # @return [Array<Fixnum>]
        attr_accessor :line_item_ids
      
        # Media Products to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest.
        # Corresponds to the JSON property `mediaProductIds`
        # @return [Array<Fixnum>]
        attr_accessor :media_product_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_ad_ids = args[:ad_group_ad_ids] if args.key?(:ad_group_ad_ids)
          @ad_group_ids = args[:ad_group_ids] if args.key?(:ad_group_ids)
          @campaign_ids = args[:campaign_ids] if args.key?(:campaign_ids)
          @insertion_order_ids = args[:insertion_order_ids] if args.key?(:insertion_order_ids)
          @line_item_ids = args[:line_item_ids] if args.key?(:line_item_ids)
          @media_product_ids = args[:media_product_ids] if args.key?(:media_product_ids)
        end
      end
      
      # A filtering option for filtering on Inventory Source entities.
      class InventorySourceFilter
        include Google::Apis::Core::Hashable
      
        # Inventory Sources to download by ID. All IDs must belong to the same
        # Advertiser or
        # Partner specified in
        # CreateSdfDownloadTaskRequest. Leave empty to download all Inventory
        # Sources for the selected Advertiser or Partner.
        # Corresponds to the JSON property `inventorySourceIds`
        # @return [Array<Fixnum>]
        attr_accessor :inventory_source_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_source_ids = args[:inventory_source_ids] if args.key?(:inventory_source_ids)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DisplayvideoV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A filtering option that filters on selected file types belonging to a chosen
      # set of filter entities.
      class ParentEntityFilter
        include Google::Apis::Core::Hashable
      
        # Required. File types that will be returned.
        # Corresponds to the JSON property `fileType`
        # @return [Array<String>]
        attr_accessor :file_type
      
        # The IDs of the specified filter type. This is used to filter entities to
        # fetch. If filter type is not `FILTER_TYPE_NONE`, at least one ID must be
        # specified.
        # Corresponds to the JSON property `filterIds`
        # @return [Array<Fixnum>]
        attr_accessor :filter_ids
      
        # Required. Filter type used to filter fetched entities.
        # Corresponds to the JSON property `filterType`
        # @return [String]
        attr_accessor :filter_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_type = args[:file_type] if args.key?(:file_type)
          @filter_ids = args[:filter_ids] if args.key?(:filter_ids)
          @filter_type = args[:filter_type] if args.key?(:filter_type)
        end
      end
      
      # Type for the response returned
      # by [SdfDownloadTaskService.CreateSdfDownloadTask].
      class SdfDownloadTask
        include Google::Apis::Core::Hashable
      
        # A resource name to be used in
        # media.download to Download the prepared
        # files. Resource names have the format
        # `download/sdfdownloadtasks/media/`media_id``. `media_id` will be made
        # available by the long running operation service once the task status is
        # done.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Type for the metadata returned
      # by [SdfDownloadTaskService.CreateSdfDownloadTask].
      class SdfDownloadTaskMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time when execution was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The SDF version used to execute this download task.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
