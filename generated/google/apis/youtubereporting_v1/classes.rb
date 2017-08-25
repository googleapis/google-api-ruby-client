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
    module YoutubereportingV1
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A job creating reports of a specific type.
      class Job
        include Google::Apis::Core::Hashable
      
        # The creation date/time of the job.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The date/time when this job will expire/expired. After a job expired, no
        # new reports are generated.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The server-generated ID of the job (max. 40 characters).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the job (max. 100 characters).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of reports this job creates. Corresponds to the ID of a
        # ReportType.
        # Corresponds to the JSON property `reportTypeId`
        # @return [String]
        attr_accessor :report_type_id
      
        # True if this a system-managed job that cannot be modified by the user;
        # otherwise false.
        # Corresponds to the JSON property `systemManaged`
        # @return [Boolean]
        attr_accessor :system_managed
        alias_method :system_managed?, :system_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @report_type_id = args[:report_type_id] if args.key?(:report_type_id)
          @system_managed = args[:system_managed] if args.key?(:system_managed)
        end
      end
      
      # Response message for ReportingService.ListJobs.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of jobs.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::YoutubereportingV1::Job>]
        attr_accessor :jobs
      
        # A token to retrieve next page of results.
        # Pass this value in the
        # ListJobsRequest.page_token
        # field in the subsequent call to `ListJobs` method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ReportingService.ListReportTypes.
      class ListReportTypesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # Pass this value in the
        # ListReportTypesRequest.page_token
        # field in the subsequent call to `ListReportTypes` method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of report types.
        # Corresponds to the JSON property `reportTypes`
        # @return [Array<Google::Apis::YoutubereportingV1::ReportType>]
        attr_accessor :report_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @report_types = args[:report_types] if args.key?(:report_types)
        end
      end
      
      # Response message for ReportingService.ListReports.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # Pass this value in the
        # ListReportsRequest.page_token
        # field in the subsequent call to `ListReports` method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of report types.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::YoutubereportingV1::Report>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # Media resource.
      class Media
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
      
      # A report's metadata including the URL from which the report itself can be
      # downloaded.
      class Report
        include Google::Apis::Core::Hashable
      
        # The date/time when this report was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The URL from which the report can be downloaded (max. 1000 characters).
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # The end of the time period that the report instance covers. The value is
        # exclusive.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The server-generated ID of the report.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The date/time when the job this report belongs to will expire/expired.
        # Corresponds to the JSON property `jobExpireTime`
        # @return [String]
        attr_accessor :job_expire_time
      
        # The ID of the job that created this report.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # The start of the time period that the report instance covers. The value is
        # inclusive.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @download_url = args[:download_url] if args.key?(:download_url)
          @end_time = args[:end_time] if args.key?(:end_time)
          @id = args[:id] if args.key?(:id)
          @job_expire_time = args[:job_expire_time] if args.key?(:job_expire_time)
          @job_id = args[:job_id] if args.key?(:job_id)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A report type.
      class ReportType
        include Google::Apis::Core::Hashable
      
        # The date/time when this report type was/will be deprecated.
        # Corresponds to the JSON property `deprecateTime`
        # @return [String]
        attr_accessor :deprecate_time
      
        # The ID of the report type (max. 100 characters).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the report type (max. 100 characters).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True if this a system-managed report type; otherwise false. Reporting jobs
        # for system-managed report types are created automatically and can thus not
        # be used in the `CreateJob` method.
        # Corresponds to the JSON property `systemManaged`
        # @return [Boolean]
        attr_accessor :system_managed
        alias_method :system_managed?, :system_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecate_time = args[:deprecate_time] if args.key?(:deprecate_time)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @system_managed = args[:system_managed] if args.key?(:system_managed)
        end
      end
    end
  end
end
