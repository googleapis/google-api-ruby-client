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
    module FitnessV1
      
      # 
      class AggregateBucket
        include Google::Apis::Core::Hashable
      
        # Available for Bucket.Type.ACTIVITY_TYPE, Bucket.Type.ACTIVITY_SEGMENT
        # Corresponds to the JSON property `activity`
        # @return [Fixnum]
        attr_accessor :activity
      
        # There will be one dataset per AggregateBy in the request.
        # Corresponds to the JSON property `dataset`
        # @return [Array<Google::Apis::FitnessV1::Dataset>]
        attr_accessor :dataset
      
        # The end time for the aggregated data, in milliseconds since epoch, inclusive.
        # Corresponds to the JSON property `endTimeMillis`
        # @return [String]
        attr_accessor :end_time_millis
      
        # Sessions contain metadata, such as a user-friendly name and time interval
        # information.
        # Corresponds to the JSON property `session`
        # @return [Google::Apis::FitnessV1::Session]
        attr_accessor :session
      
        # The start time for the aggregated data, in milliseconds since epoch, inclusive.
        # Corresponds to the JSON property `startTimeMillis`
        # @return [String]
        attr_accessor :start_time_millis
      
        # The type of a bucket signifies how the data aggregation is performed in the
        # bucket.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity = args[:activity] unless args[:activity].nil?
          @dataset = args[:dataset] unless args[:dataset].nil?
          @end_time_millis = args[:end_time_millis] unless args[:end_time_millis].nil?
          @session = args[:session] unless args[:session].nil?
          @start_time_millis = args[:start_time_millis] unless args[:start_time_millis].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # The specification of which data to aggregate.
      class AggregateBy
        include Google::Apis::Core::Hashable
      
        # A data source ID to aggregate. Mutually exclusive of dataTypeName. Only data
        # from the specified data source ID will be included in the aggregation. The
        # dataset in the response will have the same data source ID.
        # Corresponds to the JSON property `dataSourceId`
        # @return [String]
        attr_accessor :data_source_id
      
        # The data type to aggregate. All data sources providing this data type will
        # contribute data to the aggregation. The response will contain a single dataset
        # for this data type name. The dataset will have a data source ID of derived:com.
        # google.:com.google.android.gms:aggregated
        # Corresponds to the JSON property `dataTypeName`
        # @return [String]
        attr_accessor :data_type_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_id = args[:data_source_id] unless args[:data_source_id].nil?
          @data_type_name = args[:data_type_name] unless args[:data_type_name].nil?
        end
      end
      
      # 
      class AggregateRequest
        include Google::Apis::Core::Hashable
      
        # The specification of data to be aggregated. At least one aggregateBy spec must
        # be provided. All data that is specified will be aggregated using the same
        # bucketing criteria. There will be one dataset in the response for every
        # aggregateBy spec.
        # Corresponds to the JSON property `aggregateBy`
        # @return [Array<Google::Apis::FitnessV1::AggregateBy>]
        attr_accessor :aggregate_by
      
        # Specifies that data be aggregated each activity segment recored for a user.
        # Similar to bucketByActivitySegment, but bucketing is done for each activity
        # segment rather than all segments of the same type. Mutually exclusive of other
        # bucketing specifications.
        # Corresponds to the JSON property `bucketByActivitySegment`
        # @return [Google::Apis::FitnessV1::BucketByActivity]
        attr_accessor :bucket_by_activity_segment
      
        # Specifies that data be aggregated by the type of activity being performed when
        # the data was recorded. All data that was recorded during a certain activity
        # type (for the given time range) will be aggregated into the same bucket. Data
        # that was recorded while the user was not active will not be included in the
        # response. Mutually exclusive of other bucketing specifications.
        # Corresponds to the JSON property `bucketByActivityType`
        # @return [Google::Apis::FitnessV1::BucketByActivity]
        attr_accessor :bucket_by_activity_type
      
        # Specifies that data be aggregated by user sessions. Data that does not fall
        # within the time range of a session will not be included in the response.
        # Mutually exclusive of other bucketing specifications.
        # Corresponds to the JSON property `bucketBySession`
        # @return [Google::Apis::FitnessV1::BucketBySession]
        attr_accessor :bucket_by_session
      
        # Specifies that data be aggregated by a single time interval. Mutually
        # exclusive of other bucketing specifications.
        # Corresponds to the JSON property `bucketByTime`
        # @return [Google::Apis::FitnessV1::BucketByTime]
        attr_accessor :bucket_by_time
      
        # The end of a window of time. Data that intersects with this time window will
        # be aggregated. The time is in milliseconds since epoch, inclusive.
        # Corresponds to the JSON property `endTimeMillis`
        # @return [String]
        attr_accessor :end_time_millis
      
        # The start of a window of time. Data that intersects with this time window will
        # be aggregated. The time is in milliseconds since epoch, inclusive.
        # Corresponds to the JSON property `startTimeMillis`
        # @return [String]
        attr_accessor :start_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_by = args[:aggregate_by] unless args[:aggregate_by].nil?
          @bucket_by_activity_segment = args[:bucket_by_activity_segment] unless args[:bucket_by_activity_segment].nil?
          @bucket_by_activity_type = args[:bucket_by_activity_type] unless args[:bucket_by_activity_type].nil?
          @bucket_by_session = args[:bucket_by_session] unless args[:bucket_by_session].nil?
          @bucket_by_time = args[:bucket_by_time] unless args[:bucket_by_time].nil?
          @end_time_millis = args[:end_time_millis] unless args[:end_time_millis].nil?
          @start_time_millis = args[:start_time_millis] unless args[:start_time_millis].nil?
        end
      end
      
      # 
      class AggregateResponse
        include Google::Apis::Core::Hashable
      
        # A list of buckets containing the aggregated data.
        # Corresponds to the JSON property `bucket`
        # @return [Array<Google::Apis::FitnessV1::AggregateBucket>]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] unless args[:bucket].nil?
        end
      end
      
      # See: google3/java/com/google/android/apps/heart/platform/api/Application.java
      class Application
        include Google::Apis::Core::Hashable
      
        # An optional URI that can be used to link back to the application.
        # Corresponds to the JSON property `detailsUrl`
        # @return [String]
        attr_accessor :details_url
      
        # The name of this application. This is required for REST clients, but we do not
        # enforce uniqueness of this name. It is provided as a matter of convenience for
        # other developers who would like to identify which REST created an Application
        # or Data Source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Package name for this application. This is used as a unique identifier when
        # created by Android applications, but cannot be specified by REST clients. REST
        # clients will have their developer project number reflected into the Data
        # Source data stream IDs, instead of the packageName.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Version of the application. You should update this field whenever the
        # application changes in a way that affects the computation of the data.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details_url = args[:details_url] unless args[:details_url].nil?
          @name = args[:name] unless args[:name].nil?
          @package_name = args[:package_name] unless args[:package_name].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end
      
      # 
      class BucketByActivity
        include Google::Apis::Core::Hashable
      
        # The default activity stream will be used if a specific activityDataSourceId is
        # not specified.
        # Corresponds to the JSON property `activityDataSourceId`
        # @return [String]
        attr_accessor :activity_data_source_id
      
        # Specifies that only activity segments of duration longer than
        # minDurationMillis are considered and used as a container for aggregated data.
        # Corresponds to the JSON property `minDurationMillis`
        # @return [String]
        attr_accessor :min_duration_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_data_source_id = args[:activity_data_source_id] unless args[:activity_data_source_id].nil?
          @min_duration_millis = args[:min_duration_millis] unless args[:min_duration_millis].nil?
        end
      end
      
      # 
      class BucketBySession
        include Google::Apis::Core::Hashable
      
        # Specifies that only sessions of duration longer than minDurationMillis are
        # considered and used as a container for aggregated data.
        # Corresponds to the JSON property `minDurationMillis`
        # @return [String]
        attr_accessor :min_duration_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_duration_millis = args[:min_duration_millis] unless args[:min_duration_millis].nil?
        end
      end
      
      # 
      class BucketByTime
        include Google::Apis::Core::Hashable
      
        # Specifies that result buckets aggregate data by exactly durationMillis time
        # frames. Time frames that contain no data will be included in the response with
        # an empty dataset.
        # Corresponds to the JSON property `durationMillis`
        # @return [String]
        attr_accessor :duration_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_millis = args[:duration_millis] unless args[:duration_millis].nil?
        end
      end
      
      # Represents a single data point, generated by a particular data source. A data
      # point holds a value for each field, an end timestamp and an optional start
      # time. The exact semantics of each of these attributes are specified in the
      # documentation for the particular data type.
      # A data point can represent an instantaneous measurement, reading or input
      # observation, as well as averages or aggregates over a time interval. Check the
      # data type documentation to determine which is the case for a particular data
      # type.
      # Data points always contain one value for each field of the data type.
      class DataPoint
        include Google::Apis::Core::Hashable
      
        # Used for version checking during transformation; that is, a datapoint can only
        # replace another datapoint that has an older computation time stamp.
        # Corresponds to the JSON property `computationTimeMillis`
        # @return [String]
        attr_accessor :computation_time_millis
      
        # The data type defining the format of the values in this data point.
        # Corresponds to the JSON property `dataTypeName`
        # @return [String]
        attr_accessor :data_type_name
      
        # The end time of the interval represented by this data point, in nanoseconds
        # since epoch.
        # Corresponds to the JSON property `endTimeNanos`
        # @return [String]
        attr_accessor :end_time_nanos
      
        # Indicates the last time this data point was modified. Useful only in contexts
        # where we are listing the data changes, rather than representing the current
        # state of the data.
        # Corresponds to the JSON property `modifiedTimeMillis`
        # @return [String]
        attr_accessor :modified_time_millis
      
        # If the data point is contained in a dataset for a derived data source, this
        # field will be populated with the data source stream ID that created the data
        # point originally.
        # Corresponds to the JSON property `originDataSourceId`
        # @return [String]
        attr_accessor :origin_data_source_id
      
        # The raw timestamp from the original SensorEvent.
        # Corresponds to the JSON property `rawTimestampNanos`
        # @return [String]
        attr_accessor :raw_timestamp_nanos
      
        # The start time of the interval represented by this data point, in nanoseconds
        # since epoch.
        # Corresponds to the JSON property `startTimeNanos`
        # @return [String]
        attr_accessor :start_time_nanos
      
        # Values of each data type field for the data point. It is expected that each
        # value corresponding to a data type field will occur in the same order that the
        # field is listed with in the data type specified in a data source.
        # Only one of integer and floating point fields will be populated, depending on
        # the format enum value within data source's type field.
        # Corresponds to the JSON property `value`
        # @return [Array<Google::Apis::FitnessV1::Value>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @computation_time_millis = args[:computation_time_millis] unless args[:computation_time_millis].nil?
          @data_type_name = args[:data_type_name] unless args[:data_type_name].nil?
          @end_time_nanos = args[:end_time_nanos] unless args[:end_time_nanos].nil?
          @modified_time_millis = args[:modified_time_millis] unless args[:modified_time_millis].nil?
          @origin_data_source_id = args[:origin_data_source_id] unless args[:origin_data_source_id].nil?
          @raw_timestamp_nanos = args[:raw_timestamp_nanos] unless args[:raw_timestamp_nanos].nil?
          @start_time_nanos = args[:start_time_nanos] unless args[:start_time_nanos].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Definition of a unique source of sensor data. Data sources can expose raw data
      # coming from hardware sensors on local or companion devices. They can also
      # expose derived data, created by transforming or merging other data sources.
      # Multiple data sources can exist for the same data type. Every data point
      # inserted into or read from this service has an associated data source.
      # The data source contains enough information to uniquely identify its data,
      # including the hardware device and the application that collected and/or
      # transformed the data. It also holds useful metadata, such as the hardware and
      # application versions, and the device type.
      # Each data source produces a unique stream of data, with a unique identifier.
      # Not all changes to data source affect the stream identifier, so that data
      # collected by updated versions of the same application/device can still be
      # considered to belong to the same data stream.
      class DataSource
        include Google::Apis::Core::Hashable
      
        # See: google3/java/com/google/android/apps/heart/platform/api/Application.java
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::FitnessV1::Application]
        attr_accessor :application
      
        # A unique identifier for the data stream produced by this data source. The
        # identifier includes:
        # 
        # - The physical device's manufacturer, model, and serial number (UID).
        # - The application's package name or name. Package name is used when the data
        # source was created by an Android application. The developer project number is
        # used when the data source was created by a REST client.
        # - The data source's type.
        # - The data source's stream name.  Note that not all attributes of the data
        # source are used as part of the stream identifier. In particular, the version
        # of the hardware/the application isn't used. This allows us to preserve the
        # same stream through version updates. This also means that two DataSource
        # objects may represent the same data stream even if they're not equal.
        # The exact format of the data stream ID created by an Android application is:
        # type:dataType.name:application.packageName:device.manufacturer:device.model:
        # device.uid:dataStreamName
        # The exact format of the data stream ID created by a REST client is: type:
        # dataType.name:developer project number:device.manufacturer:device.model:device.
        # uid:dataStreamName
        # When any of the optional fields that comprise of the data stream ID are blank,
        # they will be omitted from the data stream ID. The minnimum viable data stream
        # ID would be: type:dataType.name:developer project number
        # Finally, the developer project number is obfuscated when read by any REST or
        # Android client that did not create the data source. Only the data source
        # creator will see the developer project number in clear and normal form.
        # Corresponds to the JSON property `dataStreamId`
        # @return [String]
        attr_accessor :data_stream_id
      
        # The stream name uniquely identifies this particular data source among other
        # data sources of the same type from the same underlying producer. Setting the
        # stream name is optional, but should be done whenever an application exposes
        # two streams for the same data type, or when a device has two equivalent
        # sensors.
        # Corresponds to the JSON property `dataStreamName`
        # @return [String]
        attr_accessor :data_stream_name
      
        # See: google3/java/com/google/android/apps/heart/platform/api/DataType.java
        # Corresponds to the JSON property `dataType`
        # @return [Google::Apis::FitnessV1::DataType]
        attr_accessor :data_type
      
        # Representation of an integrated device (such as a phone or a wearable) that
        # can hold sensors. Each sensor is exposed as a data source.
        # The main purpose of the device information contained in this class is to
        # identify the hardware of a particular data source. This can be useful in
        # different ways, including:
        # - Distinguishing two similar sensors on different devices (the step counter on
        # two nexus 5 phones, for instance)
        # - Display the source of data to the user (by using the device make / model)
        # - Treat data differently depending on sensor type (accelerometers on a watch
        # may give different patterns than those on a phone)
        # - Build different analysis models for each device/version.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::FitnessV1::Device]
        attr_accessor :device
      
        # An end-user visible name for this data source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A constant describing the type of this data source. Indicates whether this
        # data source produces raw or derived data.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] unless args[:application].nil?
          @data_stream_id = args[:data_stream_id] unless args[:data_stream_id].nil?
          @data_stream_name = args[:data_stream_name] unless args[:data_stream_name].nil?
          @data_type = args[:data_type] unless args[:data_type].nil?
          @device = args[:device] unless args[:device].nil?
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # See: google3/java/com/google/android/apps/heart/platform/api/DataType.java
      class DataType
        include Google::Apis::Core::Hashable
      
        # A field represents one dimension of a data type.
        # Corresponds to the JSON property `field`
        # @return [Array<Google::Apis::FitnessV1::DataTypeField>]
        attr_accessor :field
      
        # Each data type has a unique, namespaced, name. All data types in the com.
        # google namespace are shared as part of the platform.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] unless args[:field].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # In case of multi-dimensional data (such as an accelerometer with x, y, and z
      # axes) each field represents one dimension. Each data type field has a unique
      # name which identifies it. The field also defines the format of the data (int,
      # float, etc.).
      # This message is only instantiated in code and not used for wire comms or
      # stored in any way.
      class DataTypeField
        include Google::Apis::Core::Hashable
      
        # The different supported formats for each field in a data type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Defines the name and format of data. Unlike data type names, field names are
        # not namespaced, and only need to be unique within the data type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] unless args[:format].nil?
          @name = args[:name] unless args[:name].nil?
          @optional = args[:optional] unless args[:optional].nil?
        end
      end
      
      # A dataset represents a projection container for data points. They do not carry
      # any info of their own. Datasets represent a set of data points from a
      # particular data source. A data point can be found in more than one dataset.
      class Dataset
        include Google::Apis::Core::Hashable
      
        # The data stream ID of the data source that created the points in this dataset.
        # Corresponds to the JSON property `dataSourceId`
        # @return [String]
        attr_accessor :data_source_id
      
        # The largest end time of all data points in this possibly partial
        # representation of the dataset. Time is in nanoseconds from epoch. This should
        # also match the first part of the dataset identifier.
        # Corresponds to the JSON property `maxEndTimeNs`
        # @return [String]
        attr_accessor :max_end_time_ns
      
        # The smallest start time of all data points in this possibly partial
        # representation of the dataset. Time is in nanoseconds from epoch. This should
        # also match the first part of the dataset identifier.
        # Corresponds to the JSON property `minStartTimeNs`
        # @return [String]
        attr_accessor :min_start_time_ns
      
        # This token will be set when a dataset is received in response to a GET request
        # and the dataset is too large to be included in a single response. Provide this
        # value in a subsequent GET request to return the next page of data points
        # within this dataset.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A partial list of data points contained in the dataset, ordered by largest
        # endTimeNanos first. This list is considered complete when retrieving a small
        # dataset and partial when patching a dataset or retrieving a dataset that is
        # too large to include in a single response.
        # Corresponds to the JSON property `point`
        # @return [Array<Google::Apis::FitnessV1::DataPoint>]
        attr_accessor :point
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_id = args[:data_source_id] unless args[:data_source_id].nil?
          @max_end_time_ns = args[:max_end_time_ns] unless args[:max_end_time_ns].nil?
          @min_start_time_ns = args[:min_start_time_ns] unless args[:min_start_time_ns].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @point = args[:point] unless args[:point].nil?
        end
      end
      
      # Representation of an integrated device (such as a phone or a wearable) that
      # can hold sensors. Each sensor is exposed as a data source.
      # The main purpose of the device information contained in this class is to
      # identify the hardware of a particular data source. This can be useful in
      # different ways, including:
      # - Distinguishing two similar sensors on different devices (the step counter on
      # two nexus 5 phones, for instance)
      # - Display the source of data to the user (by using the device make / model)
      # - Treat data differently depending on sensor type (accelerometers on a watch
      # may give different patterns than those on a phone)
      # - Build different analysis models for each device/version.
      class Device
        include Google::Apis::Core::Hashable
      
        # Manufacturer of the product/hardware.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # End-user visible model name for the device.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # A constant representing the type of the device.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The serial number or other unique ID for the hardware. This field is
        # obfuscated when read by any REST or Android client that did not create the
        # data source. Only the data source creator will see the uid field in clear and
        # normal form.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Version string for the device hardware/software.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manufacturer = args[:manufacturer] unless args[:manufacturer].nil?
          @model = args[:model] unless args[:model].nil?
          @type = args[:type] unless args[:type].nil?
          @uid = args[:uid] unless args[:uid].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end
      
      # 
      class ListDataSourcesResponse
        include Google::Apis::Core::Hashable
      
        # A previously created data source.
        # Corresponds to the JSON property `dataSource`
        # @return [Array<Google::Apis::FitnessV1::DataSource>]
        attr_accessor :data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source = args[:data_source] unless args[:data_source].nil?
        end
      end
      
      # 
      class ListSessionsResponse
        include Google::Apis::Core::Hashable
      
        # If includeDeleted is set to true in the request, this list will contain
        # sessions deleted with original end times that are within the startTime and
        # endTime frame.
        # Corresponds to the JSON property `deletedSession`
        # @return [Array<Google::Apis::FitnessV1::Session>]
        attr_accessor :deleted_session
      
        # The continuation token, which is used to page through large result sets.
        # Provide this value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Sessions with an end time that is between startTime and endTime of the request.
        # Corresponds to the JSON property `session`
        # @return [Array<Google::Apis::FitnessV1::Session>]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted_session = args[:deleted_session] unless args[:deleted_session].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @session = args[:session] unless args[:session].nil?
        end
      end
      
      # Holder object for the value of an entry in a map field of a data point.
      # A map value supports a subset of the formats that the regular Value supports.
      class MapValue
        include Google::Apis::Core::Hashable
      
        # Floating point value.
        # Corresponds to the JSON property `fpVal`
        # @return [Float]
        attr_accessor :fp_val
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fp_val = args[:fp_val] unless args[:fp_val].nil?
        end
      end
      
      # Sessions contain metadata, such as a user-friendly name and time interval
      # information.
      class Session
        include Google::Apis::Core::Hashable
      
        # Session active time. While start_time_millis and end_time_millis define the
        # full session time, the active time can be shorter and specified by
        # active_time_millis. If the inactive time during the session is known, it
        # should also be inserted via a com.google.activity.segment data point with a
        # STILL activity value
        # Corresponds to the JSON property `activeTimeMillis`
        # @return [String]
        attr_accessor :active_time_millis
      
        # The type of activity this session represents.
        # Corresponds to the JSON property `activityType`
        # @return [Fixnum]
        attr_accessor :activity_type
      
        # See: google3/java/com/google/android/apps/heart/platform/api/Application.java
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::FitnessV1::Application]
        attr_accessor :application
      
        # A description for this session.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An end time, in milliseconds since epoch, inclusive.
        # Corresponds to the JSON property `endTimeMillis`
        # @return [String]
        attr_accessor :end_time_millis
      
        # A client-generated identifier that is unique across all sessions owned by this
        # particular user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A timestamp that indicates when the session was last modified.
        # Corresponds to the JSON property `modifiedTimeMillis`
        # @return [String]
        attr_accessor :modified_time_millis
      
        # A human readable name of the session.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A start time, in milliseconds since epoch, inclusive.
        # Corresponds to the JSON property `startTimeMillis`
        # @return [String]
        attr_accessor :start_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_time_millis = args[:active_time_millis] unless args[:active_time_millis].nil?
          @activity_type = args[:activity_type] unless args[:activity_type].nil?
          @application = args[:application] unless args[:application].nil?
          @description = args[:description] unless args[:description].nil?
          @end_time_millis = args[:end_time_millis] unless args[:end_time_millis].nil?
          @id = args[:id] unless args[:id].nil?
          @modified_time_millis = args[:modified_time_millis] unless args[:modified_time_millis].nil?
          @name = args[:name] unless args[:name].nil?
          @start_time_millis = args[:start_time_millis] unless args[:start_time_millis].nil?
        end
      end
      
      # Holder object for the value of a single field in a data point.
      # A field value has a particular format and is only ever set to one of an
      # integer or a floating point value.
      class Value
        include Google::Apis::Core::Hashable
      
        # Floating point value. When this is set, other values must not be set.
        # Corresponds to the JSON property `fpVal`
        # @return [Float]
        attr_accessor :fp_val
      
        # Integer value. When this is set, other values must not be set.
        # Corresponds to the JSON property `intVal`
        # @return [Fixnum]
        attr_accessor :int_val
      
        # Map value. The valid key space and units for the corresponding value of each
        # entry should be documented as part of the data type definition. Keys should be
        # kept small whenever possible. Data streams with large keys and high data
        # frequency may be down sampled.
        # Corresponds to the JSON property `mapVal`
        # @return [Array<Google::Apis::FitnessV1::ValueMapValEntry>]
        attr_accessor :map_val
      
        # String value. When this is set, other values must not be set. Strings should
        # be kept small whenever possible. Data streams with large string values and
        # high data frequency may be down sampled.
        # Corresponds to the JSON property `stringVal`
        # @return [String]
        attr_accessor :string_val
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fp_val = args[:fp_val] unless args[:fp_val].nil?
          @int_val = args[:int_val] unless args[:int_val].nil?
          @map_val = args[:map_val] unless args[:map_val].nil?
          @string_val = args[:string_val] unless args[:string_val].nil?
        end
      end
      
      # 
      class ValueMapValEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Holder object for the value of an entry in a map field of a data point.
        # A map value supports a subset of the formats that the regular Value supports.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::FitnessV1::MapValue]
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
    end
  end
end
