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
    module GmailpostmastertoolsV2
      
      # Specifies the base metric to query, which can be a predefined standard metric
      # or a user-defined custom metric (if supported in the future).
      class BaseMetric
        include Google::Apis::Core::Hashable
      
        # A predefined standard metric.
        # Corresponds to the JSON property `standardMetric`
        # @return [String]
        attr_accessor :standard_metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @standard_metric = args[:standard_metric] if args.key?(:standard_metric)
        end
      end
      
      # Request message for BatchQueryDomainStats.
      class BatchQueryDomainStatsRequest
        include Google::Apis::Core::Hashable
      
        # Required. A list of individual query requests. Each request can be for a
        # different domain. A maximum of 100 requests can be included in a single batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchQueryDomainStats.
      class BatchQueryDomainStatsResponse
        include Google::Apis::Core::Hashable
      
        # A list of responses, one for each query in the BatchQueryDomainStatsRequest.
        # The order of responses will correspond to the order of requests.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Represents the result of a single QueryDomainStatsRequest within a batch.
      class BatchQueryDomainStatsResult
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::GmailpostmastertoolsV2::Status]
        attr_accessor :error
      
        # Response message for QueryDomainStats.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Data for a single row of the compliance status table.
      class ComplianceRowData
        include Google::Apis::Core::Hashable
      
        # The compliance requirement.
        # Corresponds to the JSON property `requirement`
        # @return [String]
        attr_accessor :requirement
      
        # The status of a sender compliance requirement.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GmailpostmastertoolsV2::ComplianceStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requirement = args[:requirement] if args.key?(:requirement)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The status of a sender compliance requirement.
      class ComplianceStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The compliance status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A set of specific dates.
      class DateList
        include Google::Apis::Core::Hashable
      
        # Required. The list of specific dates for which to retrieve data.
        # Corresponds to the JSON property `dates`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::Date>]
        attr_accessor :dates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dates = args[:dates] if args.key?(:dates)
        end
      end
      
      # A single date range defined by a start and end date.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::GmailpostmastertoolsV2::Date]
        attr_accessor :end
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::GmailpostmastertoolsV2::Date]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A set of date ranges.
      class DateRanges
        include Google::Apis::Core::Hashable
      
        # Required. The list of date ranges for which to retrieve data.
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::DateRange>]
        attr_accessor :date_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
        end
      end
      
      # Information about a domain registered by the user.
      class Domain
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. The timestamp at which the domain was added to the
        # user's account.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The timestamp at which the domain was last verified by the user.
        # Corresponds to the JSON property `lastVerifyTime`
        # @return [String]
        attr_accessor :last_verify_time
      
        # Identifier. The resource name of the domain. Format: `domains/`domain_name``,
        # where domain_name is the fully qualified domain name (i.e., mymail.mydomain.
        # com).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. User's permission of this domain.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # Output only. Information about a user's verification history and properties
        # for the domain.
        # Corresponds to the JSON property `verificationState`
        # @return [String]
        attr_accessor :verification_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @last_verify_time = args[:last_verify_time] if args.key?(:last_verify_time)
          @name = args[:name] if args.key?(:name)
          @permission = args[:permission] if args.key?(:permission)
          @verification_state = args[:verification_state] if args.key?(:verification_state)
        end
      end
      
      # Compliance data for a given domain.
      class DomainComplianceData
        include Google::Apis::Core::Hashable
      
        # Domain that this data is for.
        # Corresponds to the JSON property `domainId`
        # @return [String]
        attr_accessor :domain_id
      
        # Compliance verdict for whether a sender meets the unsubscribe honoring
        # compliance requirement.
        # Corresponds to the JSON property `honorUnsubscribeVerdict`
        # @return [Google::Apis::GmailpostmastertoolsV2::HonorUnsubscribeVerdict]
        attr_accessor :honor_unsubscribe_verdict
      
        # Compliance verdict for whether a sender meets the one-click unsubscribe
        # compliance requirement.
        # Corresponds to the JSON property `oneClickUnsubscribeVerdict`
        # @return [Google::Apis::GmailpostmastertoolsV2::OneClickUnsubscribeVerdict]
        attr_accessor :one_click_unsubscribe_verdict
      
        # Data for each of the rows of the table. Each message contains all the data
        # that backs a single row.
        # Corresponds to the JSON property `rowData`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::ComplianceRowData>]
        attr_accessor :row_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @honor_unsubscribe_verdict = args[:honor_unsubscribe_verdict] if args.key?(:honor_unsubscribe_verdict)
          @one_click_unsubscribe_verdict = args[:one_click_unsubscribe_verdict] if args.key?(:one_click_unsubscribe_verdict)
          @row_data = args[:row_data] if args.key?(:row_data)
        end
      end
      
      # Compliance status for a domain.
      class DomainComplianceStatus
        include Google::Apis::Core::Hashable
      
        # Compliance data for a given domain.
        # Corresponds to the JSON property `complianceData`
        # @return [Google::Apis::GmailpostmastertoolsV2::DomainComplianceData]
        attr_accessor :compliance_data
      
        # Identifier. The resource name of the domain's compliance status. Format: `
        # domains/`domain_id`/complianceStatus`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Compliance data for a given domain.
        # Corresponds to the JSON property `subdomainComplianceData`
        # @return [Google::Apis::GmailpostmastertoolsV2::DomainComplianceData]
        attr_accessor :subdomain_compliance_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_data = args[:compliance_data] if args.key?(:compliance_data)
          @name = args[:name] if args.key?(:name)
          @subdomain_compliance_data = args[:subdomain_compliance_data] if args.key?(:subdomain_compliance_data)
        end
      end
      
      # Email statistics for a domain for a specified time period or date.
      class DomainStat
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::GmailpostmastertoolsV2::Date]
        attr_accessor :date
      
        # The user-defined name from MetricDefinition.name in the request, used to
        # correlate this result with the requested metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Output only. The resource name of the DomainStat resource. Format: domains/`
        # domain`/domainStats/`domain_stat` The ``domain_stat`` segment is an opaque,
        # server-generated ID. We recommend using the `metric` field to identify queried
        # metrics instead of parsing the name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The actual value of a statistic.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::GmailpostmastertoolsV2::StatisticValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @metric = args[:metric] if args.key?(:metric)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Compliance verdict for whether a sender meets the unsubscribe honoring
      # compliance requirement.
      class HonorUnsubscribeVerdict
        include Google::Apis::Core::Hashable
      
        # The specific reason for the compliance verdict. Must be empty if the status is
        # compliant.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The status of a sender compliance requirement.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GmailpostmastertoolsV2::ComplianceStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response message for ListDomains.
      class ListDomainsResponse
        include Google::Apis::Core::Hashable
      
        # The domains that have been registered by the user.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::Domain>]
        attr_accessor :domains
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Defines a specific metric to query, including a user-defined name, the base
      # metric type, and optional filters.
      class MetricDefinition
        include Google::Apis::Core::Hashable
      
        # Specifies the base metric to query, which can be a predefined standard metric
        # or a user-defined custom metric (if supported in the future).
        # Corresponds to the JSON property `baseMetric`
        # @return [Google::Apis::GmailpostmastertoolsV2::BaseMetric]
        attr_accessor :base_metric
      
        # Optional. Optional filters to apply to the metric.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The user-defined name for this metric. This name will be used as the
        # key for this metric's value in the response.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_metric = args[:base_metric] if args.key?(:base_metric)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Compliance verdict for whether a sender meets the one-click unsubscribe
      # compliance requirement.
      class OneClickUnsubscribeVerdict
        include Google::Apis::Core::Hashable
      
        # The specific reason for the compliance verdict. Must be empty if the status is
        # compliant.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The status of a sender compliance requirement.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GmailpostmastertoolsV2::ComplianceStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Request message for QueryDomainStats.
      class QueryDomainStatsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The granularity at which to aggregate the statistics. If unspecified,
        # defaults to DAILY.
        # Corresponds to the JSON property `aggregationGranularity`
        # @return [String]
        attr_accessor :aggregation_granularity
      
        # Required. The specific metrics to query. You can define a custom name for each
        # metric, which will be used in the response.
        # Corresponds to the JSON property `metricDefinitions`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::MetricDefinition>]
        attr_accessor :metric_definitions
      
        # Optional. The maximum number of DomainStats resources to return in the
        # response. The server may return fewer than this value. If unspecified, a
        # default value of 10 will be used. The maximum value is 200.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. The next_page_token value returned from a previous List request, if
        # any. If the aggregation granularity is DAILY, the page token will be the
        # encoded date + "/" + metric name. If the aggregation granularity is OVERALL,
        # the page token will be the encoded metric name.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The parent resource name where the stats are queried. Format:
        # domains/`domain`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The date ranges or specific dates for which you want to retrieve data.
        # Corresponds to the JSON property `timeQuery`
        # @return [Google::Apis::GmailpostmastertoolsV2::TimeQuery]
        attr_accessor :time_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_granularity = args[:aggregation_granularity] if args.key?(:aggregation_granularity)
          @metric_definitions = args[:metric_definitions] if args.key?(:metric_definitions)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @parent = args[:parent] if args.key?(:parent)
          @time_query = args[:time_query] if args.key?(:time_query)
        end
      end
      
      # Response message for QueryDomainStats.
      class QueryDomainStatsResponse
        include Google::Apis::Core::Hashable
      
        # The list of domain statistics. Each DomainStat object contains the value for a
        # metric requested in the QueryDomainStatsRequest.
        # Corresponds to the JSON property `domainStats`
        # @return [Array<Google::Apis::GmailpostmastertoolsV2::DomainStat>]
        attr_accessor :domain_stats
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_stats = args[:domain_stats] if args.key?(:domain_stats)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The actual value of a statistic.
      class StatisticValue
        include Google::Apis::Core::Hashable
      
        # Double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Float value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Integer value.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Represents a list of strings.
        # Corresponds to the JSON property `stringList`
        # @return [Google::Apis::GmailpostmastertoolsV2::StringList]
        attr_accessor :string_list
      
        # String value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_list = args[:string_list] if args.key?(:string_list)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # Represents a list of strings.
      class StringList
        include Google::Apis::Core::Hashable
      
        # The string values.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The date ranges or specific dates for which you want to retrieve data.
      class TimeQuery
        include Google::Apis::Core::Hashable
      
        # A set of specific dates.
        # Corresponds to the JSON property `dateList`
        # @return [Google::Apis::GmailpostmastertoolsV2::DateList]
        attr_accessor :date_list
      
        # A set of date ranges.
        # Corresponds to the JSON property `dateRanges`
        # @return [Google::Apis::GmailpostmastertoolsV2::DateRanges]
        attr_accessor :date_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_list = args[:date_list] if args.key?(:date_list)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
        end
      end
    end
  end
end
