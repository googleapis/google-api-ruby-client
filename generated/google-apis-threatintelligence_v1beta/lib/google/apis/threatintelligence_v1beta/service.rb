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
    module ThreatintelligenceV1beta
      # Threat Intelligence API
      #
      # threatintelligence.googleapis.com API.
      #
      # @example
      #    require 'google/apis/threatintelligence_v1beta'
      #
      #    Threatintelligence = Google::Apis::ThreatintelligenceV1beta # Alias the module
      #    service = Threatintelligence::ThreatIntelligenceServiceService.new
      #
      # @see https://cloud.google.com/threatintelligence/docs/reference/rest
      class ThreatIntelligenceServiceService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://threatintelligence.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-threatintelligence_v1beta',
                client_version: Google::Apis::ThreatintelligenceV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Marks an alert as benign - BENIGN.
        # @param [String] name
        #   Required. Name of the alert to mark as a benign. Format: projects/`project`/
        #   alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsBenignRequest] mark_alert_as_benign_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def benign_project_alert(name, mark_alert_as_benign_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:benign', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsBenignRequest::Representation
          command.request_object = mark_alert_as_benign_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as a duplicate of another alert. - DUPLICATE.
        # @param [String] name
        #   Required. Name of the alert to mark as a duplicate. Format: projects/`project`/
        #   alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsDuplicateRequest] mark_alert_as_duplicate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def duplicate_project_alert(name, mark_alert_as_duplicate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:duplicate', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsDuplicateRequest::Representation
          command.request_object = mark_alert_as_duplicate_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # EnumerateAlertFacets returns the facets and the number of alerts that meet the
        # filter criteria and have that value for each facet.
        # @param [String] parent
        #   Required. Parent of the alerts.
        # @param [String] filter
        #   Optional. Filter on what alerts will be enumerated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::EnumerateAlertFacetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::EnumerateAlertFacetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enumerate_project_alert_facets(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/alerts:enumerateFacets', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::EnumerateAlertFacetsResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::EnumerateAlertFacetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as escalated - ESCALATED.
        # @param [String] name
        #   Required. Name of the alert to mark as escalated. Format: projects/`project`/
        #   alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsEscalatedRequest] mark_alert_as_escalated_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def escalate_project_alert(name, mark_alert_as_escalated_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:escalate', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsEscalatedRequest::Representation
          command.request_object = mark_alert_as_escalated_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as a false positive - FALSE_POSITIVE.
        # @param [String] name
        #   Required. Name of the alert to mark as a false positive. Format: projects/`
        #   project`/alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsFalsePositiveRequest] mark_alert_as_false_positive_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def false_project_alert_positive(name, mark_alert_as_false_positive_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:falsePositive', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsFalsePositiveRequest::Representation
          command.request_object = mark_alert_as_false_positive_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an alert by name.
        # @param [String] name
        #   Required. Name of the alert to get. Format: projects/`project`/alerts/`alert`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_alert(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of alerts that meet the filter criteria.
        # @param [String] parent
        #   Required. Parent of the alerts. Format: projects/`project`
        # @param [String] filter
        #   Optional. Filter criteria.
        # @param [String] order_by
        #   Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,
        #   field2" or "field1 asc, field2".
        # @param [Fixnum] page_size
        #   Optional. Page size.
        # @param [String] page_token
        #   Optional. Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::ListAlertsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::ListAlertsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_alerts(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/alerts', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::ListAlertsResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::ListAlertsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as not actionable - NOT_ACTIONABLE.
        # @param [String] name
        #   Required. Name of the alert to mark as a not actionable. Format: projects/`
        #   project`/alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsNotActionableRequest] mark_alert_as_not_actionable_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def not_project_alert_actionable(name, mark_alert_as_not_actionable_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:notActionable', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsNotActionableRequest::Representation
          command.request_object = mark_alert_as_not_actionable_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as read - READ.
        # @param [String] name
        #   Required. Name of the alert to mark as read. Format: projects/`project`/alerts/
        #   `alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsReadRequest] mark_alert_as_read_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def read_project_alert(name, mark_alert_as_read_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:read', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsReadRequest::Representation
          command.request_object = mark_alert_as_read_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return the status of a URI submitted to Google WebRisk.
        # @param [String] name
        #   Required. Name of alert to refresh status from WebRisk
        # @param [Google::Apis::ThreatintelligenceV1beta::RefreshAlertUriStatusRequest] refresh_alert_uri_status_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::RefreshAlertUriStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::RefreshAlertUriStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refresh_project_alert_uri_status(name, refresh_alert_uri_status_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:refreshUriStatus', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::RefreshAlertUriStatusRequest::Representation
          command.request_object = refresh_alert_uri_status_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::RefreshAlertUriStatusResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::RefreshAlertUriStatusResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report the URI associated with an alert to Google WebRisk.
        # @param [String] name
        #   Required. Name of alert to submit to WebRisk.
        # @param [Google::Apis::ThreatintelligenceV1beta::ReportAlertUriRequest] report_alert_uri_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::ReportAlertUriResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::ReportAlertUriResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_alert_uri(name, report_alert_uri_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:reportAlertUri', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::ReportAlertUriRequest::Representation
          command.request_object = report_alert_uri_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::ReportAlertUriResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::ReportAlertUriResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert to closed state - RESOLVED.
        # @param [String] name
        #   Required. Name of the alert to mark as resolved. Format: projects/`project`/
        #   alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsResolvedRequest] mark_alert_as_resolved_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_project_alert(name, mark_alert_as_resolved_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:resolve', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsResolvedRequest::Representation
          command.request_object = mark_alert_as_resolved_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as tracked externally - TRACKED_EXTERNALLY.
        # @param [String] name
        #   Required. Name of the alert to mark as tracked externally. Format: projects/`
        #   project`/alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsTrackedExternallyRequest] mark_alert_as_tracked_externally_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def track_project_alert_externally(name, mark_alert_as_tracked_externally_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:trackExternally', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsTrackedExternallyRequest::Representation
          command.request_object = mark_alert_as_tracked_externally_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an alert as triaged - TRIAGED.
        # @param [String] name
        #   Required. Name of the alert to mark as a triaged. Format: projects/`project`/
        #   alerts/`alert`
        # @param [Google::Apis::ThreatintelligenceV1beta::MarkAlertAsTriagedRequest] mark_alert_as_triaged_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def triage_project_alert(name, mark_alert_as_triaged_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:triage', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::MarkAlertAsTriagedRequest::Representation
          command.request_object = mark_alert_as_triaged_request_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Alert::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Alert
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific document associated with an alert.
        # @param [String] name
        #   Required. Name of the alert document to get. Format: projects/`project`/alerts/
        #   `alert`/documents/`document`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::AlertDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::AlertDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_alert_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::AlertDocument::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::AlertDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a configuration by name.
        # @param [String] name
        #   Required. Name of the configuration to get. Format: vaults/`vault`/
        #   configurations/`configuration`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Configuration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Configuration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_configuration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Configuration::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Configuration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of configurations that meet the filter criteria.
        # @param [String] parent
        #   Required. Parent of the configuration. Format: vaults/`vault`
        # @param [String] filter
        #   Optional. Filter criteria.
        # @param [String] order_by
        #   Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,
        #   field2" or "field1 asc, field2".
        # @param [Fixnum] page_size
        #   Optional. Page size.
        # @param [String] page_token
        #   Optional. Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::ListConfigurationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::ListConfigurationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_configurations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/configurations', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::ListConfigurationsResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::ListConfigurationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a configuration.
        # @param [String] parent
        #   Required. Parent of the configuration.
        # @param [Google::Apis::ThreatintelligenceV1beta::Configuration] configuration_object
        # @param [String] publish_time
        #   Optional. Time that the configuration should be considered to have been
        #   published. This is an advanced feature used when onboarding and bulk loading
        #   data from other systems. Do not set this field without consulting with the API
        #   team.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::UpsertConfigurationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::UpsertConfigurationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upsert_project_configuration(parent, configuration_object = nil, publish_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/configurations:upsert', options)
          command.request_representation = Google::Apis::ThreatintelligenceV1beta::Configuration::Representation
          command.request_object = configuration_object
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::UpsertConfigurationResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::UpsertConfigurationResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['publishTime'] = publish_time unless publish_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List configuration revisions that meet the filter criteria.
        # @param [String] parent
        #   Required. The name of the Configuration to retrieve Revisions for
        # @param [String] filter
        #   Optional. An AIP-160 filter string
        # @param [String] order_by
        #   Optional. Specify ordering of response
        # @param [Fixnum] page_size
        #   Optional. Page Size
        # @param [String] page_token
        #   Optional. A page token provided by the API
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::ListConfigurationRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::ListConfigurationRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_configuration_revisions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/revisions', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::ListConfigurationRevisionsResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::ListConfigurationRevisionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a finding by name.
        # @param [String] name
        #   Required. Name of the finding to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::Finding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::Finding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_finding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::Finding::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::Finding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of findings that meet the filter criteria.
        # @param [String] parent
        #   Required. Parent of the findings.
        # @param [String] filter
        #   Optional. Filter criteria.
        # @param [String] order_by
        #   Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,
        #   field2" or "field1 asc, field2".
        # @param [Fixnum] page_size
        #   Optional. Page size.
        # @param [String] page_token
        #   Optional. Page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::ListFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::ListFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_findings(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/findings', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::ListFindingsResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::ListFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchFindings is a more powerful version of ListFindings that supports
        # complex queries like "findings for issues" using functions such as `has_issue`
        # and `has_asset` in the query string. Example to search for findings for a
        # specific issue: `has_issue("name=\"vaults/vault-12345/issues/issue-12345\"")`)
        # @param [String] parent
        #   Required. Parent of the findings. Format: vaults/`vault`
        # @param [String] order_by
        #   Optional. Order by criteria in the csv format: "field1,field2 desc" or "field1,
        #   field2" or "field1 asc, field2".
        # @param [Fixnum] page_size
        #   Optional. Page size.
        # @param [String] page_token
        #   Optional. Page token.
        # @param [String] query
        #   Optional. Query on what findings will be returned. This supports the same
        #   filter criteria as FindingService.ListFindings as well as the following
        #   relationship queries `has_issue` and `has_asset`. Examples: - has_issue("name=\
        #   "vaults/vault-12345/issues/issue-12345\"") - has_asset("name=\"vaults/vault-
        #   12345/assets/asset-12345\"")
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ThreatintelligenceV1beta::SearchFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ThreatintelligenceV1beta::SearchFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_findings(parent, order_by: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/findings:search', options)
          command.response_representation = Google::Apis::ThreatintelligenceV1beta::SearchFindingsResponse::Representation
          command.response_class = Google::Apis::ThreatintelligenceV1beta::SearchFindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
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
