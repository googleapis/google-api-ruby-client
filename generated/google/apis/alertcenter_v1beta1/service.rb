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
    module AlertcenterV1beta1
      # G Suite Alert Center API
      #
      # G Suite Alert Center API to view and manage alerts on issues affecting your
      #  domain.
      #
      # @example
      #    require 'google/apis/alertcenter_v1beta1'
      #
      #    Alertcenter = Google::Apis::AlertcenterV1beta1 # Alias the module
      #    service = Alertcenter::AlertCenterService.new
      #
      # @see https://developers.google.com/admin-sdk/alertcenter/
      class AlertCenterService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://alertcenter.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Marks the specified alert for deletion. An alert that has been marked for
        # deletion will be excluded from the results of a List operation by default,
        # and will be removed from the Alert Center after 30 days.
        # Marking an alert for deletion will have no effect on an alert which has
        # already been marked for deletion. Attempting to mark a nonexistent alert
        # for deletion will return NOT_FOUND.
        # @param [String] alert_id
        #   Required. The identifier of the alert to delete.
        # @param [String] customer_id
        #   Optional. The unique identifier of the Google account of the customer the
        #   alert is associated with. This is obfuscated and not the plain customer
        #   ID as stored internally. Inferred from the caller identity if not provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AlertcenterV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AlertcenterV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_alert(alert_id, customer_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta1/alerts/{alertId}', options)
          command.response_representation = Google::Apis::AlertcenterV1beta1::Empty::Representation
          command.response_class = Google::Apis::AlertcenterV1beta1::Empty
          command.params['alertId'] = alert_id unless alert_id.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified alert.
        # @param [String] alert_id
        #   Required. The identifier of the alert to retrieve.
        # @param [String] customer_id
        #   Optional. The unique identifier of the Google account of the customer the
        #   alert is associated with. This is obfuscated and not the plain customer
        #   ID as stored internally. Inferred from the caller identity if not provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AlertcenterV1beta1::Alert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AlertcenterV1beta1::Alert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_alert(alert_id, customer_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/alerts/{alertId}', options)
          command.response_representation = Google::Apis::AlertcenterV1beta1::Alert::Representation
          command.response_class = Google::Apis::AlertcenterV1beta1::Alert
          command.params['alertId'] = alert_id unless alert_id.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the alerts for the current user and application.
        # @param [String] customer_id
        #   Optional. The unique identifier of the Google account of the customer the
        #   alerts are associated with. This is obfuscated and not the plain
        #   customer ID as stored internally. Inferred from the caller identity if not
        #   provided.
        # @param [String] filter
        #   Optional. Query string for filtering alert results.
        #   This string must be specified as an expression or list of expressions,
        #   using the following grammar:
        #   ### Expressions
        #   An expression has the general form `<field> <operator> <value>`.
        #   A field or value which contains a space or a colon must be enclosed by
        #   double quotes.
        #   #### Operators
        #   Operators follow the BNF specification:
        #   `<equalityOperator> ::= "=" | ":"`
        #   `<relationalOperator> ::= "<" | ">" | "<=" | ">="`
        #   Relational operators are defined only for timestamp fields. Equality
        #   operators are defined only for string fields.
        #   #### Timestamp fields
        #   The value supplied for a timestamp field must be an
        #   [RFC 3339](https://tools.ietf.org/html/rfc3339) date-time string.
        #   Supported timestamp fields are `create_time`, `start_time`, and `end_time`.
        #   #### String fields
        #   The value supplied for a string field may be an arbitrary string.
        #   #### Examples
        #   To query for all alerts created on or after April 5, 2018:
        #   `create_time >= "2018-04-05T00:00:00Z"`
        #   To query for all alerts from the source "Gmail phishing":
        #   `source:"Gmail phishing"`
        #   ### Joining expressions
        #   Expressions may be joined to form a more complex query. The BNF
        #   specification is:
        #   `<expressionList> ::= <expression> | <expressionList> <conjunction>
        #   <expressionList> | <negation> <expressionList>`
        #   `<conjunction> ::= "AND" | "OR" | ""`
        #   `<negation> ::= "NOT"`
        #   Using the empty string as a conjunction acts as an implicit AND.
        #   The precedence of joining operations, from highest to lowest, is NOT, AND,
        #   OR.
        #   #### Examples
        #   To query for all alerts which started in 2017:
        #   `start_time >= "2017-01-01T00:00:00Z" AND start_time <
        #   "2018-01-01T00:00:00Z"`
        #   To query for all user reported phishing alerts from the source
        #   "Gmail phishing":
        #   `type:"User reported phishing" source:"Gmail phishing"`
        # @param [String] order_by
        #   Optional. Sort the list results by a certain order.
        #   If not specified results may be returned in arbitrary order.
        #   You can sort the results in a descending order based on the creation
        #   timestamp using order_by="create_time desc".
        #   Currently, only sorting by create_time desc is supported.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than
        #   requested. If unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        #   If empty, a new iteration is started. To continue an iteration, pass in
        #   the value from the previous ListAlertsResponse's next_page_token field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AlertcenterV1beta1::ListAlertsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AlertcenterV1beta1::ListAlertsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_alerts(customer_id: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/alerts', options)
          command.response_representation = Google::Apis::AlertcenterV1beta1::ListAlertsResponse::Representation
          command.response_class = Google::Apis::AlertcenterV1beta1::ListAlertsResponse
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new alert feedback.
        # @param [String] alert_id
        #   Required. The identifier of the alert this feedback belongs to.
        #   Returns a NOT_FOUND error if no such alert.
        # @param [Google::Apis::AlertcenterV1beta1::AlertFeedback] alert_feedback_object
        # @param [String] customer_id
        #   Optional. The unique identifier of the Google account of the customer the
        #   alert's feedback is associated with. This is obfuscated and not the
        #   plain customer ID as stored internally. Inferred from the caller identity
        #   if not provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AlertcenterV1beta1::AlertFeedback] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AlertcenterV1beta1::AlertFeedback]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_alert_feedback(alert_id, alert_feedback_object = nil, customer_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/alerts/{alertId}/feedback', options)
          command.request_representation = Google::Apis::AlertcenterV1beta1::AlertFeedback::Representation
          command.request_object = alert_feedback_object
          command.response_representation = Google::Apis::AlertcenterV1beta1::AlertFeedback::Representation
          command.response_class = Google::Apis::AlertcenterV1beta1::AlertFeedback
          command.params['alertId'] = alert_id unless alert_id.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the feedback for an alert.
        # @param [String] alert_id
        #   Required. The alert identifier.
        #   If the alert does not exist returns a NOT_FOUND error.
        # @param [String] customer_id
        #   Optional. The unique identifier of the Google account of the customer the
        #   alert is associated with. This is obfuscated and not the plain customer
        #   ID as stored internally. Inferred from the caller identity if not provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AlertcenterV1beta1::ListAlertFeedbackResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AlertcenterV1beta1::ListAlertFeedbackResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_alert_feedbacks(alert_id, customer_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/alerts/{alertId}/feedback', options)
          command.response_representation = Google::Apis::AlertcenterV1beta1::ListAlertFeedbackResponse::Representation
          command.response_class = Google::Apis::AlertcenterV1beta1::ListAlertFeedbackResponse
          command.params['alertId'] = alert_id unless alert_id.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
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
