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
      
      # Request message for TablesService.BatchCreateRows.
      class BatchCreateRowsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the rows to create. A maximum of 500
        # rows can be created in a single batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::CreateRowRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for TablesService.BatchCreateRows.
      class BatchCreateRowsResponse
        include Google::Apis::Core::Hashable
      
        # The created rows.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Request message for TablesService.BatchDeleteRows
      class BatchDeleteRowsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The names of the rows to delete. All rows must belong to the parent
        # table or else the entire batch will fail. A maximum of 500 rows can be deleted
        # in a batch. Format: tables/`table`/rows/`row`
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # Request message for TablesService.BatchUpdateRows.
      class BatchUpdateRowsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request messages specifying the rows to update. A maximum of 500
        # rows can be modified in a single batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::UpdateRowRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for TablesService.BatchUpdateRows.
      class BatchUpdateRowsResponse
        include Google::Apis::Core::Hashable
      
        # The updated rows.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Details on a column in the table.
      class ColumnDescription
        include Google::Apis::Core::Hashable
      
        # Data type of the column Supported types are auto_id, boolean, boolean_list,
        # creator, create_timestamp, date, dropdown, location, integer, integer_list,
        # number, number_list, person, person_list, tags, check_list, text, text_list,
        # update_timestamp, updater, relationship, file_attachment_list. These types
        # directly map to the column types supported on Tables website.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Details about a date column.
        # Corresponds to the JSON property `dateDetails`
        # @return [Google::Apis::Area120tablesV1alpha1::DateDetails]
        attr_accessor :date_details
      
        # Internal id for a column.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Range of labeled values for the column. Some columns like tags and
        # drop-downs limit the values to a set of possible values. We return the range
        # of values in such cases to help clients implement better user data validation.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::LabeledItem>]
        attr_accessor :labels
      
        # Details about a lookup column whose value comes from the associated
        # relationship.
        # Corresponds to the JSON property `lookupDetails`
        # @return [Google::Apis::Area120tablesV1alpha1::LookupDetails]
        attr_accessor :lookup_details
      
        # Optional. Indicates whether or not multiple values are allowed for array types
        # where such a restriction is possible.
        # Corresponds to the JSON property `multipleValuesDisallowed`
        # @return [Boolean]
        attr_accessor :multiple_values_disallowed
        alias_method :multiple_values_disallowed?, :multiple_values_disallowed
      
        # column name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Indicates that values for the column cannot be set by the user.
        # Corresponds to the JSON property `readonly`
        # @return [Boolean]
        attr_accessor :readonly
        alias_method :readonly?, :readonly
      
        # Details about a relationship column.
        # Corresponds to the JSON property `relationshipDetails`
        # @return [Google::Apis::Area120tablesV1alpha1::RelationshipDetails]
        attr_accessor :relationship_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @date_details = args[:date_details] if args.key?(:date_details)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @lookup_details = args[:lookup_details] if args.key?(:lookup_details)
          @multiple_values_disallowed = args[:multiple_values_disallowed] if args.key?(:multiple_values_disallowed)
          @name = args[:name] if args.key?(:name)
          @readonly = args[:readonly] if args.key?(:readonly)
          @relationship_details = args[:relationship_details] if args.key?(:relationship_details)
        end
      end
      
      # Request message for TablesService.CreateRow.
      class CreateRowRequest
        include Google::Apis::Core::Hashable
      
        # Required. The parent table where this row will be created. Format: tables/`
        # table`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A single row in a table.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::Area120tablesV1alpha1::Row]
        attr_accessor :row
      
        # Optional. Column key to use for values in the row. Defaults to user entered
        # name.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @row = args[:row] if args.key?(:row)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # Details about a date column.
      class DateDetails
        include Google::Apis::Core::Hashable
      
        # Whether the date column includes time.
        # Corresponds to the JSON property `hasTime`
        # @return [Boolean]
        attr_accessor :has_time
        alias_method :has_time?, :has_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_time = args[:has_time] if args.key?(:has_time)
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
      
      # A single item in a labeled column.
      class LabeledItem
        include Google::Apis::Core::Hashable
      
        # Internal id associated with the item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Display string as entered by user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for TablesService.ListRows.
      class ListRowsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The rows from the specified table.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Response message for TablesService.ListTables.
      class ListTablesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of tables.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::Table>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Response message for TablesService.ListWorkspaces.
      class ListWorkspacesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of workspaces.
        # Corresponds to the JSON property `workspaces`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::Workspace>]
        attr_accessor :workspaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workspaces = args[:workspaces] if args.key?(:workspaces)
        end
      end
      
      # Details about a lookup column whose value comes from the associated
      # relationship.
      class LookupDetails
        include Google::Apis::Core::Hashable
      
        # The name of the relationship column associated with the lookup.
        # Corresponds to the JSON property `relationshipColumn`
        # @return [String]
        attr_accessor :relationship_column
      
        # The id of the relationship column.
        # Corresponds to the JSON property `relationshipColumnId`
        # @return [String]
        attr_accessor :relationship_column_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relationship_column = args[:relationship_column] if args.key?(:relationship_column)
          @relationship_column_id = args[:relationship_column_id] if args.key?(:relationship_column_id)
        end
      end
      
      # Details about a relationship column.
      class RelationshipDetails
        include Google::Apis::Core::Hashable
      
        # The name of the table this relationship is linked to.
        # Corresponds to the JSON property `linkedTable`
        # @return [String]
        attr_accessor :linked_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_table = args[:linked_table] if args.key?(:linked_table)
        end
      end
      
      # A single row in a table.
      class Row
        include Google::Apis::Core::Hashable
      
        # Time when the row was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the row. Row names have the form `tables/`table`/rows/`
        # row``. The name is ignored when creating a row.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Time when the row was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The values of the row. This is a map of column key to value. Key is user
        # entered name(default) or the internal column id based on the view in the
        # request.
        # Corresponds to the JSON property `values`
        # @return [Hash<String,Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A saved view of a table. NextId: 3
      class SavedView
        include Google::Apis::Core::Hashable
      
        # Internal id associated with the saved view.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Display name of the saved view.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A single table. NextId: 8
      class Table
        include Google::Apis::Core::Hashable
      
        # List of columns in this table. Order of columns matches the display order.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::ColumnDescription>]
        attr_accessor :columns
      
        # Time when the table was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The human readable title of the table.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the table. Table names have the form `tables/`table``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Saved views for this table.
        # Corresponds to the JSON property `savedViews`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::SavedView>]
        attr_accessor :saved_views
      
        # The time zone of the table. IANA Time Zone Database time zone, e.g. "America/
        # New_York".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Time when the table was last updated excluding updates to individual rows
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @saved_views = args[:saved_views] if args.key?(:saved_views)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for TablesService.UpdateRow.
      class UpdateRowRequest
        include Google::Apis::Core::Hashable
      
        # A single row in a table.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::Area120tablesV1alpha1::Row]
        attr_accessor :row
      
        # The list of fields to update.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # Optional. Column key to use for values in the row. Defaults to user entered
        # name.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row = args[:row] if args.key?(:row)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # A single workspace.
      class Workspace
        include Google::Apis::Core::Hashable
      
        # Time when the workspace was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The human readable title of the workspace.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the workspace. Workspace names have the form `workspaces/`
        # workspace``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of tables in the workspace.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::Area120tablesV1alpha1::Table>]
        attr_accessor :tables
      
        # Time when the workspace was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @tables = args[:tables] if args.key?(:tables)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
