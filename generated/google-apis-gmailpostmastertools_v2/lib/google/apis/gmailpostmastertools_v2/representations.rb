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
      
      class BaseMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchQueryDomainStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchQueryDomainStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchQueryDomainStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceRowData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRanges
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Domain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainComplianceData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainComplianceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainStat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HonorUnsubscribeVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OneClickUnsubscribeVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryDomainStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryDomainStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatisticValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BaseMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard_metric, as: 'standardMetric'
        end
      end
      
      class BatchQueryDomainStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsRequest, decorator: Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsRequest::Representation
      
        end
      end
      
      class BatchQueryDomainStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResult, decorator: Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResult::Representation
      
        end
      end
      
      class BatchQueryDomainStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::GmailpostmastertoolsV2::Status, decorator: Google::Apis::GmailpostmastertoolsV2::Status::Representation
      
          property :response, as: 'response', class: Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse, decorator: Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse::Representation
      
        end
      end
      
      class ComplianceRowData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requirement, as: 'requirement'
          property :status, as: 'status', class: Google::Apis::GmailpostmastertoolsV2::ComplianceStatus, decorator: Google::Apis::GmailpostmastertoolsV2::ComplianceStatus::Representation
      
        end
      end
      
      class ComplianceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dates, as: 'dates', class: Google::Apis::GmailpostmastertoolsV2::Date, decorator: Google::Apis::GmailpostmastertoolsV2::Date::Representation
      
        end
      end
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', class: Google::Apis::GmailpostmastertoolsV2::Date, decorator: Google::Apis::GmailpostmastertoolsV2::Date::Representation
      
          property :start, as: 'start', class: Google::Apis::GmailpostmastertoolsV2::Date, decorator: Google::Apis::GmailpostmastertoolsV2::Date::Representation
      
        end
      end
      
      class DateRanges
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::GmailpostmastertoolsV2::DateRange, decorator: Google::Apis::GmailpostmastertoolsV2::DateRange::Representation
      
        end
      end
      
      class Domain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_verify_time, as: 'lastVerifyTime'
          property :name, as: 'name'
          property :permission, as: 'permission'
          property :verification_state, as: 'verificationState'
        end
      end
      
      class DomainComplianceData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId'
          property :honor_unsubscribe_verdict, as: 'honorUnsubscribeVerdict', class: Google::Apis::GmailpostmastertoolsV2::HonorUnsubscribeVerdict, decorator: Google::Apis::GmailpostmastertoolsV2::HonorUnsubscribeVerdict::Representation
      
          property :one_click_unsubscribe_verdict, as: 'oneClickUnsubscribeVerdict', class: Google::Apis::GmailpostmastertoolsV2::OneClickUnsubscribeVerdict, decorator: Google::Apis::GmailpostmastertoolsV2::OneClickUnsubscribeVerdict::Representation
      
          collection :row_data, as: 'rowData', class: Google::Apis::GmailpostmastertoolsV2::ComplianceRowData, decorator: Google::Apis::GmailpostmastertoolsV2::ComplianceRowData::Representation
      
        end
      end
      
      class DomainComplianceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_data, as: 'complianceData', class: Google::Apis::GmailpostmastertoolsV2::DomainComplianceData, decorator: Google::Apis::GmailpostmastertoolsV2::DomainComplianceData::Representation
      
          property :name, as: 'name'
          property :subdomain_compliance_data, as: 'subdomainComplianceData', class: Google::Apis::GmailpostmastertoolsV2::DomainComplianceData, decorator: Google::Apis::GmailpostmastertoolsV2::DomainComplianceData::Representation
      
        end
      end
      
      class DomainStat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::GmailpostmastertoolsV2::Date, decorator: Google::Apis::GmailpostmastertoolsV2::Date::Representation
      
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::GmailpostmastertoolsV2::StatisticValue, decorator: Google::Apis::GmailpostmastertoolsV2::StatisticValue::Representation
      
        end
      end
      
      class HonorUnsubscribeVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :status, as: 'status', class: Google::Apis::GmailpostmastertoolsV2::ComplianceStatus, decorator: Google::Apis::GmailpostmastertoolsV2::ComplianceStatus::Representation
      
        end
      end
      
      class ListDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::GmailpostmastertoolsV2::Domain, decorator: Google::Apis::GmailpostmastertoolsV2::Domain::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MetricDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_metric, as: 'baseMetric', class: Google::Apis::GmailpostmastertoolsV2::BaseMetric, decorator: Google::Apis::GmailpostmastertoolsV2::BaseMetric::Representation
      
          property :filter, as: 'filter'
          property :name, as: 'name'
        end
      end
      
      class OneClickUnsubscribeVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :status, as: 'status', class: Google::Apis::GmailpostmastertoolsV2::ComplianceStatus, decorator: Google::Apis::GmailpostmastertoolsV2::ComplianceStatus::Representation
      
        end
      end
      
      class QueryDomainStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_granularity, as: 'aggregationGranularity'
          collection :metric_definitions, as: 'metricDefinitions', class: Google::Apis::GmailpostmastertoolsV2::MetricDefinition, decorator: Google::Apis::GmailpostmastertoolsV2::MetricDefinition::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :parent, as: 'parent'
          property :time_query, as: 'timeQuery', class: Google::Apis::GmailpostmastertoolsV2::TimeQuery, decorator: Google::Apis::GmailpostmastertoolsV2::TimeQuery::Representation
      
        end
      end
      
      class QueryDomainStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domain_stats, as: 'domainStats', class: Google::Apis::GmailpostmastertoolsV2::DomainStat, decorator: Google::Apis::GmailpostmastertoolsV2::DomainStat::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class StatisticValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :float_value, as: 'floatValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :string_list, as: 'stringList', class: Google::Apis::GmailpostmastertoolsV2::StringList, decorator: Google::Apis::GmailpostmastertoolsV2::StringList::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class TimeQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_list, as: 'dateList', class: Google::Apis::GmailpostmastertoolsV2::DateList, decorator: Google::Apis::GmailpostmastertoolsV2::DateList::Representation
      
          property :date_ranges, as: 'dateRanges', class: Google::Apis::GmailpostmastertoolsV2::DateRanges, decorator: Google::Apis::GmailpostmastertoolsV2::DateRanges::Representation
      
        end
      end
    end
  end
end
