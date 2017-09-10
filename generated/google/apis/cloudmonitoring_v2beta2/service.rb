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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CloudmonitoringV2beta2
      # Cloud Monitoring API
      #
      # Accesses Google Cloud Monitoring data.
      #
      # @example
      #    require 'google/apis/cloudmonitoring_v2beta2'
      #
      #    Cloudmonitoring = Google::Apis::CloudmonitoringV2beta2 # Alias the module
      #    service = Cloudmonitoring::CloudMonitoringService.new
      #
      # @see https://cloud.google.com/monitoring/v2beta2/
      class CloudMonitoringService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'cloudmonitoring/v2beta2/projects/')
          @batch_path = 'batch/cloudmonitoring/v2beta2'
        end
        
        # Create a new metric.
        # @param [String] project
        #   The project id. The value can be the numeric project ID or string-based
        #   project name.
        # @param [Google::Apis::CloudmonitoringV2beta2::MetricDescriptor] metric_descriptor_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudmonitoringV2beta2::MetricDescriptor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudmonitoringV2beta2::MetricDescriptor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_metric_descriptor(project, metric_descriptor_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/metricDescriptors', options)
          command.request_representation = Google::Apis::CloudmonitoringV2beta2::MetricDescriptor::Representation
          command.request_object = metric_descriptor_object
          command.response_representation = Google::Apis::CloudmonitoringV2beta2::MetricDescriptor::Representation
          command.response_class = Google::Apis::CloudmonitoringV2beta2::MetricDescriptor
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an existing metric.
        # @param [String] project
        #   The project ID to which the metric belongs.
        # @param [String] metric
        #   Name of the metric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudmonitoringV2beta2::DeleteMetricDescriptorResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudmonitoringV2beta2::DeleteMetricDescriptorResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_metric_descriptor(project, metric, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/metricDescriptors/{metric}', options)
          command.response_representation = Google::Apis::CloudmonitoringV2beta2::DeleteMetricDescriptorResponse::Representation
          command.response_class = Google::Apis::CloudmonitoringV2beta2::DeleteMetricDescriptorResponse
          command.params['project'] = project unless project.nil?
          command.params['metric'] = metric unless metric.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List metric descriptors that match the query. If the query is not set, then
        # all of the metric descriptors will be returned. Large responses will be
        # paginated, use the nextPageToken returned in the response to request
        # subsequent pages of results by setting the pageToken query parameter to the
        # value of the nextPageToken.
        # @param [String] project
        #   The project id. The value can be the numeric project ID or string-based
        #   project name.
        # @param [Google::Apis::CloudmonitoringV2beta2::ListMetricDescriptorsRequest] list_metric_descriptors_request_object
        # @param [Fixnum] count
        #   Maximum number of metric descriptors per page. Used for pagination. If not
        #   specified, count = 100.
        # @param [String] page_token
        #   The pagination token, which is used to page through large result sets. Set
        #   this value to the value of the nextPageToken to retrieve the next page of
        #   results.
        # @param [String] query
        #   The query used to search against existing metrics. Separate keywords with a
        #   space; the service joins all keywords with AND, meaning that all keywords must
        #   match for a metric to be returned. If this field is omitted, all metrics are
        #   returned. If an empty string is passed with this field, no metrics are
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudmonitoringV2beta2::ListMetricDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudmonitoringV2beta2::ListMetricDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_metric_descriptors(project, list_metric_descriptors_request_object = nil, count: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/metricDescriptors', options)
          command.request_representation = Google::Apis::CloudmonitoringV2beta2::ListMetricDescriptorsRequest::Representation
          command.request_object = list_metric_descriptors_request_object
          command.response_representation = Google::Apis::CloudmonitoringV2beta2::ListMetricDescriptorsResponse::Representation
          command.response_class = Google::Apis::CloudmonitoringV2beta2::ListMetricDescriptorsResponse
          command.params['project'] = project unless project.nil?
          command.query['count'] = count unless count.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the data points of the time series that match the metric and labels
        # values and that have data points in the interval. Large responses are
        # paginated; use the nextPageToken returned in the response to request
        # subsequent pages of results by setting the pageToken query parameter to the
        # value of the nextPageToken.
        # @param [String] project
        #   The project ID to which this time series belongs. The value can be the numeric
        #   project ID or string-based project name.
        # @param [String] metric
        #   Metric names are protocol-free URLs as listed in the Supported Metrics page.
        #   For example, compute.googleapis.com/instance/disk/read_ops_count.
        # @param [String] youngest
        #   End of the time interval (inclusive), which is expressed as an RFC 3339
        #   timestamp.
        # @param [Google::Apis::CloudmonitoringV2beta2::ListTimeseriesRequest] list_timeseries_request_object
        # @param [String] aggregator
        #   The aggregation function that will reduce the data points in each window to a
        #   single point. This parameter is only valid for non-cumulative metrics with a
        #   value type of INT64 or DOUBLE.
        # @param [Fixnum] count
        #   Maximum number of data points per page, which is used for pagination of
        #   results.
        # @param [Array<String>, String] labels
        #   A collection of labels for the matching time series, which are represented as:
        #   
        #   - key==value: key equals the value
        #   - key=~value: key regex matches the value
        #   - key!=value: key does not equal the value
        #   - key!~value: key regex does not match the value  For example, to list all of
        #   the time series descriptors for the region us-central1, you could specify:
        #   label=cloud.googleapis.com%2Flocation=~us-central1.*
        # @param [String] oldest
        #   Start of the time interval (exclusive), which is expressed as an RFC 3339
        #   timestamp. If neither oldest nor timespan is specified, the default time
        #   interval will be (youngest - 4 hours, youngest]
        # @param [String] page_token
        #   The pagination token, which is used to page through large result sets. Set
        #   this value to the value of the nextPageToken to retrieve the next page of
        #   results.
        # @param [String] timespan
        #   Length of the time interval to query, which is an alternative way to declare
        #   the interval: (youngest - timespan, youngest]. The timespan and oldest
        #   parameters should not be used together. Units:
        #   - s: second
        #   - m: minute
        #   - h: hour
        #   - d: day
        #   - w: week  Examples: 2s, 3m, 4w. Only one unit is allowed, for example: 2w3d
        #   is not allowed; you should use 17d instead.
        #   If neither oldest nor timespan is specified, the default time interval will be
        #   (youngest - 4 hours, youngest].
        # @param [String] window
        #   The sampling window. At most one data point will be returned for each window
        #   in the requested time interval. This parameter is only valid for non-
        #   cumulative metric types. Units:
        #   - m: minute
        #   - h: hour
        #   - d: day
        #   - w: week  Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
        #   not allowed; you should use 17d instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudmonitoringV2beta2::ListTimeseriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudmonitoringV2beta2::ListTimeseriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_timeseries(project, metric, youngest, list_timeseries_request_object = nil, aggregator: nil, count: nil, labels: nil, oldest: nil, page_token: nil, timespan: nil, window: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/timeseries/{metric}', options)
          command.request_representation = Google::Apis::CloudmonitoringV2beta2::ListTimeseriesRequest::Representation
          command.request_object = list_timeseries_request_object
          command.response_representation = Google::Apis::CloudmonitoringV2beta2::ListTimeseriesResponse::Representation
          command.response_class = Google::Apis::CloudmonitoringV2beta2::ListTimeseriesResponse
          command.params['project'] = project unless project.nil?
          command.params['metric'] = metric unless metric.nil?
          command.query['aggregator'] = aggregator unless aggregator.nil?
          command.query['count'] = count unless count.nil?
          command.query['labels'] = labels unless labels.nil?
          command.query['oldest'] = oldest unless oldest.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['timespan'] = timespan unless timespan.nil?
          command.query['window'] = window unless window.nil?
          command.query['youngest'] = youngest unless youngest.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Put data points to one or more time series for one or more metrics. If a time
        # series does not exist, a new time series will be created. It is not allowed to
        # write a time series point that is older than the existing youngest point of
        # that time series. Points that are older than the existing youngest point of
        # that time series will be discarded silently. Therefore, users should make sure
        # that points of a time series are written sequentially in the order of their
        # end time.
        # @param [String] project
        #   The project ID. The value can be the numeric project ID or string-based
        #   project name.
        # @param [Google::Apis::CloudmonitoringV2beta2::WriteTimeseriesRequest] write_timeseries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudmonitoringV2beta2::WriteTimeseriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudmonitoringV2beta2::WriteTimeseriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_timeseries(project, write_timeseries_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/timeseries:write', options)
          command.request_representation = Google::Apis::CloudmonitoringV2beta2::WriteTimeseriesRequest::Representation
          command.request_object = write_timeseries_request_object
          command.response_representation = Google::Apis::CloudmonitoringV2beta2::WriteTimeseriesResponse::Representation
          command.response_class = Google::Apis::CloudmonitoringV2beta2::WriteTimeseriesResponse
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the descriptors of the time series that match the metric and labels
        # values and that have data points in the interval. Large responses are
        # paginated; use the nextPageToken returned in the response to request
        # subsequent pages of results by setting the pageToken query parameter to the
        # value of the nextPageToken.
        # @param [String] project
        #   The project ID to which this time series belongs. The value can be the numeric
        #   project ID or string-based project name.
        # @param [String] metric
        #   Metric names are protocol-free URLs as listed in the Supported Metrics page.
        #   For example, compute.googleapis.com/instance/disk/read_ops_count.
        # @param [String] youngest
        #   End of the time interval (inclusive), which is expressed as an RFC 3339
        #   timestamp.
        # @param [Google::Apis::CloudmonitoringV2beta2::ListTimeseriesDescriptorsRequest] list_timeseries_descriptors_request_object
        # @param [String] aggregator
        #   The aggregation function that will reduce the data points in each window to a
        #   single point. This parameter is only valid for non-cumulative metrics with a
        #   value type of INT64 or DOUBLE.
        # @param [Fixnum] count
        #   Maximum number of time series descriptors per page. Used for pagination. If
        #   not specified, count = 100.
        # @param [Array<String>, String] labels
        #   A collection of labels for the matching time series, which are represented as:
        #   
        #   - key==value: key equals the value
        #   - key=~value: key regex matches the value
        #   - key!=value: key does not equal the value
        #   - key!~value: key regex does not match the value  For example, to list all of
        #   the time series descriptors for the region us-central1, you could specify:
        #   label=cloud.googleapis.com%2Flocation=~us-central1.*
        # @param [String] oldest
        #   Start of the time interval (exclusive), which is expressed as an RFC 3339
        #   timestamp. If neither oldest nor timespan is specified, the default time
        #   interval will be (youngest - 4 hours, youngest]
        # @param [String] page_token
        #   The pagination token, which is used to page through large result sets. Set
        #   this value to the value of the nextPageToken to retrieve the next page of
        #   results.
        # @param [String] timespan
        #   Length of the time interval to query, which is an alternative way to declare
        #   the interval: (youngest - timespan, youngest]. The timespan and oldest
        #   parameters should not be used together. Units:
        #   - s: second
        #   - m: minute
        #   - h: hour
        #   - d: day
        #   - w: week  Examples: 2s, 3m, 4w. Only one unit is allowed, for example: 2w3d
        #   is not allowed; you should use 17d instead.
        #   If neither oldest nor timespan is specified, the default time interval will be
        #   (youngest - 4 hours, youngest].
        # @param [String] window
        #   The sampling window. At most one data point will be returned for each window
        #   in the requested time interval. This parameter is only valid for non-
        #   cumulative metric types. Units:
        #   - m: minute
        #   - h: hour
        #   - d: day
        #   - w: week  Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
        #   not allowed; you should use 17d instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudmonitoringV2beta2::ListTimeseriesDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudmonitoringV2beta2::ListTimeseriesDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_timeseries_descriptors(project, metric, youngest, list_timeseries_descriptors_request_object = nil, aggregator: nil, count: nil, labels: nil, oldest: nil, page_token: nil, timespan: nil, window: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/timeseriesDescriptors/{metric}', options)
          command.request_representation = Google::Apis::CloudmonitoringV2beta2::ListTimeseriesDescriptorsRequest::Representation
          command.request_object = list_timeseries_descriptors_request_object
          command.response_representation = Google::Apis::CloudmonitoringV2beta2::ListTimeseriesDescriptorsResponse::Representation
          command.response_class = Google::Apis::CloudmonitoringV2beta2::ListTimeseriesDescriptorsResponse
          command.params['project'] = project unless project.nil?
          command.params['metric'] = metric unless metric.nil?
          command.query['aggregator'] = aggregator unless aggregator.nil?
          command.query['count'] = count unless count.nil?
          command.query['labels'] = labels unless labels.nil?
          command.query['oldest'] = oldest unless oldest.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['timespan'] = timespan unless timespan.nil?
          command.query['window'] = window unless window.nil?
          command.query['youngest'] = youngest unless youngest.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
