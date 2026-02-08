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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ContactcenterinsightsV1
      # Contact Center AI Insights API
      #
      # 
      #
      # @example
      #    require 'google/apis/contactcenterinsights_v1'
      #
      #    Contactcenterinsights = Google::Apis::ContactcenterinsightsV1 # Alias the module
      #    service = Contactcenterinsights::ContactcenterinsightsService.new
      #
      # @see https://cloud.google.com/contact-center/insights/docs
      class ContactcenterinsightsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://contactcenterinsights.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-contactcenterinsights_v1',
                client_version: Google::Apis::ContactcenterinsightsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Delete feedback labels in bulk using a filter.
        # @param [String] parent
        #   Required. The parent resource for new feedback labels.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest] google_cloud_contactcenterinsights_v1_bulk_delete_feedback_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_delete_feedback_labels(parent, google_cloud_contactcenterinsights_v1_bulk_delete_feedback_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:bulkDeleteFeedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_delete_feedback_labels_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download feedback labels in bulk from an external source. Currently supports
        # exporting Quality AI example conversations with transcripts and question
        # bodies.
        # @param [String] parent
        #   Required. The parent resource for new feedback labels.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest] google_cloud_contactcenterinsights_v1_bulk_download_feedback_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_download_feedback_labels(parent, google_cloud_contactcenterinsights_v1_bulk_download_feedback_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:bulkDownloadFeedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_download_feedback_labels_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upload feedback labels from an external source in bulk. Currently supports
        # labeling Quality AI example conversations.
        # @param [String] parent
        #   Required. The parent resource for new feedback labels.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest] google_cloud_contactcenterinsights_v1_bulk_upload_feedback_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_upload_feedback_labels(parent, google_cloud_contactcenterinsights_v1_bulk_upload_feedback_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:bulkUploadFeedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_upload_feedback_labels_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Natural language based Insights which powers the next generation of dashboards
        # in Insights. Next generation of QueryMetrics.
        # @param [String] location
        #   Required. The location of the data. "projects/`project`/locations/`location`"
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest] google_cloud_contactcenterinsights_v1_generative_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generative_project_location_insights(location, google_cloud_contactcenterinsights_v1_generative_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:generativeInsights', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_generative_insights_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets correlation config.
        # @param [String] name
        #   Required. The name of the correlation config resource to get. Format: projects/
        #   `project`/locations/`location`/correlationConfig
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_correlation_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets location-level encryption key specification.
        # @param [String] name
        #   Required. The name of the encryption spec resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_encryption_spec(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets project-level settings.
        # @param [String] name
        #   Required. The name of the settings resource to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all feedback labels by project number.
        # @param [String] parent
        #   Required. The parent resource of all feedback labels per project.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset in the entire
        #   project. Supports disjunctions (OR) and conjunctions (AND). Supported fields: *
        #   `issue_model_id` * `qa_question_id` * `min_create_time` * `max_create_time` *
        #   `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        #   TOPIC_MODELING
        # @param [Fixnum] page_size
        #   Optional. The maximum number of feedback labels to return in the response. A
        #   valid page size ranges from 0 to 100,000 inclusive. If the page size is zero
        #   or unspecified, a default page size of 100 will be chosen. Note that a call
        #   might return fewer results than the requested page size.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAllFeedbackLabelsResponse`. This
        #   value indicates that this is a continuation of a prior `ListAllFeedbackLabels`
        #   call and that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_all_feedback_labels(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:listAllFeedbackLabels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Query metrics.
        # @param [String] location
        #   Required. The location of the data. "projects/`project`/locations/`location`"
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsRequest] google_cloud_contactcenterinsights_v1_query_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_metrics(location, google_cloud_contactcenterinsights_v1_query_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:queryMetrics', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_query_metrics_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a summary of predefined performance metrics for a set of
        # conversations. Conversations can be specified by specifying a time window and
        # an agent id, for now. The summary includes a comparison of metrics computed
        # for conversations in the previous time period, and also a comparison with
        # peers in the same time period.
        # @param [String] parent
        #   Required. The parent resource of the conversations to derive performance stats
        #   from. "projects/`project`/locations/`location`"
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest] google_cloud_contactcenterinsights_v1_query_performance_overview_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_performance_overview(parent, google_cloud_contactcenterinsights_v1_query_performance_overview_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:queryPerformanceOverview', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_query_performance_overview_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests correlation config on a conversation.
        # @param [String] location
        #   Required. The location to test correlation config. Format: projects/`project`/
        #   locations/`location`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest] google_cloud_contactcenterinsights_v1_test_correlation_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_correlation_config(location, google_cloud_contactcenterinsights_v1_test_correlation_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:testCorrelationConfig', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_test_correlation_config_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates correlation config.
        # @param [String] name
        #   Immutable. Identifier. The resource name of the correlation config. Format:
        #   projects/`project`/locations/`location`/correlationConfig
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig] google_cloud_contactcenterinsights_v1_correlation_config_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_correlation_config(name, google_cloud_contactcenterinsights_v1_correlation_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_correlation_config_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CorrelationConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates project-level settings.
        # @param [String] name
        #   Immutable. The resource name of the settings resource. Format: projects/`
        #   project`/locations/`location`/settings
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings] google_cloud_contactcenterinsights_v1_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_settings(name, google_cloud_contactcenterinsights_v1_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_settings_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Settings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a analysis rule.
        # @param [String] parent
        #   Required. The parent resource of the analysis rule. Required. The location to
        #   create a analysis rule for. Format: `projects//locations/` or `projects//
        #   locations/`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule] google_cloud_contactcenterinsights_v1_analysis_rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_analysis_rule(parent, google_cloud_contactcenterinsights_v1_analysis_rule_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/analysisRules', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_analysis_rule_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a analysis rule.
        # @param [String] name
        #   Required. The name of the analysis rule to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_analysis_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a analysis rule.
        # @param [String] name
        #   Required. The name of the AnalysisRule to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_analysis_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists analysis rules.
        # @param [String] parent
        #   Required. The parent resource of the analysis rules.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of analysis rule to return in the response. If
        #   this value is zero, the service will select a default size. A call may return
        #   fewer objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAnalysisRulesResponse`;
        #   indicates that this is a continuation of a prior `ListAnalysisRules` call and
        #   the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_analysis_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/analysisRules', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a analysis rule.
        # @param [String] name
        #   Identifier. The resource name of the analysis rule. Format: projects/`project`/
        #   locations/`location`/analysisRules/`analysis_rule`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule] google_cloud_contactcenterinsights_v1_analysis_rule_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. If the update_mask is not provided,
        #   the update will be applied to all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_analysis_rule(name, google_cloud_contactcenterinsights_v1_analysis_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_analysis_rule_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an assessment rule.
        # @param [String] parent
        #   Required. The parent resource of the assessment rule. Required. The location
        #   to create a assessment rule for. Format: `projects//locations/` or `projects//
        #   locations/`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule] google_cloud_contactcenterinsights_v1_assessment_rule_object
        # @param [String] assessment_rule_id
        #   Optional. A unique ID for the new AssessmentRule. This ID will become the
        #   final component of the AssessmentRule's resource name. If no ID is specified,
        #   a server-generated ID will be used. This value should be 4-64 characters and
        #   must match the regular expression `^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_assessment_rule(parent, google_cloud_contactcenterinsights_v1_assessment_rule_object = nil, assessment_rule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assessmentRules', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_assessment_rule_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule
          command.params['parent'] = parent unless parent.nil?
          command.query['assessmentRuleId'] = assessment_rule_id unless assessment_rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an assessment rule.
        # @param [String] name
        #   Required. The name of the assessment rule to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_assessment_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an assessment rule.
        # @param [String] name
        #   Required. The name of the assessment rule to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_assessment_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists assessment rules.
        # @param [String] parent
        #   Required. The parent resource of the assessment rules.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of assessment rule to return in the response. If
        #   this value is zero, the service will select a default size. A call may return
        #   fewer objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAssessmentRulesResponse`;
        #   indicates that this is a continuation of a prior `ListAssessmentRules` call
        #   and the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_assessment_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assessmentRules', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an assessment rule.
        # @param [String] name
        #   Identifier. The resource name of the assessment rule. Format: projects/`
        #   project`/locations/`location`/assessmentRules/`assessment_rule`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule] google_cloud_contactcenterinsights_v1_assessment_rule_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. If the update_mask is not provided,
        #   the update will be applied to all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_assessment_rule(name, google_cloud_contactcenterinsights_v1_assessment_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_assessment_rule_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create AuthorizedViewSet
        # @param [String] parent
        #   Required. The parent resource of the AuthorizedViewSet.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet] google_cloud_contactcenterinsights_v1_authorized_view_set_object
        # @param [String] authorized_view_set_id
        #   Optional. A unique ID for the new AuthorizedViewSet. This ID will become the
        #   final component of the AuthorizedViewSet's resource name. If no ID is
        #   specified, a server-generated ID will be used. This value should be 4-64
        #   characters and must match the regular expression `^[a-z]([a-z0-9-]`0,61`[a-z0-
        #   9])?$`. See https://google.aip.dev/122#resource-id-segments
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorized_view_set(parent, google_cloud_contactcenterinsights_v1_authorized_view_set_object = nil, authorized_view_set_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/authorizedViewSets', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_authorized_view_set_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizedViewSetId'] = authorized_view_set_id unless authorized_view_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AuthorizedViewSet.
        # @param [String] name
        #   Required. The name of the AuthorizedViewSet to delete.
        # @param [Boolean] force
        #   Optional. If set to true, all of this AuthorizedViewSet's child resources will
        #   also be deleted. Otherwise, the request will only succeed if it has none.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorized_view_set(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get AuthorizedViewSet
        # @param [String] name
        #   Required. The name of the AuthorizedViewSet to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List AuthorizedViewSets
        # @param [String] parent
        #   Required. The parent resource of the AuthorizedViewSets.
        # @param [String] filter
        #   Optional. The filter expression to filter authorized view sets listed in the
        #   response.
        # @param [String] order_by
        #   Optional. The order by expression to order authorized view sets listed in the
        #   response.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of view sets to return in the response. If the
        #   value is zero, the service will select a default size. A call might return
        #   fewer objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAuthorizedViewSetsResponse`.
        #   This value indicates that this is a continuation of a prior `
        #   ListAuthorizedViewSets` call and that the system should return the next page
        #   of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_sets(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authorizedViewSets', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an AuthorizedViewSet.
        # @param [String] name
        #   Identifier. The resource name of the AuthorizedViewSet. Format: projects/`
        #   project`/locations/`location`/authorizedViewSets/`authorized_view_set`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet] google_cloud_contactcenterinsights_v1_authorized_view_set_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. All possible fields can be updated
        #   by passing `*`, or a subset of the following updateable fields can be provided:
        #   * `display_name`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authorized_view_set(name, google_cloud_contactcenterinsights_v1_authorized_view_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_authorized_view_set_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create AuthorizedView
        # @param [String] parent
        #   Required. The parent resource of the AuthorizedView.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView] google_cloud_contactcenterinsights_v1_authorized_view_object
        # @param [String] authorized_view_id
        #   Optional. A unique ID for the new AuthorizedView. This ID will become the
        #   final component of the AuthorizedView's resource name. If no ID is specified,
        #   a server-generated ID will be used. This value should be 4-64 characters and
        #   must match the regular expression `^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$`. See
        #   https://google.aip.dev/122#resource-id-segments
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorized_view_set_authorized_view(parent, google_cloud_contactcenterinsights_v1_authorized_view_object = nil, authorized_view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/authorizedViews', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_authorized_view_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizedViewId'] = authorized_view_id unless authorized_view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AuthorizedView.
        # @param [String] name
        #   Required. The name of the AuthorizedView to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorized_view_set_authorized_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Natural language based Insights which powers the next generation of dashboards
        # in Insights. Next generation of QueryMetrics.
        # @param [String] location
        #   Required. The location of the data. "projects/`project`/locations/`location`"
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest] google_cloud_contactcenterinsights_v1_generative_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generative_project_location_authorized_view_set_authorized_view_insights(location, google_cloud_contactcenterinsights_v1_generative_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:generativeInsights', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_generative_insights_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get AuthorizedView
        # @param [String] name
        #   Required. The name of the AuthorizedView to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set_authorized_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set_authorized_view_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List AuthorizedViewSets
        # @param [String] parent
        #   Required. The parent resource of the AuthorizedViews. If the parent is set to `
        #   -`, all AuthorizedViews under the location will be returned.
        # @param [String] filter
        #   Optional. The filter expression to filter authorized views listed in the
        #   response.
        # @param [String] order_by
        #   Optional. The order by expression to order authorized views listed in the
        #   response.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of view to return in the response. If the value
        #   is zero, the service will select a default size. A call might return fewer
        #   objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAuthorizedViewsResponse`. This
        #   value indicates that this is a continuation of a prior `ListAuthorizedViews`
        #   call and that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_set_authorized_views(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authorizedViews', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an AuthorizedView.
        # @param [String] name
        #   Identifier. The resource name of the AuthorizedView. Format: projects/`project`
        #   /locations/`location`/authorizedViewSets/`authorized_view_set`/authorizedViews/
        #   `authorized_view`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView] google_cloud_contactcenterinsights_v1_authorized_view_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. All possible fields can be updated
        #   by passing `*`, or a subset of the following updateable fields can be provided:
        #   * `conversation_filter` * `display_name`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authorized_view_set_authorized_view(name, google_cloud_contactcenterinsights_v1_authorized_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_authorized_view_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Query metrics.
        # @param [String] location
        #   Required. The location of the data. "projects/`project`/locations/`location`"
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsRequest] google_cloud_contactcenterinsights_v1_query_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_authorized_view_set_authorized_view_metrics(location, google_cloud_contactcenterinsights_v1_query_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:queryMetrics', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_query_metrics_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a summary of predefined performance metrics for a set of
        # conversations. Conversations can be specified by specifying a time window and
        # an agent id, for now. The summary includes a comparison of metrics computed
        # for conversations in the previous time period, and also a comparison with
        # peers in the same time period.
        # @param [String] parent
        #   Required. The parent resource of the conversations to derive performance stats
        #   from. "projects/`project`/locations/`location`"
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest] google_cloud_contactcenterinsights_v1_query_performance_overview_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_authorized_view_set_authorized_view_performance_overview(parent, google_cloud_contactcenterinsights_v1_query_performance_overview_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:queryPerformanceOverview', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_query_performance_overview_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchAuthorizedViewSets
        # @param [String] parent
        #   Required. The parent resource of the AuthorizedViews. If the parent is set to `
        #   -`, all AuthorizedViews under the location will be returned.
        # @param [String] order_by
        #   Optional. The order by expression to order authorized views listed in the
        #   response.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of view to return in the response. If the value
        #   is zero, the service will select a default size. A call might return fewer
        #   objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAuthorizedViewsResponse`. This
        #   value indicates that this is a continuation of a prior `ListAuthorizedViews`
        #   call and that the system should return the next page of data.
        # @param [String] query
        #   Optional. The query expression to search authorized views.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_authorized_view_set_authorized_views(parent, order_by: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authorizedViews:search', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_authorized_view_set_authorized_view_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_authorized_view_set_authorized_view_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets conversation statistics.
        # @param [String] location
        #   Required. The location of the conversations.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. This field is useful for
        #   getting statistics about conversations with specific properties.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_authorized_view_set_authorized_view_conversation_stats(location, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+location}/conversations:calculateStats', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse
          command.params['location'] = location unless location.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a conversation.
        # @param [String] name
        #   Required. The name of the conversation to delete.
        # @param [Boolean] force
        #   If set to true, all of this conversation's analyses will also be deleted.
        #   Otherwise, the request will only succeed if the conversation has no analyses.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorized_view_set_authorized_view_conversation(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the signed URI for the audio for the given conversation.
        # @param [String] name
        #   Required. The name of the conversation to sign.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_authorized_view_set_authorized_view_conversation_signed_audio(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:generateSignedAudio', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a conversation.
        # @param [String] name
        #   Required. The name of the conversation to get.
        # @param [String] view
        #   The level of details of the conversation. Default is `FULL`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set_authorized_view_conversation(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversations.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying
        #   conversations with specific properties.
        # @param [String] order_by
        #   Optional. The attribute by which to order conversations in the response. If
        #   empty, conversations will be ordered by descending creation time. Supported
        #   values are one of the following: * create_time * customer_satisfaction_rating *
        #   duration * latest_analysis * start_time * turn_count The default sort order
        #   is ascending. To specify order, append `asc` or `desc` (`create_time desc`).
        #   For more details, see [Google AIPs Ordering](https://google.aip.dev/132#
        #   ordering).
        # @param [Fixnum] page_size
        #   The maximum number of conversations to return in the response. A valid page
        #   size ranges from 0 to 100,000 inclusive. If the page size is zero or
        #   unspecified, a default page size of 100 will be chosen. Note that a call might
        #   return fewer results than the requested page size.
        # @param [String] page_token
        #   The value returned by the last `ListConversationsResponse`. This value
        #   indicates that this is a continuation of a prior `ListConversations` call and
        #   that the system should return the next page of data.
        # @param [String] view
        #   The level of details of the conversation. Default is `BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_set_authorized_view_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Appeal an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to appeal.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AppealAssessmentRequest] google_cloud_contactcenterinsights_v1_appeal_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def appeal_project_location_authorized_view_set_authorized_view_conversation_assessment(name, google_cloud_contactcenterinsights_v1_appeal_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:appeal', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AppealAssessmentRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_appeal_assessment_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create Assessment.
        # @param [String] parent
        #   Required. The parent resource of the assessment.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] google_cloud_contactcenterinsights_v1_assessment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorized_view_set_authorized_view_conversation_assessment(parent, google_cloud_contactcenterinsights_v1_assessment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assessments', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_assessment_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to delete.
        # @param [Boolean] force
        #   Optional. If set to true, all of this assessment's notes will also be deleted.
        #   Otherwise, the request will only succeed if it has no notes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorized_view_set_authorized_view_conversation_assessment(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finalize an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to finalize.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest] google_cloud_contactcenterinsights_v1_finalize_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_project_location_authorized_view_set_authorized_view_conversation_assessment(name, google_cloud_contactcenterinsights_v1_finalize_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:finalize', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_finalize_assessment_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get Assessment.
        # @param [String] name
        #   Required. The name of the assessment to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set_authorized_view_conversation_assessment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Assessments.
        # @param [String] parent
        #   Required. The parent resource of the assessments. To list all assessments in a
        #   location, substitute the conversation ID with a '-' character.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Supported filters
        #   include: * `state` - The state of the assessment * `agent_info.agent_id` - The
        #   ID of the agent the assessment is for
        # @param [Fixnum] page_size
        #   The maximum number of assessments to list. If zero, the service will select a
        #   default size. A call may return fewer objects than requested. A non-empty `
        #   next_page_token` in the response indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAssessmentRulesResponse`;
        #   indicates that this is a continuation of a prior `ListAssessmentRules` call
        #   and the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_set_authorized_view_conversation_assessments(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assessments', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publish an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to publish.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PublishAssessmentRequest] google_cloud_contactcenterinsights_v1_publish_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_project_location_authorized_view_set_authorized_view_conversation_assessment(name, google_cloud_contactcenterinsights_v1_publish_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:publish', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PublishAssessmentRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_publish_assessment_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create Note.
        # @param [String] parent
        #   Required. The parent resource of the note.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] google_cloud_contactcenterinsights_v1_note_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorized_view_set_authorized_view_conversation_assessment_note(parent, google_cloud_contactcenterinsights_v1_note_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/notes', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_note_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Note.
        # @param [String] name
        #   Required. The name of the note to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorized_view_set_authorized_view_conversation_assessment_note(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Notes.
        # @param [String] parent
        #   Required. The parent resource of the notes.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of notes to return in the response. If zero the
        #   service will select a default size. A call might return fewer objects than
        #   requested. A non-empty `next_page_token` in the response indicates that more
        #   data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListNotesResponse`. This value
        #   indicates that this is a continuation of a prior `ListNotes` call and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_set_authorized_view_conversation_assessment_notes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/notes', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Note.
        # @param [String] name
        #   Identifier. The resource name of the note. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`/assessments/`assessment`/
        #   notes/`note`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] google_cloud_contactcenterinsights_v1_note_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. If the update_mask is empty, all
        #   updateable fields will be updated. Acceptable fields include: * `content`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authorized_view_set_authorized_view_conversation_assessment_note(name, google_cloud_contactcenterinsights_v1_note_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_note_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create feedback label.
        # @param [String] parent
        #   Required. The parent resource of the feedback label.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] google_cloud_contactcenterinsights_v1_feedback_label_object
        # @param [String] feedback_label_id
        #   Optional. The ID of the feedback label to create. If one is not specified it
        #   will be generated by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorized_view_set_authorized_view_conversation_feedback_label(parent, google_cloud_contactcenterinsights_v1_feedback_label_object = nil, feedback_label_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/feedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_feedback_label_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['parent'] = parent unless parent.nil?
          command.query['feedbackLabelId'] = feedback_label_id unless feedback_label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete feedback label.
        # @param [String] name
        #   Required. The name of the feedback label to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorized_view_set_authorized_view_conversation_feedback_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get feedback label.
        # @param [String] name
        #   Required. The name of the feedback label to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set_authorized_view_conversation_feedback_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List feedback labels.
        # @param [String] parent
        #   Required. The parent resource of the feedback labels.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Supports
        #   disjunctions (OR) and conjunctions (AND). Automatically sorts by conversation
        #   ID. To sort by all feedback labels in a project see ListAllFeedbackLabels.
        #   Supported fields: * `issue_model_id` * `qa_question_id` * `qa_scorecard_id` * `
        #   min_create_time` * `max_create_time` * `min_update_time` * `max_update_time` *
        #   `feedback_label_type`: QUALITY_AI, TOPIC_MODELING
        # @param [Fixnum] page_size
        #   Optional. The maximum number of feedback labels to return in the response. A
        #   valid page size ranges from 0 to 100,000 inclusive. If the page size is zero
        #   or unspecified, a default page size of 100 will be chosen. Note that a call
        #   might return fewer results than the requested page size.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListFeedbackLabelsResponse`. This
        #   value indicates that this is a continuation of a prior `ListFeedbackLabels`
        #   call and that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_set_authorized_view_conversation_feedback_labels(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/feedbackLabels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update feedback label.
        # @param [String] name
        #   Immutable. Resource name of the FeedbackLabel. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`/feedbackLabels/`
        #   feedback_label`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] google_cloud_contactcenterinsights_v1_feedback_label_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authorized_view_set_authorized_view_conversation_feedback_label(name, google_cloud_contactcenterinsights_v1_feedback_label_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_feedback_label_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_authorized_view_set_authorized_view_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorized_view_set_authorized_view_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorized_view_set_authorized_view_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an auto labeling rule.
        # @param [String] parent
        #   Required. The project and location to create the auto labeling rule in. Format:
        #   projects/`project`/locations/`location`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule] google_cloud_contactcenterinsights_v1_auto_labeling_rule_object
        # @param [String] auto_labeling_rule_id
        #   Required. The ID to use for the auto labeling rule, which will become the
        #   final component of the auto labeling rule's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_auto_labeling_rule(parent, google_cloud_contactcenterinsights_v1_auto_labeling_rule_object = nil, auto_labeling_rule_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/autoLabelingRules', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_auto_labeling_rule_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule
          command.params['parent'] = parent unless parent.nil?
          command.query['autoLabelingRuleId'] = auto_labeling_rule_id unless auto_labeling_rule_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an auto labeling rule.
        # @param [String] name
        #   Required. The name of the auto labeling rule to delete. Format: projects/`
        #   project`/locations/`location`/autoLabelingRules/`auto_labeling_rule`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_auto_labeling_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an auto labeling rule.
        # @param [String] name
        #   Required. The name of the auto labeling rule to get. Format: projects/`project`
        #   /locations/`location`/autoLabelingRules/`auto_labeling_rule`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_auto_labeling_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists auto labeling rules.
        # @param [String] parent
        #   Required. The project and location to list auto labeling rules from. Format:
        #   projects/`project`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of auto labeling rules to return in a single
        #   response. If unspecified, at most 100 rules will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_auto_labeling_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/autoLabelingRules', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an auto labeling rule.
        # @param [String] name
        #   Identifier. The resource name of the auto-labeling rule. Format: projects/`
        #   project`/locations/`location`/autoLabelingRules/`auto_labeling_rule`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule] google_cloud_contactcenterinsights_v1_auto_labeling_rule_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_auto_labeling_rule(name, google_cloud_contactcenterinsights_v1_auto_labeling_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_auto_labeling_rule_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AutoLabelingRule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests auto labeling rules against a conversation.
        # @param [String] parent
        #   Required. The parent project and location. Format: projects/`project`/
        #   locations/`location`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest] google_cloud_contactcenterinsights_v1_test_auto_labeling_rule_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_auto_labeling_rule(parent, google_cloud_contactcenterinsights_v1_test_auto_labeling_rule_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/autoLabelingRules:test', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_test_auto_labeling_rule_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes multiple conversations in a single request.
        # @param [String] parent
        #   Required. The parent resource to create analyses in.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest] google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_conversation_analyze(parent, google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:bulkAnalyze', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes multiple conversations in a single request.
        # @param [String] parent
        #   Required. The parent resource to delete conversations from. Format: projects/`
        #   project`/locations/`location`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest] google_cloud_contactcenterinsights_v1_bulk_delete_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_conversation_delete(parent, google_cloud_contactcenterinsights_v1_bulk_delete_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:bulkDelete', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_delete_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets conversation statistics.
        # @param [String] location
        #   Required. The location of the conversations.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. This field is useful for
        #   getting statistics about conversations with specific properties.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_conversation_stats(location, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+location}/conversations:calculateStats', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse
          command.params['location'] = location unless location.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a conversation. Note that this method does not support audio
        # transcription or redaction. Use `conversations.upload` instead.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] google_cloud_contactcenterinsights_v1_conversation_object
        # @param [String] conversation_id
        #   A unique ID for the new conversation. This ID will become the final component
        #   of the conversation's resource name. If no ID is specified, a server-generated
        #   ID will be used. This value should be 4-64 characters and must match the
        #   regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation(parent, google_cloud_contactcenterinsights_v1_conversation_object = nil, conversation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_conversation_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['parent'] = parent unless parent.nil?
          command.query['conversationId'] = conversation_id unless conversation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a conversation.
        # @param [String] name
        #   Required. The name of the conversation to delete.
        # @param [Boolean] force
        #   If set to true, all of this conversation's analyses will also be deleted.
        #   Otherwise, the request will only succeed if the conversation has no analyses.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the signed URI for the audio for the given conversation.
        # @param [String] name
        #   Required. The name of the conversation to sign.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_conversation_signed_audio(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:generateSignedAudio', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a conversation.
        # @param [String] name
        #   Required. The name of the conversation to get.
        # @param [String] view
        #   The level of details of the conversation. Default is `FULL`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports conversations and processes them according to the user's configuration.
        # @param [String] parent
        #   Required. The parent resource for new conversations.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest] google_cloud_contactcenterinsights_v1_ingest_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_project_location_conversation(parent, google_cloud_contactcenterinsights_v1_ingest_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:ingest', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_ingest_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversations.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying
        #   conversations with specific properties.
        # @param [String] order_by
        #   Optional. The attribute by which to order conversations in the response. If
        #   empty, conversations will be ordered by descending creation time. Supported
        #   values are one of the following: * create_time * customer_satisfaction_rating *
        #   duration * latest_analysis * start_time * turn_count The default sort order
        #   is ascending. To specify order, append `asc` or `desc` (`create_time desc`).
        #   For more details, see [Google AIPs Ordering](https://google.aip.dev/132#
        #   ordering).
        # @param [Fixnum] page_size
        #   The maximum number of conversations to return in the response. A valid page
        #   size ranges from 0 to 100,000 inclusive. If the page size is zero or
        #   unspecified, a default page size of 100 will be chosen. Note that a call might
        #   return fewer results than the requested page size.
        # @param [String] page_token
        #   The value returned by the last `ListConversationsResponse`. This value
        #   indicates that this is a continuation of a prior `ListConversations` call and
        #   that the system should return the next page of data.
        # @param [String] view
        #   The level of details of the conversation. Default is `BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a conversation.
        # @param [String] name
        #   Immutable. The resource name of the conversation. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] google_cloud_contactcenterinsights_v1_conversation_object
        # @param [Boolean] allow_missing
        #   Optional. Defaults to false. If set to true, and the conversation is not found,
        #   a new conversation will be created. In this situation, `update_mask` is
        #   ignored.
        # @param [Boolean] conversation_auto_labeling_update_config_allow_auto_labeling_update
        #   Optional. If set to true, the conversation will be updated with auto labeling
        #   results.
        # @param [String] update_mask
        #   The list of fields to be updated. All possible fields can be updated by
        #   passing `*`, or a subset of the following updateable fields can be provided: *
        #   `agent_id` * `language_code` * `labels` * `metadata` * `quality_metadata` * `
        #   call_metadata` * `start_time` * `expire_time` or `ttl` * `data_source.
        #   gcs_source.audio_uri` or * `data_source.dialogflow_source.audio_uri` * `
        #   data_source.screen_recordings`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation(name, google_cloud_contactcenterinsights_v1_conversation_object = nil, allow_missing: nil, conversation_auto_labeling_update_config_allow_auto_labeling_update: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_conversation_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['conversationAutoLabelingUpdateConfig.allowAutoLabelingUpdate'] = conversation_auto_labeling_update_config_allow_auto_labeling_update unless conversation_auto_labeling_update_config_allow_auto_labeling_update.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Samples conversations based on user configuration and handles the sampled
        # conversations for different use cases.
        # @param [String] parent
        #   Required. The parent resource of the dataset.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest] google_cloud_contactcenterinsights_v1_sample_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sample_project_location_conversation(parent, google_cloud_contactcenterinsights_v1_sample_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:sample', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_sample_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a long-running conversation upload operation. This method differs from `
        # CreateConversation` by allowing audio transcription and optional DLP redaction.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UploadConversationRequest] google_cloud_contactcenterinsights_v1_upload_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_project_location_conversation(parent, google_cloud_contactcenterinsights_v1_upload_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:upload', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UploadConversationRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_upload_conversation_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an analysis. The long running operation is done when the analysis has
        # completed.
        # @param [String] parent
        #   Required. The parent resource of the analysis.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis] google_cloud_contactcenterinsights_v1_analysis_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_analysis(parent, google_cloud_contactcenterinsights_v1_analysis_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/analyses', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_analysis_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an analysis.
        # @param [String] name
        #   Required. The name of the analysis to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_analysis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an analysis.
        # @param [String] name
        #   Required. The name of the analysis to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_analysis(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists analyses.
        # @param [String] parent
        #   Required. The parent resource of the analyses.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying
        #   conversations with specific properties.
        # @param [Fixnum] page_size
        #   The maximum number of analyses to return in the response. If this value is
        #   zero, the service will select a default size. A call might return fewer
        #   objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   The value returned by the last `ListAnalysesResponse`; indicates that this is
        #   a continuation of a prior `ListAnalyses` call and the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_analyses(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/analyses', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAnalysesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Appeal an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to appeal.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AppealAssessmentRequest] google_cloud_contactcenterinsights_v1_appeal_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def appeal_project_location_conversation_assessment(name, google_cloud_contactcenterinsights_v1_appeal_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:appeal', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AppealAssessmentRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_appeal_assessment_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create Assessment.
        # @param [String] parent
        #   Required. The parent resource of the assessment.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] google_cloud_contactcenterinsights_v1_assessment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_assessment(parent, google_cloud_contactcenterinsights_v1_assessment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assessments', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_assessment_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to delete.
        # @param [Boolean] force
        #   Optional. If set to true, all of this assessment's notes will also be deleted.
        #   Otherwise, the request will only succeed if it has no notes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_assessment(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finalize an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to finalize.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest] google_cloud_contactcenterinsights_v1_finalize_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_project_location_conversation_assessment(name, google_cloud_contactcenterinsights_v1_finalize_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:finalize', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_finalize_assessment_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get Assessment.
        # @param [String] name
        #   Required. The name of the assessment to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_assessment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Assessments.
        # @param [String] parent
        #   Required. The parent resource of the assessments. To list all assessments in a
        #   location, substitute the conversation ID with a '-' character.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Supported filters
        #   include: * `state` - The state of the assessment * `agent_info.agent_id` - The
        #   ID of the agent the assessment is for
        # @param [Fixnum] page_size
        #   The maximum number of assessments to list. If zero, the service will select a
        #   default size. A call may return fewer objects than requested. A non-empty `
        #   next_page_token` in the response indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAssessmentRulesResponse`;
        #   indicates that this is a continuation of a prior `ListAssessmentRules` call
        #   and the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_assessments(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assessments', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAssessmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publish an Assessment.
        # @param [String] name
        #   Required. The name of the assessment to publish.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PublishAssessmentRequest] google_cloud_contactcenterinsights_v1_publish_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_project_location_conversation_assessment(name, google_cloud_contactcenterinsights_v1_publish_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:publish', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PublishAssessmentRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_publish_assessment_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create Note.
        # @param [String] parent
        #   Required. The parent resource of the note.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] google_cloud_contactcenterinsights_v1_note_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_assessment_note(parent, google_cloud_contactcenterinsights_v1_note_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/notes', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_note_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Note.
        # @param [String] name
        #   Required. The name of the note to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_assessment_note(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Notes.
        # @param [String] parent
        #   Required. The parent resource of the notes.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of notes to return in the response. If zero the
        #   service will select a default size. A call might return fewer objects than
        #   requested. A non-empty `next_page_token` in the response indicates that more
        #   data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListNotesResponse`. This value
        #   indicates that this is a continuation of a prior `ListNotes` call and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_assessment_notes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/notes', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListNotesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Note.
        # @param [String] name
        #   Identifier. The resource name of the note. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`/assessments/`assessment`/
        #   notes/`note`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] google_cloud_contactcenterinsights_v1_note_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. If the update_mask is empty, all
        #   updateable fields will be updated. Acceptable fields include: * `content`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation_assessment_note(name, google_cloud_contactcenterinsights_v1_note_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_note_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create feedback label.
        # @param [String] parent
        #   Required. The parent resource of the feedback label.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] google_cloud_contactcenterinsights_v1_feedback_label_object
        # @param [String] feedback_label_id
        #   Optional. The ID of the feedback label to create. If one is not specified it
        #   will be generated by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_conversation_feedback_label(parent, google_cloud_contactcenterinsights_v1_feedback_label_object = nil, feedback_label_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/feedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_feedback_label_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['parent'] = parent unless parent.nil?
          command.query['feedbackLabelId'] = feedback_label_id unless feedback_label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete feedback label.
        # @param [String] name
        #   Required. The name of the feedback label to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_conversation_feedback_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get feedback label.
        # @param [String] name
        #   Required. The name of the feedback label to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_conversation_feedback_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List feedback labels.
        # @param [String] parent
        #   Required. The parent resource of the feedback labels.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Supports
        #   disjunctions (OR) and conjunctions (AND). Automatically sorts by conversation
        #   ID. To sort by all feedback labels in a project see ListAllFeedbackLabels.
        #   Supported fields: * `issue_model_id` * `qa_question_id` * `qa_scorecard_id` * `
        #   min_create_time` * `max_create_time` * `min_update_time` * `max_update_time` *
        #   `feedback_label_type`: QUALITY_AI, TOPIC_MODELING
        # @param [Fixnum] page_size
        #   Optional. The maximum number of feedback labels to return in the response. A
        #   valid page size ranges from 0 to 100,000 inclusive. If the page size is zero
        #   or unspecified, a default page size of 100 will be chosen. Note that a call
        #   might return fewer results than the requested page size.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListFeedbackLabelsResponse`. This
        #   value indicates that this is a continuation of a prior `ListFeedbackLabels`
        #   call and that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_conversation_feedback_labels(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/feedbackLabels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update feedback label.
        # @param [String] name
        #   Immutable. Resource name of the FeedbackLabel. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`/feedbackLabels/`
        #   feedback_label`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] google_cloud_contactcenterinsights_v1_feedback_label_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_conversation_feedback_label(name, google_cloud_contactcenterinsights_v1_feedback_label_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_feedback_label_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes multiple conversations in a single request.
        # @param [String] parent
        #   Required. The parent resource to create analyses in.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest] google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_conversation_segment_analyze(parent, google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/segments:bulkAnalyze', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_analyze_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Dashboard.
        # @param [String] parent
        #   Required. The parent resource of the dashboard.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard] google_cloud_contactcenterinsights_v1_dashboard_object
        # @param [String] dashboard_id
        #   Optional. A unique ID for the new Dashboard. This ID will become the final
        #   component of the Dashboard's resource name. If no ID is specified, a server-
        #   generated ID will be used. This value should be 4-64 characters and must match
        #   the regular expression `^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dashboard(parent, google_cloud_contactcenterinsights_v1_dashboard_object = nil, dashboard_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dashboards', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_dashboard_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard
          command.params['parent'] = parent unless parent.nil?
          command.query['dashboardId'] = dashboard_id unless dashboard_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Dashboard.
        # @param [String] name
        #   Required. The name of the dashboard to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dashboard(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Dashboard.
        # @param [String] name
        #   Required. The name of the dashboard to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dashboard(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Dashboards.
        # @param [String] parent
        #   Required. The parent resource of the dashboards.
        # @param [String] filter
        #   Optional. The filter expression to filter dashboards listed in the response.
        # @param [String] order_by
        #   Optional. The order by expression to order dashboards listed in the response.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of dashboards to return. The service may return
        #   fewer than this value. The default and maximum value is 100.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListDashboardsResponse`. This value
        #   indicates that this is a continuation of a prior `ListDashboards` call and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDashboardsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDashboardsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dashboards(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dashboards', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDashboardsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDashboardsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Dashboard.
        # @param [String] name
        #   Identifier. Dashboard resource name. Format: projects/`project`/locations/`
        #   location`/dashboards/`dashboard`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard] google_cloud_contactcenterinsights_v1_dashboard_object
        # @param [String] update_mask
        #   Optional. List of fields to be updated. All possible fields can be updated by
        #   passing `*`, or a subset of the following updateable fields can be provided: *
        #   `display_name` * `root_container`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dashboard(name, google_cloud_contactcenterinsights_v1_dashboard_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_dashboard_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dashboard
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Chart.
        # @param [String] parent
        #   Required. The parent resource of the chart.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart] google_cloud_contactcenterinsights_v1_chart_object
        # @param [String] chart_id
        #   Optional. A unique ID for the new Chart. This ID will become the final
        #   component of the Chart's resource name. If no ID is specified, a server-
        #   generated ID will be used. This value should be 4-64 characters and must match
        #   the regular expression `^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dashboard_chart(parent, google_cloud_contactcenterinsights_v1_chart_object = nil, chart_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/charts', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_chart_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart
          command.params['parent'] = parent unless parent.nil?
          command.query['chartId'] = chart_id unless chart_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Chart.
        # @param [String] name
        #   Required. The name of the chart to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dashboard_chart(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Chart.
        # @param [String] name
        #   Required. The name of the chart to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dashboard_chart(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Charts.
        # @param [String] parent
        #   Required. The parent resource of the charts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListChartsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListChartsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dashboard_charts(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/charts', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListChartsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListChartsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Chart.
        # @param [String] name
        #   Identifier. Chart resource name. Format: projects/`project`/locations/`
        #   location`/dashboards/`dashboard`/charts/`chart`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart] google_cloud_contactcenterinsights_v1_chart_object
        # @param [String] update_mask
        #   Optional. List of fields to be updated. All possible fields can be updated by
        #   passing `*`, or a subset of the following updateable fields can be provided: *
        #   `display_name`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dashboard_chart(name, google_cloud_contactcenterinsights_v1_chart_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_chart_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Chart
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete feedback labels in bulk using a filter.
        # @param [String] parent
        #   Required. The parent resource for new feedback labels.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest] google_cloud_contactcenterinsights_v1_bulk_delete_feedback_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_dataset_delete_feedback_labels(parent, google_cloud_contactcenterinsights_v1_bulk_delete_feedback_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:bulkDeleteFeedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_delete_feedback_labels_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download feedback labels in bulk from an external source. Currently supports
        # exporting Quality AI example conversations with transcripts and question
        # bodies.
        # @param [String] parent
        #   Required. The parent resource for new feedback labels.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest] google_cloud_contactcenterinsights_v1_bulk_download_feedback_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_dataset_download_feedback_labels(parent, google_cloud_contactcenterinsights_v1_bulk_download_feedback_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:bulkDownloadFeedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_download_feedback_labels_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upload feedback labels from an external source in bulk. Currently supports
        # labeling Quality AI example conversations.
        # @param [String] parent
        #   Required. The parent resource for new feedback labels.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest] google_cloud_contactcenterinsights_v1_bulk_upload_feedback_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_dataset_upload_feedback_labels(parent, google_cloud_contactcenterinsights_v1_bulk_upload_feedback_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:bulkUploadFeedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_upload_feedback_labels_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a dataset.
        # @param [String] parent
        #   Required. The parent resource of the dataset.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset] google_cloud_contactcenterinsights_v1_dataset_object
        # @param [String] dataset_id
        #   Optional. The ID to use for the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset(parent, google_cloud_contactcenterinsights_v1_dataset_object = nil, dataset_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/datasets', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_dataset_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset
          command.params['parent'] = parent unless parent.nil?
          command.query['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a dataset.
        # @param [String] name
        #   Required. The name of the dataset to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a dataset.
        # @param [String] name
        #   Required. The name of the dataset to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List datasets matching the input.
        # @param [String] parent
        #   Required. The parent resource of the dataset.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Useful for querying
        #   datasets with specific properties. Supported fields include, for Q2 though we
        #   only support list by project: - `type` - `description` - `project_number`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of datasets to return in the response. If this
        #   value is zero, the service will select a default size. A call might return
        #   fewer objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListDatasetsResponse`; indicates
        #   that this is a continuation of a prior `ListDatasets` call and the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_datasets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/datasets', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDatasetsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all feedback labels by project number.
        # @param [String] parent
        #   Required. The parent resource of all feedback labels per project.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset in the entire
        #   project. Supports disjunctions (OR) and conjunctions (AND). Supported fields: *
        #   `issue_model_id` * `qa_question_id` * `min_create_time` * `max_create_time` *
        #   `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        #   TOPIC_MODELING
        # @param [Fixnum] page_size
        #   Optional. The maximum number of feedback labels to return in the response. A
        #   valid page size ranges from 0 to 100,000 inclusive. If the page size is zero
        #   or unspecified, a default page size of 100 will be chosen. Note that a call
        #   might return fewer results than the requested page size.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListAllFeedbackLabelsResponse`. This
        #   value indicates that this is a continuation of a prior `ListAllFeedbackLabels`
        #   call and that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_all_feedback_labels(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:listAllFeedbackLabels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a dataset.
        # @param [String] name
        #   Immutable. Identifier. Resource name of the dataset. Format: projects/`project`
        #   /locations/`location`/datasets/`dataset`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset] google_cloud_contactcenterinsights_v1_dataset_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset(name, google_cloud_contactcenterinsights_v1_dataset_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_dataset_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes multiple conversations in a single request.
        # @param [String] parent
        #   Required. The parent resource to delete conversations from. Format: projects/`
        #   project`/locations/`location`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest] google_cloud_contactcenterinsights_v1_bulk_delete_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_dataset_conversation_delete(parent, google_cloud_contactcenterinsights_v1_bulk_delete_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:bulkDelete', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_bulk_delete_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets conversation statistics.
        # @param [String] location
        #   Required. The location of the conversations.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsRequest] google_cloud_contactcenterinsights_v1_calculate_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_dataset_conversation_stats(location, google_cloud_contactcenterinsights_v1_calculate_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}/conversations:calculateStats', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_calculate_stats_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a conversation.
        # @param [String] name
        #   Required. The name of the conversation to delete.
        # @param [Boolean] force
        #   If set to true, all of this conversation's analyses will also be deleted.
        #   Otherwise, the request will only succeed if the conversation has no analyses.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_conversation(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the signed URI for the audio for the given conversation.
        # @param [String] name
        #   Required. The name of the conversation to sign.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_dataset_conversation_signed_audio(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:generateSignedAudio', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a conversation.
        # @param [String] name
        #   Required. The name of the conversation to get.
        # @param [String] view
        #   The level of details of the conversation. Default is `FULL`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_conversation(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports conversations and processes them according to the user's configuration.
        # @param [String] parent
        #   Required. The parent resource for new conversations.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest] google_cloud_contactcenterinsights_v1_ingest_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_project_location_dataset_conversation(parent, google_cloud_contactcenterinsights_v1_ingest_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:ingest', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_ingest_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists conversations.
        # @param [String] parent
        #   Required. The parent resource of the conversation.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying
        #   conversations with specific properties.
        # @param [String] order_by
        #   Optional. The attribute by which to order conversations in the response. If
        #   empty, conversations will be ordered by descending creation time. Supported
        #   values are one of the following: * create_time * customer_satisfaction_rating *
        #   duration * latest_analysis * start_time * turn_count The default sort order
        #   is ascending. To specify order, append `asc` or `desc` (`create_time desc`).
        #   For more details, see [Google AIPs Ordering](https://google.aip.dev/132#
        #   ordering).
        # @param [Fixnum] page_size
        #   The maximum number of conversations to return in the response. A valid page
        #   size ranges from 0 to 100,000 inclusive. If the page size is zero or
        #   unspecified, a default page size of 100 will be chosen. Note that a call might
        #   return fewer results than the requested page size.
        # @param [String] page_token
        #   The value returned by the last `ListConversationsResponse`. This value
        #   indicates that this is a continuation of a prior `ListConversations` call and
        #   that the system should return the next page of data.
        # @param [String] view
        #   The level of details of the conversation. Default is `BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/conversations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Samples conversations based on user configuration and handles the sampled
        # conversations for different use cases.
        # @param [String] parent
        #   Required. The parent resource of the dataset.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest] google_cloud_contactcenterinsights_v1_sample_conversations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sample_project_location_dataset_conversation(parent, google_cloud_contactcenterinsights_v1_sample_conversations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/conversations:sample', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_sample_conversations_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create feedback label.
        # @param [String] parent
        #   Required. The parent resource of the feedback label.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] google_cloud_contactcenterinsights_v1_feedback_label_object
        # @param [String] feedback_label_id
        #   Optional. The ID of the feedback label to create. If one is not specified it
        #   will be generated by the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_conversation_feedback_label(parent, google_cloud_contactcenterinsights_v1_feedback_label_object = nil, feedback_label_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/feedbackLabels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_feedback_label_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['parent'] = parent unless parent.nil?
          command.query['feedbackLabelId'] = feedback_label_id unless feedback_label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete feedback label.
        # @param [String] name
        #   Required. The name of the feedback label to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_conversation_feedback_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get feedback label.
        # @param [String] name
        #   Required. The name of the feedback label to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_conversation_feedback_label(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List feedback labels.
        # @param [String] parent
        #   Required. The parent resource of the feedback labels.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Supports
        #   disjunctions (OR) and conjunctions (AND). Automatically sorts by conversation
        #   ID. To sort by all feedback labels in a project see ListAllFeedbackLabels.
        #   Supported fields: * `issue_model_id` * `qa_question_id` * `qa_scorecard_id` * `
        #   min_create_time` * `max_create_time` * `min_update_time` * `max_update_time` *
        #   `feedback_label_type`: QUALITY_AI, TOPIC_MODELING
        # @param [Fixnum] page_size
        #   Optional. The maximum number of feedback labels to return in the response. A
        #   valid page size ranges from 0 to 100,000 inclusive. If the page size is zero
        #   or unspecified, a default page size of 100 will be chosen. Note that a call
        #   might return fewer results than the requested page size.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListFeedbackLabelsResponse`. This
        #   value indicates that this is a continuation of a prior `ListFeedbackLabels`
        #   call and that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_conversation_feedback_labels(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/feedbackLabels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update feedback label.
        # @param [String] name
        #   Immutable. Resource name of the FeedbackLabel. Format: projects/`project`/
        #   locations/`location`/conversations/`conversation`/feedbackLabels/`
        #   feedback_label`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] google_cloud_contactcenterinsights_v1_feedback_label_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_conversation_feedback_label(name, google_cloud_contactcenterinsights_v1_feedback_label_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_feedback_label_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export insights data to a destination defined in the request body.
        # @param [String] parent
        #   Required. The parent resource to export data from.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest] google_cloud_contactcenterinsights_v1_export_insights_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_dataset_insightsdatum(parent, google_cloud_contactcenterinsights_v1_export_insights_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/insightsdata:export', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_export_insights_data_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initializes a location-level encryption key specification. An error will
        # result if the location has resources already created before the initialization.
        # After the encryption specification is initialized at a location, it is
        # immutable and all newly created resources under the location will be encrypted
        # with the existing specification.
        # @param [String] name
        #   Immutable. The resource name of the encryption key specification resource.
        #   Format: projects/`project`/locations/`location`/encryptionSpec
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest] google_cloud_contactcenterinsights_v1_initialize_encryption_spec_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initialize_project_location_encryption_spec(name, google_cloud_contactcenterinsights_v1_initialize_encryption_spec_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:initialize', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_initialize_encryption_spec_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export insights data to a destination defined in the request body.
        # @param [String] parent
        #   Required. The parent resource to export data from.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest] google_cloud_contactcenterinsights_v1_export_insights_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_insightsdatum(parent, google_cloud_contactcenterinsights_v1_export_insights_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/insightsdata:export', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_export_insights_data_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue model's statistics.
        # @param [String] issue_model
        #   Required. The resource name of the issue model to query against.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_issue_model_issue_model_stats(issue_model, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+issueModel}:calculateIssueModelStats', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
          command.params['issueModel'] = issue_model unless issue_model.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an issue model.
        # @param [String] parent
        #   Required. The parent resource of the issue model.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] google_cloud_contactcenterinsights_v1_issue_model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_issue_model(parent, google_cloud_contactcenterinsights_v1_issue_model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/issueModels', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_model_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an issue model.
        # @param [String] name
        #   Required. The name of the issue model to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_issue_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys an issue model. Returns an error if a model is already deployed. An
        # issue model can only be used in analysis after it has been deployed.
        # @param [String] name
        #   Required. The issue model to deploy.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest] google_cloud_contactcenterinsights_v1_deploy_issue_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_deploy_issue_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deploy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_deploy_issue_model_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports an issue model to the provided destination.
        # @param [String] name
        #   Required. The issue model to export.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequest] google_cloud_contactcenterinsights_v1_export_issue_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_export_issue_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:export', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_export_issue_model_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue model.
        # @param [String] name
        #   Required. The name of the issue model to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_issue_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports an issue model from a Cloud Storage bucket.
        # @param [String] parent
        #   Required. The parent resource of the issue model.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequest] google_cloud_contactcenterinsights_v1_import_issue_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_issue_model(parent, google_cloud_contactcenterinsights_v1_import_issue_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/issueModels:import', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_import_issue_model_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists issue models.
        # @param [String] parent
        #   Required. The parent resource of the issue model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_issue_models(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/issueModels', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an issue model.
        # @param [String] name
        #   Immutable. The resource name of the issue model. Format: projects/`project`/
        #   locations/`location`/issueModels/`issue_model`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] google_cloud_contactcenterinsights_v1_issue_model_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_issue_model_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_model_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys an issue model. An issue model can not be used in analysis after it
        # has been undeployed.
        # @param [String] name
        #   Required. The issue model to undeploy.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest] google_cloud_contactcenterinsights_v1_undeploy_issue_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_project_location_issue_model(name, google_cloud_contactcenterinsights_v1_undeploy_issue_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undeploy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_undeploy_issue_model_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an issue.
        # @param [String] parent
        #   Required. The parent resource of the issue.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] google_cloud_contactcenterinsights_v1_issue_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_issue_model_issue(parent, google_cloud_contactcenterinsights_v1_issue_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/issues', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an issue.
        # @param [String] name
        #   Required. The name of the issue to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_issue_model_issue(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an issue.
        # @param [String] name
        #   Required. The name of the issue to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_issue_model_issue(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists issues.
        # @param [String] parent
        #   Required. The parent resource of the issue.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_issue_model_issues(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/issues', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an issue.
        # @param [String] name
        #   Immutable. The resource name of the issue. Format: projects/`project`/
        #   locations/`location`/issueModels/`issue_model`/issues/`issue`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] google_cloud_contactcenterinsights_v1_issue_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_issue_model_issue(name, google_cloud_contactcenterinsights_v1_issue_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_issue_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a phrase matcher.
        # @param [String] parent
        #   Required. The parent resource of the phrase matcher. Required. The location to
        #   create a phrase matcher for. Format: `projects//locations/` or `projects//
        #   locations/`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] google_cloud_contactcenterinsights_v1_phrase_matcher_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_phrase_matcher(parent, google_cloud_contactcenterinsights_v1_phrase_matcher_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/phraseMatchers', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_phrase_matcher_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a phrase matcher.
        # @param [String] name
        #   Required. The name of the phrase matcher to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_phrase_matcher(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a phrase matcher.
        # @param [String] name
        #   Required. The name of the phrase matcher to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_phrase_matcher(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists phrase matchers.
        # @param [String] parent
        #   Required. The parent resource of the phrase matcher.
        # @param [String] filter
        #   A filter to reduce results to a specific subset. Useful for querying phrase
        #   matchers with specific properties.
        # @param [Fixnum] page_size
        #   The maximum number of phrase matchers to return in the response. If this value
        #   is zero, the service will select a default size. A call might return fewer
        #   objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   The value returned by the last `ListPhraseMatchersResponse`. This value
        #   indicates that this is a continuation of a prior `ListPhraseMatchers` call and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_phrase_matchers(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/phraseMatchers', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a phrase matcher.
        # @param [String] name
        #   The resource name of the phrase matcher. Format: projects/`project`/locations/`
        #   location`/phraseMatchers/`phrase_matcher`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] google_cloud_contactcenterinsights_v1_phrase_matcher_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_phrase_matcher(name, google_cloud_contactcenterinsights_v1_phrase_matcher_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_phrase_matcher_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a QaQuestionTag.
        # @param [String] parent
        #   Required. The parent resource of the QaQuestionTag.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag] google_cloud_contactcenterinsights_v1_qa_question_tag_object
        # @param [String] qa_question_tag_id
        #   Optional. A unique ID for the new QaQuestionTag. This ID will become the final
        #   component of the QaQuestionTag's resource name. If no ID is specified, a
        #   server-generated ID will be used. This value should be 4-64 characters and
        #   must match the regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-
        #   z-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_qa_question_tag(parent, google_cloud_contactcenterinsights_v1_qa_question_tag_object = nil, qa_question_tag_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/qaQuestionTags', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_question_tag_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag
          command.params['parent'] = parent unless parent.nil?
          command.query['qaQuestionTagId'] = qa_question_tag_id unless qa_question_tag_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a QaQuestionTag.
        # @param [String] name
        #   Required. The name of the QaQuestionTag to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_qa_question_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a QaQuestionTag.
        # @param [String] name
        #   Required. The name of the QaQuestionTag to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_qa_question_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the question tags.
        # @param [String] parent
        #   Required. The parent resource of the QaQuestionTags.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Supports
        #   conjunctions (ie. AND operators). Supported fields include the following: * `
        #   project_id` - id of the project to list tags for * `qa_scorecard_id` - id of
        #   the scorecard to list tags for * `revision_id` - id of the scorecard revision
        #   to list tags for` * `qa_question_id - id of the question to list tags for`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_qa_question_tags(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/qaQuestionTags', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a QaQuestionTag.
        # @param [String] name
        #   Identifier. Resource name for the QaQuestionTag Format projects/`project`/
        #   locations/`location`/qaQuestionTags/`qa_question_tag` In the above format, the
        #   last segment, i.e., qa_question_tag, is a server-generated ID corresponding to
        #   the tag resource.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag] google_cloud_contactcenterinsights_v1_qa_question_tag_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated. All possible fields can be updated
        #   by passing `*`, or a subset of the following updateable fields can be provided:
        #   * `qa_question_tag_name` - the name of the tag * `qa_question_ids` - the list
        #   of questions the tag applies to
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_qa_question_tag(name, google_cloud_contactcenterinsights_v1_qa_question_tag_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_question_tag_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a QaScorecard.
        # @param [String] parent
        #   Required. The parent resource of the QaScorecard.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard] google_cloud_contactcenterinsights_v1_qa_scorecard_object
        # @param [String] qa_scorecard_id
        #   Optional. A unique ID for the new QaScorecard. This ID will become the final
        #   component of the QaScorecard's resource name. If no ID is specified, a server-
        #   generated ID will be used. This value should be 4-64 characters and must match
        #   the regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_qa_scorecard(parent, google_cloud_contactcenterinsights_v1_qa_scorecard_object = nil, qa_scorecard_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/qaScorecards', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_scorecard_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard
          command.params['parent'] = parent unless parent.nil?
          command.query['qaScorecardId'] = qa_scorecard_id unless qa_scorecard_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a QaScorecard.
        # @param [String] name
        #   Required. The name of the QaScorecard to delete.
        # @param [Boolean] force
        #   Optional. If set to true, all of this QaScorecard's child resources will also
        #   be deleted. Otherwise, the request will only succeed if it has none.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_qa_scorecard(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a QaScorecard.
        # @param [String] name
        #   Required. The name of the QaScorecard to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_qa_scorecard(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists QaScorecards.
        # @param [String] parent
        #   Required. The parent resource of the scorecards.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of scorecards to return in the response. If the
        #   value is zero, the service will select a default size. A call might return
        #   fewer objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListQaScorecardsResponse`. This
        #   value indicates that this is a continuation of a prior `ListQaScorecards` call
        #   and that the system should return the next page of data.
        # @param [Array<String>, String] qa_scorecard_sources
        #   Optional. The source of scorecards are based on how those Scorecards were
        #   created, e.g., a customer-defined scorecard, a predefined scorecard, etc. This
        #   field is used to retrieve Scorecards of one or more sources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_qa_scorecards(parent, page_size: nil, page_token: nil, qa_scorecard_sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/qaScorecards', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['qaScorecardSources'] = qa_scorecard_sources unless qa_scorecard_sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a QaScorecard.
        # @param [String] name
        #   Identifier. The scorecard name. Format: projects/`project`/locations/`location`
        #   /qaScorecards/`qa_scorecard`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard] google_cloud_contactcenterinsights_v1_qa_scorecard_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. All possible fields can be updated
        #   by passing `*`, or a subset of the following updateable fields can be provided:
        #   * `description` * `display_name`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_qa_scorecard(name, google_cloud_contactcenterinsights_v1_qa_scorecard_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_scorecard_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a QaScorecardRevision.
        # @param [String] parent
        #   Required. The parent resource of the QaScorecardRevision.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision] google_cloud_contactcenterinsights_v1_qa_scorecard_revision_object
        # @param [String] qa_scorecard_revision_id
        #   Optional. A unique ID for the new QaScorecardRevision. This ID will become the
        #   final component of the QaScorecardRevision's resource name. If no ID is
        #   specified, a server-generated ID will be used. This value should be 4-64
        #   characters and must match the regular expression `^[a-z0-9-]`4,64`$`. Valid
        #   characters are `a-z-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_qa_scorecard_revision(parent, google_cloud_contactcenterinsights_v1_qa_scorecard_revision_object = nil, qa_scorecard_revision_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/revisions', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_scorecard_revision_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision
          command.params['parent'] = parent unless parent.nil?
          command.query['qaScorecardRevisionId'] = qa_scorecard_revision_id unless qa_scorecard_revision_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a QaScorecardRevision.
        # @param [String] name
        #   Required. The name of the QaScorecardRevision to delete.
        # @param [Boolean] force
        #   Optional. If set to true, all of this QaScorecardRevision's child resources
        #   will also be deleted. Otherwise, the request will only succeed if it has none.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_qa_scorecard_revision(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploy a QaScorecardRevision.
        # @param [String] name
        #   Required. The name of the QaScorecardRevision to deploy.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest] google_cloud_contactcenterinsights_v1_deploy_qa_scorecard_revision_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_qa_scorecard_revision(name, google_cloud_contactcenterinsights_v1_deploy_qa_scorecard_revision_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deploy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_deploy_qa_scorecard_revision_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a QaScorecardRevision.
        # @param [String] name
        #   Required. The name of the QaScorecardRevision to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_qa_scorecard_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all revisions under the parent QaScorecard.
        # @param [String] parent
        #   Required. The parent resource of the scorecard revisions. To list all
        #   revisions of all scorecards, substitute the QaScorecard ID with a '-'
        #   character.
        # @param [String] filter
        #   Optional. A filter to reduce results to a specific subset. Useful for querying
        #   scorecard revisions with specific properties.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of scorecard revisions to return in the response.
        #   If the value is zero, the service will select a default size. A call might
        #   return fewer objects than requested. A non-empty `next_page_token` in the
        #   response indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListQaScorecardRevisionsResponse`.
        #   This value indicates that this is a continuation of a prior `
        #   ListQaScorecardRevisions` call and that the system should return the next page
        #   of data.
        # @param [Array<String>, String] qa_scorecard_sources
        #   Optional. The source of scorecards are based on how those Scorecards were
        #   created, e.g., a customer-defined scorecard, a predefined scorecard, etc. This
        #   field is used to retrieve Scorecards Revisions from Scorecards of one or more
        #   sources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_qa_scorecard_revisions(parent, filter: nil, page_size: nil, page_token: nil, qa_scorecard_sources: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/revisions', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['qaScorecardSources'] = qa_scorecard_sources unless qa_scorecard_sources.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fine tune one or more QaModels.
        # @param [String] parent
        #   Required. The parent resource for new fine tuning job instance.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest] google_cloud_contactcenterinsights_v1_tune_qa_scorecard_revision_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def tune_project_location_qa_scorecard_revision_qa_scorecard_revision(parent, google_cloud_contactcenterinsights_v1_tune_qa_scorecard_revision_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:tuneQaScorecardRevision', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_tune_qa_scorecard_revision_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploy a QaScorecardRevision.
        # @param [String] name
        #   Required. The name of the QaScorecardRevision to undeploy.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest] google_cloud_contactcenterinsights_v1_undeploy_qa_scorecard_revision_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_project_location_qa_scorecard_revision(name, google_cloud_contactcenterinsights_v1_undeploy_qa_scorecard_revision_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undeploy', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_undeploy_qa_scorecard_revision_request_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a QaQuestion.
        # @param [String] parent
        #   Required. The parent resource of the QaQuestion.
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion] google_cloud_contactcenterinsights_v1_qa_question_object
        # @param [String] qa_question_id
        #   Optional. A unique ID for the new question. This ID will become the final
        #   component of the question's resource name. If no ID is specified, a server-
        #   generated ID will be used. This value should be 4-64 characters and must match
        #   the regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_qa_scorecard_revision_qa_question(parent, google_cloud_contactcenterinsights_v1_qa_question_object = nil, qa_question_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/qaQuestions', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_question_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion
          command.params['parent'] = parent unless parent.nil?
          command.query['qaQuestionId'] = qa_question_id unless qa_question_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a QaQuestion.
        # @param [String] name
        #   Required. The name of the QaQuestion to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_qa_scorecard_revision_qa_question(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a QaQuestion.
        # @param [String] name
        #   Required. The name of the QaQuestion to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_qa_scorecard_revision_qa_question(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists QaQuestions.
        # @param [String] parent
        #   Required. The parent resource of the questions.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of questions to return in the response. If the
        #   value is zero, the service will select a default size. A call might return
        #   fewer objects than requested. A non-empty `next_page_token` in the response
        #   indicates that more data is available.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListQaQuestionsResponse`. This value
        #   indicates that this is a continuation of a prior `ListQaQuestions` call and
        #   that the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_qa_scorecard_revision_qa_questions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/qaQuestions', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a QaQuestion.
        # @param [String] name
        #   Identifier. The resource name of the question. Format: projects/`project`/
        #   locations/`location`/qaScorecards/`qa_scorecard`/revisions/`revision`/
        #   qaQuestions/`qa_question`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion] google_cloud_contactcenterinsights_v1_qa_question_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. All possible fields can be updated
        #   by passing `*`, or a subset of the following updateable fields can be provided:
        #   * `abbreviation` * `answer_choices` * `answer_instructions` * `order` * `
        #   question_body` * `tags`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_qa_scorecard_revision_qa_question(name, google_cloud_contactcenterinsights_v1_qa_question_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_qa_question_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view.
        # @param [String] parent
        #   Required. The parent resource of the view. Required. The location to create a
        #   view for. Format: `projects//locations/` or `projects//locations/`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] google_cloud_contactcenterinsights_v1_view_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_view(parent, google_cloud_contactcenterinsights_v1_view_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/views', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_view_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view.
        # @param [String] name
        #   Required. The name of the view to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view.
        # @param [String] name
        #   Required. The name of the view to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views.
        # @param [String] parent
        #   Required. The parent resource of the views.
        # @param [Fixnum] page_size
        #   The maximum number of views to return in the response. If this value is zero,
        #   the service will select a default size. A call may return fewer objects than
        #   requested. A non-empty `next_page_token` in the response indicates that more
        #   data is available.
        # @param [String] page_token
        #   The value returned by the last `ListViewsResponse`; indicates that this is a
        #   continuation of a prior `ListViews` call and the system should return the next
        #   page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/views', options)
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view.
        # @param [String] name
        #   Immutable. The resource name of the view. Format: projects/`project`/locations/
        #   `location`/views/`view`
        # @param [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] google_cloud_contactcenterinsights_v1_view_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_view(name, google_cloud_contactcenterinsights_v1_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.request_object = google_cloud_contactcenterinsights_v1_view_object
          command.response_representation = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View::Representation
          command.response_class = Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
