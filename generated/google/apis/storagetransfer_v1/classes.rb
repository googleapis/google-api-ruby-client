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
    module StoragetransferV1
      
      # Google service account
      class GoogleServiceAccount
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `accountEmail`
        # @return [String]
        attr_accessor :account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_email = args[:account_email] unless args[:account_email].nil?
        end
      end
      
      # This resource represents the configuration of a transfer job that runs
      # periodically.
      class TransferJob
        include Google::Apis::Core::Hashable
      
        # A globally unique name assigned by Storage Transfer Service when the job is
        # created. This field should be left empty in requests to create a new transfer
        # job; otherwise, the requests result in an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A description provided by the user for the job. Its max length is 1024 bytes
        # when Unicode-encoded.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The ID of the Google Developers Console project that owns the job. Required.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Configuration for running a transfer.
        # Corresponds to the JSON property `transferSpec`
        # @return [Google::Apis::StoragetransferV1::TransferSpec]
        attr_accessor :transfer_spec
      
        # Transfers can be scheduled to recur or to run just once.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::StoragetransferV1::Schedule]
        attr_accessor :schedule
      
        # Status of the job. This value MUST be specified for `CreateTransferJobRequests`
        # . NOTE: The effect of the new job status takes place during a subsequent job
        # run. For example, if you change the job status from `ENABLED` to `DISABLED`,
        # and an operation spawned by the transfer is running, the status change would
        # not affect the current operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # This field cannot be changed by user requests.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # This field cannot be changed by user requests.
        # Corresponds to the JSON property `lastModificationTime`
        # @return [String]
        attr_accessor :last_modification_time
      
        # This field cannot be changed by user requests.
        # Corresponds to the JSON property `deletionTime`
        # @return [String]
        attr_accessor :deletion_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @description = args[:description] unless args[:description].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @transfer_spec = args[:transfer_spec] unless args[:transfer_spec].nil?
          @schedule = args[:schedule] unless args[:schedule].nil?
          @status = args[:status] unless args[:status].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @last_modification_time = args[:last_modification_time] unless args[:last_modification_time].nil?
          @deletion_time = args[:deletion_time] unless args[:deletion_time].nil?
        end
      end
      
      # Configuration for running a transfer.
      class TransferSpec
        include Google::Apis::Core::Hashable
      
        # In a GcsData, an object's name is the Google Cloud Storage object's name and
        # its `lastModificationTime` refers to the object's updated time, which changes
        # when the content or the metadata of the object is updated.
        # Corresponds to the JSON property `gcsDataSource`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_data_source
      
        # An AwsS3Data can be a data source, but not a data sink. In an AwsS3Data, an
        # object's name is the S3 object's key name.
        # Corresponds to the JSON property `awsS3DataSource`
        # @return [Google::Apis::StoragetransferV1::AwsS3Data]
        attr_accessor :aws_s3_data_source
      
        # An HttpData specifies a list of objects on the web to be transferred over HTTP.
        # The information of the objects to be transferred is contained in a file
        # referenced by a URL. The first line in the file must be "TsvHttpData-1.0",
        # which specifies the format of the file. Subsequent lines specify the
        # information of the list of objects, one object per list entry. Each entry has
        # the following tab-delimited fields: * HTTP URL * Length * MD5 - This field is
        # a base64-encoded MD5 hash of the object An HTTP URL that points to the object
        # to be transferred. It must be a valid URL with URL scheme HTTP or HTTPS. When
        # an object with URL `http(s)://hostname:port/` is transferred to the data sink,
        # the name of the object at the data sink is `/`. Length and MD5 provide the
        # size and the base64-encoded MD5 hash of the object. If Length does not match
        # the actual length of the object fetched, the object will not be transferred.
        # If MD5 does not match the MD5 computed from the transferred bytes, the object
        # transfer will fail. `lastModificationTime` is not available in HttpData
        # objects. The objects that the URL list points to must allow public access.
        # Storage Transfer Service obeys `robots.txt` rules and requires the HTTP server
        # to support Range requests and to return a Content-Length header in each
        # response.
        # Corresponds to the JSON property `httpDataSource`
        # @return [Google::Apis::StoragetransferV1::HttpData]
        attr_accessor :http_data_source
      
        # In a GcsData, an object's name is the Google Cloud Storage object's name and
        # its `lastModificationTime` refers to the object's updated time, which changes
        # when the content or the metadata of the object is updated.
        # Corresponds to the JSON property `gcsDataSink`
        # @return [Google::Apis::StoragetransferV1::GcsData]
        attr_accessor :gcs_data_sink
      
        # Conditions that determine which objects will be transferred.
        # Corresponds to the JSON property `objectConditions`
        # @return [Google::Apis::StoragetransferV1::ObjectConditions]
        attr_accessor :object_conditions
      
        # TransferOptions uses three boolean parameters to define the actions to be
        # performed on objects in a transfer.
        # Corresponds to the JSON property `transferOptions`
        # @return [Google::Apis::StoragetransferV1::TransferOptions]
        attr_accessor :transfer_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_data_source = args[:gcs_data_source] unless args[:gcs_data_source].nil?
          @aws_s3_data_source = args[:aws_s3_data_source] unless args[:aws_s3_data_source].nil?
          @http_data_source = args[:http_data_source] unless args[:http_data_source].nil?
          @gcs_data_sink = args[:gcs_data_sink] unless args[:gcs_data_sink].nil?
          @object_conditions = args[:object_conditions] unless args[:object_conditions].nil?
          @transfer_options = args[:transfer_options] unless args[:transfer_options].nil?
        end
      end
      
      # In a GcsData, an object's name is the Google Cloud Storage object's name and
      # its `lastModificationTime` refers to the object's updated time, which changes
      # when the content or the metadata of the object is updated.
      class GcsData
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage bucket name (see [Bucket Name Requirements](https://cloud.
        # google.com/storage/docs/bucket-naming#requirements)). Required.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] unless args[:bucket_name].nil?
        end
      end
      
      # An AwsS3Data can be a data source, but not a data sink. In an AwsS3Data, an
      # object's name is the S3 object's key name.
      class AwsS3Data
        include Google::Apis::Core::Hashable
      
        # S3 Bucket name (see [Creating a bucket](http://docs.aws.amazon.com/AmazonS3/
        # latest/dev/create-bucket-get-location-example.html)). Required.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # AWS access key (see [AWS Security Credentials](http://docs.aws.amazon.com/
        # general/latest/gr/aws-security-credentials.html)).
        # Corresponds to the JSON property `awsAccessKey`
        # @return [Google::Apis::StoragetransferV1::AwsAccessKey]
        attr_accessor :aws_access_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] unless args[:bucket_name].nil?
          @aws_access_key = args[:aws_access_key] unless args[:aws_access_key].nil?
        end
      end
      
      # AWS access key (see [AWS Security Credentials](http://docs.aws.amazon.com/
      # general/latest/gr/aws-security-credentials.html)).
      class AwsAccessKey
        include Google::Apis::Core::Hashable
      
        # AWS access key ID. Required.
        # Corresponds to the JSON property `accessKeyId`
        # @return [String]
        attr_accessor :access_key_id
      
        # AWS secret access key. This field is not returned in RPC responses. Required.
        # Corresponds to the JSON property `secretAccessKey`
        # @return [String]
        attr_accessor :secret_access_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_key_id = args[:access_key_id] unless args[:access_key_id].nil?
          @secret_access_key = args[:secret_access_key] unless args[:secret_access_key].nil?
        end
      end
      
      # An HttpData specifies a list of objects on the web to be transferred over HTTP.
      # The information of the objects to be transferred is contained in a file
      # referenced by a URL. The first line in the file must be "TsvHttpData-1.0",
      # which specifies the format of the file. Subsequent lines specify the
      # information of the list of objects, one object per list entry. Each entry has
      # the following tab-delimited fields: * HTTP URL * Length * MD5 - This field is
      # a base64-encoded MD5 hash of the object An HTTP URL that points to the object
      # to be transferred. It must be a valid URL with URL scheme HTTP or HTTPS. When
      # an object with URL `http(s)://hostname:port/` is transferred to the data sink,
      # the name of the object at the data sink is `/`. Length and MD5 provide the
      # size and the base64-encoded MD5 hash of the object. If Length does not match
      # the actual length of the object fetched, the object will not be transferred.
      # If MD5 does not match the MD5 computed from the transferred bytes, the object
      # transfer will fail. `lastModificationTime` is not available in HttpData
      # objects. The objects that the URL list points to must allow public access.
      # Storage Transfer Service obeys `robots.txt` rules and requires the HTTP server
      # to support Range requests and to return a Content-Length header in each
      # response.
      class HttpData
        include Google::Apis::Core::Hashable
      
        # The URL that points to the file that stores the object list entries. This file
        # must allow public access. Currently, only URLs with HTTP and HTTPS schemes are
        # supported. Required.
        # Corresponds to the JSON property `listUrl`
        # @return [String]
        attr_accessor :list_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_url = args[:list_url] unless args[:list_url].nil?
        end
      end
      
      # Conditions that determine which objects will be transferred.
      class ObjectConditions
        include Google::Apis::Core::Hashable
      
        # If unspecified, `minTimeElapsedSinceLastModification` takes a zero value and `
        # maxTimeElapsedSinceLastModification` takes the maximum possible value of
        # Duration. Objects that satisfy the object conditions must either have a `
        # lastModificationTime` greater or equal to `NOW` - `
        # maxTimeElapsedSinceLastModification` and less than `NOW` - `
        # minTimeElapsedSinceLastModification`, or not have a `lastModificationTime`.
        # Corresponds to the JSON property `minTimeElapsedSinceLastModification`
        # @return [String]
        attr_accessor :min_time_elapsed_since_last_modification
      
        # `maxTimeElapsedSinceLastModification` is the complement to `
        # minTimeElapsedSinceLastModification`.
        # Corresponds to the JSON property `maxTimeElapsedSinceLastModification`
        # @return [String]
        attr_accessor :max_time_elapsed_since_last_modification
      
        # If `includePrefixes` is specified, objects that satisfy the object conditions
        # must have names that start with one of the `includePrefixes` and that do not
        # start with any of the `excludePrefixes`. If `includePrefixes` is not specified,
        # all objects except those that have names starting with one of the `
        # excludePrefixes` must satisfy the object conditions. Requirements: * Each
        # include-prefix and exclude-prefix can contain any sequence of Unicode
        # characters, of max length 1024 bytes when UTF8-encoded, and must not contain
        # Carriage Return or Line Feed characters. Wildcard matching and regular
        # expression matching are not supported. * None of the include-prefix or the
        # exclude-prefix values can be empty, if specified. * Each include-prefix must
        # include a distinct portion of the object namespace, i.e., no include-prefix
        # may be a prefix of another include-prefix. * Each exclude-prefix must exclude
        # a distinct portion of the object namespace, i.e., no exclude-prefix may be a
        # prefix of another exclude-prefix. * If `includePrefixes` is specified, then
        # each exclude-prefix must start with the value of a path explicitly included by
        # `includePrefixes`. The max size of `includePrefixes` is 20.
        # Corresponds to the JSON property `includePrefixes`
        # @return [Array<String>]
        attr_accessor :include_prefixes
      
        # `excludePrefixes` must follow the requirements described for `includePrefixes`.
        # The max size of `excludePrefixes` is 20.
        # Corresponds to the JSON property `excludePrefixes`
        # @return [Array<String>]
        attr_accessor :exclude_prefixes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_time_elapsed_since_last_modification = args[:min_time_elapsed_since_last_modification] unless args[:min_time_elapsed_since_last_modification].nil?
          @max_time_elapsed_since_last_modification = args[:max_time_elapsed_since_last_modification] unless args[:max_time_elapsed_since_last_modification].nil?
          @include_prefixes = args[:include_prefixes] unless args[:include_prefixes].nil?
          @exclude_prefixes = args[:exclude_prefixes] unless args[:exclude_prefixes].nil?
        end
      end
      
      # TransferOptions uses three boolean parameters to define the actions to be
      # performed on objects in a transfer.
      class TransferOptions
        include Google::Apis::Core::Hashable
      
        # Whether overwriting objects that already exist in the sink is allowed.
        # Corresponds to the JSON property `overwriteObjectsAlreadyExistingInSink`
        # @return [Boolean]
        attr_accessor :overwrite_objects_already_existing_in_sink
        alias_method :overwrite_objects_already_existing_in_sink?, :overwrite_objects_already_existing_in_sink
      
        # Whether objects that exist only in the sink should be deleted.
        # Corresponds to the JSON property `deleteObjectsUniqueInSink`
        # @return [Boolean]
        attr_accessor :delete_objects_unique_in_sink
        alias_method :delete_objects_unique_in_sink?, :delete_objects_unique_in_sink
      
        # Whether objects should be deleted from the source after they are transferred
        # to the sink.
        # Corresponds to the JSON property `deleteObjectsFromSourceAfterTransfer`
        # @return [Boolean]
        attr_accessor :delete_objects_from_source_after_transfer
        alias_method :delete_objects_from_source_after_transfer?, :delete_objects_from_source_after_transfer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overwrite_objects_already_existing_in_sink = args[:overwrite_objects_already_existing_in_sink] unless args[:overwrite_objects_already_existing_in_sink].nil?
          @delete_objects_unique_in_sink = args[:delete_objects_unique_in_sink] unless args[:delete_objects_unique_in_sink].nil?
          @delete_objects_from_source_after_transfer = args[:delete_objects_from_source_after_transfer] unless args[:delete_objects_from_source_after_transfer].nil?
        end
      end
      
      # Transfers can be scheduled to recur or to run just once.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and time
        # zone are either specified elsewhere or are not significant. The date is
        # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
        # year and month where the day is not significant, e.g. credit card expiration
        # date. The year may be 0 to represent a month and day independent of year, e.g.
        # anniversary date. Related types are [google.type.TimeOfDay][google.type.
        # TimeOfDay] and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `scheduleStartDate`
        # @return [Google::Apis::StoragetransferV1::Date]
        attr_accessor :schedule_start_date
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and time
        # zone are either specified elsewhere or are not significant. The date is
        # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
        # year and month where the day is not significant, e.g. credit card expiration
        # date. The year may be 0 to represent a month and day independent of year, e.g.
        # anniversary date. Related types are [google.type.TimeOfDay][google.type.
        # TimeOfDay] and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `scheduleEndDate`
        # @return [Google::Apis::StoragetransferV1::Date]
        attr_accessor :schedule_end_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may chose to allow leap seconds. Related types
        # are [google.type.Date][google.type.Date] and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTimeOfDay`
        # @return [Google::Apis::StoragetransferV1::TimeOfDay]
        attr_accessor :start_time_of_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule_start_date = args[:schedule_start_date] unless args[:schedule_start_date].nil?
          @schedule_end_date = args[:schedule_end_date] unless args[:schedule_end_date].nil?
          @start_time_of_day = args[:start_time_of_day] unless args[:start_time_of_day].nil?
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and time
      # zone are either specified elsewhere or are not significant. The date is
      # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
      # year and month where the day is not significant, e.g. credit card expiration
      # date. The year may be 0 to represent a month and day independent of year, e.g.
      # anniversary date. Related types are [google.type.TimeOfDay][google.type.
      # TimeOfDay] and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Year of date. Must be from 1 to 9,999, or 0 if specifying a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Month of year of date. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if
        # specifying a year/month where the day is not sigificant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @year = args[:year] unless args[:year].nil?
          @month = args[:month] unless args[:month].nil?
          @day = args[:day] unless args[:day].nil?
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may chose to allow leap seconds. Related types
      # are [google.type.Date][google.type.Date] and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] unless args[:hours].nil?
          @minutes = args[:minutes] unless args[:minutes].nil?
          @seconds = args[:seconds] unless args[:seconds].nil?
          @nanos = args[:nanos] unless args[:nanos].nil?
        end
      end
      
      # Request passed to UpdateTransferJob.
      class UpdateTransferJobRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the Google Developers Console project that owns the job. Required.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # This resource represents the configuration of a transfer job that runs
        # periodically.
        # Corresponds to the JSON property `transferJob`
        # @return [Google::Apis::StoragetransferV1::TransferJob]
        attr_accessor :transfer_job
      
        # The field mask of the fields in `transferJob` that are to be updated in this
        # request. Fields in `transferJob` that can be updated are: `description`, `
        # transferSpec`, and `status`. To update the `transferSpec` of the job, a
        # complete transfer specification has to be provided. An incomplete
        # specification which misses any required fields will be rejected with the error
        # `INVALID_ARGUMENT`.
        # Corresponds to the JSON property `updateTransferJobFieldMask`
        # @return [String]
        attr_accessor :update_transfer_job_field_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] unless args[:project_id].nil?
          @transfer_job = args[:transfer_job] unless args[:transfer_job].nil?
          @update_transfer_job_field_mask = args[:update_transfer_job_field_mask] unless args[:update_transfer_job_field_mask].nil?
        end
      end
      
      # Response from ListTransferJobs.
      class ListTransferJobsResponse
        include Google::Apis::Core::Hashable
      
        # A list of transfer jobs.
        # Corresponds to the JSON property `transferJobs`
        # @return [Array<Google::Apis::StoragetransferV1::TransferJob>]
        attr_accessor :transfer_jobs
      
        # The list next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transfer_jobs = args[:transfer_jobs] unless args[:transfer_jobs].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Request passed to PauseTransferOperation.
      class PauseTransferOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request passed to ResumeTransferOperation.
      class ResumeTransferOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping above, the `name`
        # should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents the transfer operation object.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # If the value is `false`, it means the operation is still in progress. If true,
        # the operation is completed and the `result` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
        # use and understand for most users - Flexible enough to meet unexpected needs #
        # Overview The `Status` message contains three pieces of data: error code, error
        # message, and error details. The error code should be an enum value of [google.
        # rpc.Code][google.rpc.Code], but it may accept additional error codes if needed.
        # The error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` which can be used for common error conditions. #
        # Language mapping The `Status` message is the logical representation of the
        # error model, but it is not necessarily the actual wire format. When the `
        # Status` message is exposed in different client libraries and different wire
        # protocols, it can be mapped differently. For example, it will likely be mapped
        # to some exceptions in Java, but more likely mapped to some error codes in C. #
        # Other uses The error model and the `Status` message can be used in a variety
        # of environments, either with or without APIs, to provide a consistent
        # developer experience across different environments. Example uses of this error
        # model include: - Partial errors. If a service needs to return partial errors
        # to the client, it may embed the `Status` in the normal response to indicate
        # the partial errors. - Workflow errors. A typical workflow has multiple steps.
        # Each step may have a `Status` message for error reporting purpose. - Batch
        # operations. If a client uses batch request and batch response, the `Status`
        # message should be used directly inside batch response, one for each error sub-
        # response. - Asynchronous operations. If an API call embeds asynchronous
        # operation results in its response, the status of those operations should be
        # represented directly using the `Status` message. - Logging. If some API errors
        # are stored in logs, the message `Status` could be used directly after any
        # stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::StoragetransferV1::Status]
        attr_accessor :error
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @done = args[:done] unless args[:done].nil?
          @error = args[:error] unless args[:error].nil?
          @response = args[:response] unless args[:response].nil?
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
      # use and understand for most users - Flexible enough to meet unexpected needs #
      # Overview The `Status` message contains three pieces of data: error code, error
      # message, and error details. The error code should be an enum value of [google.
      # rpc.Code][google.rpc.Code], but it may accept additional error codes if needed.
      # The error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` which can be used for common error conditions. #
      # Language mapping The `Status` message is the logical representation of the
      # error model, but it is not necessarily the actual wire format. When the `
      # Status` message is exposed in different client libraries and different wire
      # protocols, it can be mapped differently. For example, it will likely be mapped
      # to some exceptions in Java, but more likely mapped to some error codes in C. #
      # Other uses The error model and the `Status` message can be used in a variety
      # of environments, either with or without APIs, to provide a consistent
      # developer experience across different environments. Example uses of this error
      # model include: - Partial errors. If a service needs to return partial errors
      # to the client, it may embed the `Status` in the normal response to indicate
      # the partial errors. - Workflow errors. A typical workflow has multiple steps.
      # Each step may have a `Status` message for error reporting purpose. - Batch
      # operations. If a client uses batch request and batch response, the `Status`
      # message should be used directly inside batch response, one for each error sub-
      # response. - Asynchronous operations. If an API call embeds asynchronous
      # operation results in its response, the status of those operations should be
      # represented directly using the `Status` message. - Logging. If some API errors
      # are stored in logs, the message `Status` could be used directly after any
      # stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of [google.rpc.Code][google.rpc.
        # Code].
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the [google.rpc.Status.details][
        # google.rpc.Status.details] field, or localized by the client.
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
          @code = args[:code] unless args[:code].nil?
          @message = args[:message] unless args[:message].nil?
          @details = args[:details] unless args[:details].nil?
        end
      end
      
      # The response message for [Operations.ListOperations][google.longrunning.
      # Operations.ListOperations].
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::StoragetransferV1::Operation>]
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
          @operations = args[:operations] unless args[:operations].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A description of the execution of a transfer.
      class TransferOperation
        include Google::Apis::Core::Hashable
      
        # A globally unique ID assigned by the system.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the Google Developers Console project that owns the operation.
        # Required.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Configuration for running a transfer.
        # Corresponds to the JSON property `transferSpec`
        # @return [Google::Apis::StoragetransferV1::TransferSpec]
        attr_accessor :transfer_spec
      
        # Start time of this transfer execution.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # End time of this transfer execution.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Status of the transfer operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A collection of counters that report the progress of a transfer operation.
        # Corresponds to the JSON property `counters`
        # @return [Google::Apis::StoragetransferV1::TransferCounters]
        attr_accessor :counters
      
        # Summarizes errors encountered with sample error log entries.
        # Corresponds to the JSON property `errorBreakdowns`
        # @return [Array<Google::Apis::StoragetransferV1::ErrorSummary>]
        attr_accessor :error_breakdowns
      
        # The name of the transfer job that triggers this transfer operation.
        # Corresponds to the JSON property `transferJobName`
        # @return [String]
        attr_accessor :transfer_job_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @transfer_spec = args[:transfer_spec] unless args[:transfer_spec].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @status = args[:status] unless args[:status].nil?
          @counters = args[:counters] unless args[:counters].nil?
          @error_breakdowns = args[:error_breakdowns] unless args[:error_breakdowns].nil?
          @transfer_job_name = args[:transfer_job_name] unless args[:transfer_job_name].nil?
        end
      end
      
      # A collection of counters that report the progress of a transfer operation.
      class TransferCounters
        include Google::Apis::Core::Hashable
      
        # Objects found in the data source that are scheduled to be transferred, which
        # will be copied, excluded based on conditions, or skipped due to failures.
        # Corresponds to the JSON property `objectsFoundFromSource`
        # @return [String]
        attr_accessor :objects_found_from_source
      
        # Bytes found in the data source that are scheduled to be transferred, which
        # will be copied, excluded based on conditions, or skipped due to failures.
        # Corresponds to the JSON property `bytesFoundFromSource`
        # @return [String]
        attr_accessor :bytes_found_from_source
      
        # Objects found only in the data sink that are scheduled to be deleted.
        # Corresponds to the JSON property `objectsFoundOnlyFromSink`
        # @return [String]
        attr_accessor :objects_found_only_from_sink
      
        # Bytes found only in the data sink that are scheduled to be deleted.
        # Corresponds to the JSON property `bytesFoundOnlyFromSink`
        # @return [String]
        attr_accessor :bytes_found_only_from_sink
      
        # Objects in the data source that are not transferred because they already exist
        # in the data sink.
        # Corresponds to the JSON property `objectsFromSourceSkippedBySync`
        # @return [String]
        attr_accessor :objects_from_source_skipped_by_sync
      
        # Bytes in the data source that are not transferred because they already exist
        # in the data sink.
        # Corresponds to the JSON property `bytesFromSourceSkippedBySync`
        # @return [String]
        attr_accessor :bytes_from_source_skipped_by_sync
      
        # Objects that are copied to the data sink.
        # Corresponds to the JSON property `objectsCopiedToSink`
        # @return [String]
        attr_accessor :objects_copied_to_sink
      
        # Bytes that are copied to the data sink.
        # Corresponds to the JSON property `bytesCopiedToSink`
        # @return [String]
        attr_accessor :bytes_copied_to_sink
      
        # Objects that are deleted from the data source.
        # Corresponds to the JSON property `objectsDeletedFromSource`
        # @return [String]
        attr_accessor :objects_deleted_from_source
      
        # Bytes that are deleted from the data source.
        # Corresponds to the JSON property `bytesDeletedFromSource`
        # @return [String]
        attr_accessor :bytes_deleted_from_source
      
        # Objects that are deleted from the data sink.
        # Corresponds to the JSON property `objectsDeletedFromSink`
        # @return [String]
        attr_accessor :objects_deleted_from_sink
      
        # Bytes that are deleted from the data sink.
        # Corresponds to the JSON property `bytesDeletedFromSink`
        # @return [String]
        attr_accessor :bytes_deleted_from_sink
      
        # Objects in the data source that failed during the transfer.
        # Corresponds to the JSON property `objectsFromSourceFailed`
        # @return [String]
        attr_accessor :objects_from_source_failed
      
        # Bytes in the data source that failed during the transfer.
        # Corresponds to the JSON property `bytesFromSourceFailed`
        # @return [String]
        attr_accessor :bytes_from_source_failed
      
        # Objects that failed to be deleted from the data sink.
        # Corresponds to the JSON property `objectsFailedToDeleteFromSink`
        # @return [String]
        attr_accessor :objects_failed_to_delete_from_sink
      
        # Bytes that failed to be deleted from the data sink.
        # Corresponds to the JSON property `bytesFailedToDeleteFromSink`
        # @return [String]
        attr_accessor :bytes_failed_to_delete_from_sink
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @objects_found_from_source = args[:objects_found_from_source] unless args[:objects_found_from_source].nil?
          @bytes_found_from_source = args[:bytes_found_from_source] unless args[:bytes_found_from_source].nil?
          @objects_found_only_from_sink = args[:objects_found_only_from_sink] unless args[:objects_found_only_from_sink].nil?
          @bytes_found_only_from_sink = args[:bytes_found_only_from_sink] unless args[:bytes_found_only_from_sink].nil?
          @objects_from_source_skipped_by_sync = args[:objects_from_source_skipped_by_sync] unless args[:objects_from_source_skipped_by_sync].nil?
          @bytes_from_source_skipped_by_sync = args[:bytes_from_source_skipped_by_sync] unless args[:bytes_from_source_skipped_by_sync].nil?
          @objects_copied_to_sink = args[:objects_copied_to_sink] unless args[:objects_copied_to_sink].nil?
          @bytes_copied_to_sink = args[:bytes_copied_to_sink] unless args[:bytes_copied_to_sink].nil?
          @objects_deleted_from_source = args[:objects_deleted_from_source] unless args[:objects_deleted_from_source].nil?
          @bytes_deleted_from_source = args[:bytes_deleted_from_source] unless args[:bytes_deleted_from_source].nil?
          @objects_deleted_from_sink = args[:objects_deleted_from_sink] unless args[:objects_deleted_from_sink].nil?
          @bytes_deleted_from_sink = args[:bytes_deleted_from_sink] unless args[:bytes_deleted_from_sink].nil?
          @objects_from_source_failed = args[:objects_from_source_failed] unless args[:objects_from_source_failed].nil?
          @bytes_from_source_failed = args[:bytes_from_source_failed] unless args[:bytes_from_source_failed].nil?
          @objects_failed_to_delete_from_sink = args[:objects_failed_to_delete_from_sink] unless args[:objects_failed_to_delete_from_sink].nil?
          @bytes_failed_to_delete_from_sink = args[:bytes_failed_to_delete_from_sink] unless args[:bytes_failed_to_delete_from_sink].nil?
        end
      end
      
      # A summary of errors by error code, plus a count and sample error log entries.
      class ErrorSummary
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Count of this type of error. Required.
        # Corresponds to the JSON property `errorCount`
        # @return [String]
        attr_accessor :error_count
      
        # Error samples.
        # Corresponds to the JSON property `errorLogEntries`
        # @return [Array<Google::Apis::StoragetransferV1::ErrorLogEntry>]
        attr_accessor :error_log_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] unless args[:error_code].nil?
          @error_count = args[:error_count] unless args[:error_count].nil?
          @error_log_entries = args[:error_log_entries] unless args[:error_log_entries].nil?
        end
      end
      
      # An entry describing an error that has occurred.
      class ErrorLogEntry
        include Google::Apis::Core::Hashable
      
        # A URL that refers to the target (a data source, a data sink, or an object)
        # with which the error is associated. Required.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # A list of messages that carry the error details.
        # Corresponds to the JSON property `errorDetails`
        # @return [Array<String>]
        attr_accessor :error_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] unless args[:url].nil?
          @error_details = args[:error_details] unless args[:error_details].nil?
        end
      end
    end
  end
end
