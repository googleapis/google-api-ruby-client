# Copyright 2020 Google LLC
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
    module Area120tablesV1alpha1
      
      class BatchCreateRowsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateRowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteRowsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateRowsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateRowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateRowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabeledItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkspacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationshipDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateRowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Workspace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateRowsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::Area120tablesV1alpha1::CreateRowRequest, decorator: Google::Apis::Area120tablesV1alpha1::CreateRowRequest::Representation
      
        end
      end
      
      class BatchCreateRowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rows, as: 'rows', class: Google::Apis::Area120tablesV1alpha1::Row, decorator: Google::Apis::Area120tablesV1alpha1::Row::Representation
      
        end
      end
      
      class BatchDeleteRowsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class BatchUpdateRowsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::Area120tablesV1alpha1::UpdateRowRequest, decorator: Google::Apis::Area120tablesV1alpha1::UpdateRowRequest::Representation
      
        end
      end
      
      class BatchUpdateRowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rows, as: 'rows', class: Google::Apis::Area120tablesV1alpha1::Row, decorator: Google::Apis::Area120tablesV1alpha1::Row::Representation
      
        end
      end
      
      class ColumnDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :id, as: 'id'
          collection :labels, as: 'labels', class: Google::Apis::Area120tablesV1alpha1::LabeledItem, decorator: Google::Apis::Area120tablesV1alpha1::LabeledItem::Representation
      
          property :lookup_details, as: 'lookupDetails', class: Google::Apis::Area120tablesV1alpha1::LookupDetails, decorator: Google::Apis::Area120tablesV1alpha1::LookupDetails::Representation
      
          property :multiple_values_disallowed, as: 'multipleValuesDisallowed'
          property :name, as: 'name'
          property :readonly, as: 'readonly'
          property :relationship_details, as: 'relationshipDetails', class: Google::Apis::Area120tablesV1alpha1::RelationshipDetails, decorator: Google::Apis::Area120tablesV1alpha1::RelationshipDetails::Representation
      
        end
      end
      
      class CreateRowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :row, as: 'row', class: Google::Apis::Area120tablesV1alpha1::Row, decorator: Google::Apis::Area120tablesV1alpha1::Row::Representation
      
          property :view, as: 'view'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LabeledItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class ListRowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::Area120tablesV1alpha1::Row, decorator: Google::Apis::Area120tablesV1alpha1::Row::Representation
      
        end
      end
      
      class ListTablesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::Area120tablesV1alpha1::Table, decorator: Google::Apis::Area120tablesV1alpha1::Table::Representation
      
        end
      end
      
      class ListWorkspacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workspaces, as: 'workspaces', class: Google::Apis::Area120tablesV1alpha1::Workspace, decorator: Google::Apis::Area120tablesV1alpha1::Workspace::Representation
      
        end
      end
      
      class LookupDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :relationship_column, as: 'relationshipColumn'
          property :relationship_column_id, as: 'relationshipColumnId'
        end
      end
      
      class RelationshipDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_table, as: 'linkedTable'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          hash :values, as: 'values'
        end
      end
      
      class SavedView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::Area120tablesV1alpha1::ColumnDescription, decorator: Google::Apis::Area120tablesV1alpha1::ColumnDescription::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :saved_views, as: 'savedViews', class: Google::Apis::Area120tablesV1alpha1::SavedView, decorator: Google::Apis::Area120tablesV1alpha1::SavedView::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class UpdateRowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row, as: 'row', class: Google::Apis::Area120tablesV1alpha1::Row, decorator: Google::Apis::Area120tablesV1alpha1::Row::Representation
      
          property :update_mask, as: 'updateMask'
          property :view, as: 'view'
        end
      end
      
      class Workspace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :tables, as: 'tables', class: Google::Apis::Area120tablesV1alpha1::Table, decorator: Google::Apis::Area120tablesV1alpha1::Table::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
