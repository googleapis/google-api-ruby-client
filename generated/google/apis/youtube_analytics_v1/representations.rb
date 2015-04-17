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
      class BatchReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BatchReportDefinitionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BatchReportDefinitionListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BatchReportListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupItemRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupItemListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GroupListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResultTableRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class BatchReportRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :outputs, as: 'outputs', class: Google::Apis::YoutubeAnalyticsV1::BatchReport::Output do
          property :download_url, as: 'downloadUrl'
          property :format, as: 'format'
          property :type, as: 'type'
        end
        
        
        property :report_id, as: 'reportId'
        property :time_span, as: 'timeSpan', class: Google::Apis::YoutubeAnalyticsV1::BatchReport::TimeSpan do
          property :end_time, as: 'endTime', type: DateTime
          property :start_time, as: 'startTime', type: DateTime
        end
        
        property :time_updated, as: 'timeUpdated', type: DateTime
      end

      # @private
      class BatchReportDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :status, as: 'status'
        property :type, as: 'type'
      end

      # @private
      class BatchReportDefinitionListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::YoutubeAnalyticsV1::BatchReportDefinition, decorator: Google::Apis::YoutubeAnalyticsV1::BatchReportDefinitionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class BatchReportListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::YoutubeAnalyticsV1::BatchReport, decorator: Google::Apis::YoutubeAnalyticsV1::BatchReportRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class GroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_details, as: 'contentDetails', class: Google::Apis::YoutubeAnalyticsV1::Group::ContentDetails do
          property :item_count, as: 'itemCount'
          property :item_type, as: 'itemType'
        end
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :snippet, as: 'snippet', class: Google::Apis::YoutubeAnalyticsV1::Group::Snippet do
          property :published_at, as: 'publishedAt', type: DateTime
          property :title, as: 'title'
        end
      end

      # @private
      class GroupItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :group_id, as: 'groupId'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :resource, as: 'resource', class: Google::Apis::YoutubeAnalyticsV1::GroupItem::Resource do
          property :id, as: 'id'
          property :kind, as: 'kind'
        end
      end

      # @private
      class GroupItemListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::YoutubeAnalyticsV1::GroupItem, decorator: Google::Apis::YoutubeAnalyticsV1::GroupItemRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class GroupListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::YoutubeAnalyticsV1::Group, decorator: Google::Apis::YoutubeAnalyticsV1::GroupRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ResultTableRepresentation < Google::Apis::Core::JsonRepresentation
        collection :column_headers, as: 'columnHeaders', class: Google::Apis::YoutubeAnalyticsV1::ResultTable::ColumnHeader do
          property :column_type, as: 'columnType'
          property :data_type, as: 'dataType'
          property :name, as: 'name'
        end
        
        
        property :kind, as: 'kind'
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items
        end
      end
    end
  end
end
