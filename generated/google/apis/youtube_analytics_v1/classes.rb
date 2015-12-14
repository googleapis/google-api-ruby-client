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
    module YoutubeAnalyticsV1
      
      # Contains single batchReport resource.
      class BatchReport
        include Google::Apis::Core::Hashable
      
        # The ID that YouTube assigns and uses to uniquely identify the report.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This value specifies the type of data of this item. For batch report the kind
        # property value is youtubeAnalytics#batchReport.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Report outputs.
        # Corresponds to the JSON property `outputs`
        # @return [Array<Google::Apis::YoutubeAnalyticsV1::BatchReport::Output>]
        attr_accessor :outputs
      
        # The ID of the the report definition.
        # Corresponds to the JSON property `reportId`
        # @return [String]
        attr_accessor :report_id
      
        # Period included in the report. For reports containing all entities endTime is
        # not set. Both startTime and endTime are inclusive.
        # Corresponds to the JSON property `timeSpan`
        # @return [Google::Apis::YoutubeAnalyticsV1::BatchReport::TimeSpan]
        attr_accessor :time_span
      
        # The time when the report was updated.
        # Corresponds to the JSON property `timeUpdated`
        # @return [DateTime]
        attr_accessor :time_updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @outputs = args[:outputs] unless args[:outputs].nil?
          @report_id = args[:report_id] unless args[:report_id].nil?
          @time_span = args[:time_span] unless args[:time_span].nil?
          @time_updated = args[:time_updated] unless args[:time_updated].nil?
        end
        
        # 
        class Output
          include Google::Apis::Core::Hashable
        
          # Cloud storage URL to download this report. This URL is valid for 30 minutes.
          # Corresponds to the JSON property `downloadUrl`
          # @return [String]
          attr_accessor :download_url
        
          # Format of the output.
          # Corresponds to the JSON property `format`
          # @return [String]
          attr_accessor :format
        
          # Type of the output.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @download_url = args[:download_url] unless args[:download_url].nil?
            @format = args[:format] unless args[:format].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Period included in the report. For reports containing all entities endTime is
        # not set. Both startTime and endTime are inclusive.
        class TimeSpan
          include Google::Apis::Core::Hashable
        
          # End of the period included in the report. Inclusive. For reports containing
          # all entities endTime is not set.
          # Corresponds to the JSON property `endTime`
          # @return [DateTime]
          attr_accessor :end_time
        
          # Start of the period included in the report. Inclusive.
          # Corresponds to the JSON property `startTime`
          # @return [DateTime]
          attr_accessor :start_time
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @end_time = args[:end_time] unless args[:end_time].nil?
            @start_time = args[:start_time] unless args[:start_time].nil?
          end
        end
      end
      
      # Contains single batchReportDefinition resource.
      class BatchReportDefinition
        include Google::Apis::Core::Hashable
      
        # The ID that YouTube assigns and uses to uniquely identify the report
        # definition.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This value specifies the type of data of this item. For batch report
        # definition the kind property value is youtubeAnalytics#batchReportDefinition.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the report definition.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of the report definition.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of the report definition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @status = args[:status] unless args[:status].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A paginated list of batchReportDefinition resources returned in response to a
      # youtubeAnalytics.batchReportDefinitions.list request.
      class BatchReportDefinitionList
        include Google::Apis::Core::Hashable
      
        # A list of batchReportDefinition resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubeAnalyticsV1::BatchReportDefinition>]
        attr_accessor :items
      
        # This value specifies the type of data included in the API response. For the
        # list method, the kind property value is youtubeAnalytics#
        # batchReportDefinitionList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A paginated list of batchReport resources returned in response to a
      # youtubeAnalytics.batchReport.list request.
      class BatchReportList
        include Google::Apis::Core::Hashable
      
        # A list of batchReport resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubeAnalyticsV1::BatchReport>]
        attr_accessor :items
      
        # This value specifies the type of data included in the API response. For the
        # list method, the kind property value is youtubeAnalytics#batchReportList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class Group
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contentDetails`
        # @return [Google::Apis::YoutubeAnalyticsV1::Group::ContentDetails]
        attr_accessor :content_details
      
        # 
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `snippet`
        # @return [Google::Apis::YoutubeAnalyticsV1::Group::Snippet]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_details = args[:content_details] unless args[:content_details].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @snippet = args[:snippet] unless args[:snippet].nil?
        end
        
        # 
        class ContentDetails
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `itemCount`
          # @return [String]
          attr_accessor :item_count
        
          # 
          # Corresponds to the JSON property `itemType`
          # @return [String]
          attr_accessor :item_type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @item_count = args[:item_count] unless args[:item_count].nil?
            @item_type = args[:item_type] unless args[:item_type].nil?
          end
        end
        
        # 
        class Snippet
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `publishedAt`
          # @return [DateTime]
          attr_accessor :published_at
        
          # 
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @published_at = args[:published_at] unless args[:published_at].nil?
            @title = args[:title] unless args[:title].nil?
          end
        end
      end
      
      # 
      class GroupItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::YoutubeAnalyticsV1::GroupItem::Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @group_id = args[:group_id] unless args[:group_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @resource = args[:resource] unless args[:resource].nil?
        end
        
        # 
        class Resource
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # 
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @id = args[:id] unless args[:id].nil?
            @kind = args[:kind] unless args[:kind].nil?
          end
        end
      end
      
      # A paginated list of grouList resources returned in response to a
      # youtubeAnalytics.groupApi.list request.
      class ListGroupItemResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubeAnalyticsV1::GroupItem>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A paginated list of grouList resources returned in response to a
      # youtubeAnalytics.groupApi.list request.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubeAnalyticsV1::Group>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Contains a single result table. The table is returned as an array of rows that
      # contain the values for the cells of the table. Depending on the metric or
      # dimension, the cell can contain a string (video ID, country code) or a number (
      # number of views or number of likes).
      class ResultTable
        include Google::Apis::Core::Hashable
      
        # This value specifies information about the data returned in the rows fields.
        # Each item in the columnHeaders list identifies a field returned in the rows
        # value, which contains a list of comma-delimited data. The columnHeaders list
        # will begin with the dimensions specified in the API request, which will be
        # followed by the metrics specified in the API request. The order of both
        # dimensions and metrics will match the ordering in the API request. For example,
        # if the API request contains the parameters dimensions=ageGroup,gender&metrics=
        # viewerPercentage, the API response will return columns in this order: ageGroup,
        # gender,viewerPercentage.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Array<Google::Apis::YoutubeAnalyticsV1::ResultTable::ColumnHeader>]
        attr_accessor :column_headers
      
        # This value specifies the type of data included in the API response. For the
        # query method, the kind property value will be youtubeAnalytics#resultTable.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list contains all rows of the result table. Each item in the list is an
        # array that contains comma-delimited data corresponding to a single row of data.
        # The order of the comma-delimited data fields will match the order of the
        # columns listed in the columnHeaders field. If no data is available for the
        # given query, the rows element will be omitted from the response. The response
        # for a query with the day dimension will not contain rows for the most recent
        # days.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<Object>>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] unless args[:column_headers].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @rows = args[:rows] unless args[:rows].nil?
        end
        
        # 
        class ColumnHeader
          include Google::Apis::Core::Hashable
        
          # The type of the column (DIMENSION or METRIC).
          # Corresponds to the JSON property `columnType`
          # @return [String]
          attr_accessor :column_type
        
          # The type of the data in the column (STRING, INTEGER, FLOAT, etc.).
          # Corresponds to the JSON property `dataType`
          # @return [String]
          attr_accessor :data_type
        
          # The name of the dimension or metric.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column_type = args[:column_type] unless args[:column_type].nil?
            @data_type = args[:data_type] unless args[:data_type].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
      end
    end
  end
end
