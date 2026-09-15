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
    module FirebasecrashlyticsV1alpha
      # Firebase Crashlytics API
      #
      # This service provides an API for mobile app developers to request deletion of
      #  user's crash reports.
      #
      # @example
      #    require 'google/apis/firebasecrashlytics_v1alpha'
      #
      #    Firebasecrashlytics = Google::Apis::FirebasecrashlyticsV1alpha # Alias the module
      #    service = Firebasecrashlytics::FirebaseCrashlyticsService.new
      #
      # @see https://firebase.google.com/docs/crashlytics
      class FirebaseCrashlyticsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://firebasecrashlytics.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-firebasecrashlytics_v1alpha',
                client_version: Google::Apis::FirebasecrashlyticsV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Fetch a batch of up to 100 events by name.
        # @param [String] parent
        #   Required. The firebase application. Format: "projects/`project`/apps/`app_id`".
        # @param [Array<String>, String] names
        #   Required. The resource names of the desired events. A maximum of 100 events
        #   can be retrieved in a batch. Format: "projects/`project`/apps/`app_id`/events/`
        #   event_id`". The app_id and event_id are required, but project may be "-" to
        #   conserve space in long URIs.
        # @param [String] read_mask
        #   Optional. The list of Event fields to include in the response. If omitted, the
        #   full event is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::BatchGetEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::BatchGetEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_event_get(parent, names: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/events:batchGet', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::BatchGetEventsResponse::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::BatchGetEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the events for an issue matching filter criteria, sorted in descending
        # order by timestamp.
        # @param [String] parent
        #   Required. The Firebase application. Format: "projects/`project`/apps/`app_id`".
        # @param [Array<String>, String] filter_browser_display_names
        #   Optional. Only count events from the given browser. This string matches
        #   Browser.display_name. Format: "name (display_version)" e.g. "Chrome (123)", or
        #   just "name" for all possible versions, e.g. simply "Chrome".
        # @param [Array<String>, String] filter_device_display_names
        #   Only counts events from the given Device model. This string matches Device.
        #   display_name. Format: "manufacturer (model)" e.g. "Google (Pixel 6)", or just "
        #   manufacturer" for all possible models, e.g. simply "Google". Note that a
        #   device's marketing_name field can not be used for filtering.
        # @param [Array<String>, String] filter_device_form_factors
        #   Only counts events from devices with the given form factor (e.g. phone or
        #   tablet).
        # @param [String] filter_interval_end_time
        #   Optional. Exclusive end of the interval. If specified, a Timestamp matching
        #   this interval will have to be before the end.
        # @param [String] filter_interval_start_time
        #   Optional. Inclusive start of the interval. If specified, a Timestamp matching
        #   this interval will have to be the same or after the start.
        # @param [String] filter_issue_content
        #   Optional. A space separated list of filter terms matched against the contents
        #   of the issue. Contents include the title and the stack trace. Matches must
        #   begin at alphanumeric tokens, i.e., 'util.Sorted' matches 'java.util.SortedSet'
        #   but not 'myutil.SortedArray'. The filter matches if all filter terms match.
        #   All non-alphanumeric characters are ignored for matching. Filtering is assumed
        #   to be prefix-search and order-independent unless phrases are surrounded by "".
        #   Any terms contained in quotes are searched using exact-match (given filter
        #   term "foo", we will not return "foobar"), and must appear in the order given
        #   exactly. To get order-dependence but prefix-search, use a * within the quotes (
        #   "abc foo*" will match "abc foobar", but not "foo abc" "abcd foobar", or "abc
        #   xyz foobar").
        # @param [Array<String>, String] filter_issue_error_types
        #   Optional. Only counts events of the given error types. This field matches [
        #   Issue.error_type].
        # @param [String] filter_issue_id
        #   Optional. Only counts events in the given issue ID. This field matches [Issue.
        #   id].
        # @param [Array<String>, String] filter_issue_signals
        #   Optional. Only returns issues currently marked with the given signals. This
        #   field matches [Issue.signals.signal].
        # @param [String] filter_issue_state
        #   Optional. Deprecated: Prefer `states` field. Only includes events for issues
        #   with the given issue state. Only available for `topIssues` reports.
        # @param [Array<String>, String] filter_issue_states
        #   Optional. Only includes events for issues with the given issue states. Only
        #   available for `topIssues` reports.
        # @param [String] filter_issue_variant_id
        #   Optional. Only counts events for the given issue variant ID. This field
        #   matches [IssueVariant.id].
        # @param [Array<String>, String] filter_operating_system_display_names
        #   Only counts events in the given operating system and version. This string
        #   matches OperatingSystem.display_name. Format: "osName (osVersion)" e.g. "
        #   Android (11)". or just "osName" for all versions, e.g. simply "iPadOS".
        # @param [Array<String>, String] filter_version_display_names
        #   Only counts events in the given app version. This string matches Version.
        #   display_name. Format: "display_version (build_version)" e.g. "1.2.3 (456)".
        # @param [Fixnum] page_size
        #   Optional. The maximum number of events per page. If omitted, defaults to 10.
        # @param [String] page_token
        #   Optional. A page token, received from a previous calls.
        # @param [String] read_mask
        #   Optional. The list of Event fields to include in the response. If omitted, the
        #   full event is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::ListEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::ListEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_events(parent, filter_browser_display_names: nil, filter_device_display_names: nil, filter_device_form_factors: nil, filter_interval_end_time: nil, filter_interval_start_time: nil, filter_issue_content: nil, filter_issue_error_types: nil, filter_issue_id: nil, filter_issue_signals: nil, filter_issue_state: nil, filter_issue_states: nil, filter_issue_variant_id: nil, filter_operating_system_display_names: nil, filter_version_display_names: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/events', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::ListEventsResponse::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::ListEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter.browser.displayNames'] = filter_browser_display_names unless filter_browser_display_names.nil?
          command.query['filter.device.displayNames'] = filter_device_display_names unless filter_device_display_names.nil?
          command.query['filter.device.formFactors'] = filter_device_form_factors unless filter_device_form_factors.nil?
          command.query['filter.interval.endTime'] = filter_interval_end_time unless filter_interval_end_time.nil?
          command.query['filter.interval.startTime'] = filter_interval_start_time unless filter_interval_start_time.nil?
          command.query['filter.issue.content'] = filter_issue_content unless filter_issue_content.nil?
          command.query['filter.issue.errorTypes'] = filter_issue_error_types unless filter_issue_error_types.nil?
          command.query['filter.issue.id'] = filter_issue_id unless filter_issue_id.nil?
          command.query['filter.issue.signals'] = filter_issue_signals unless filter_issue_signals.nil?
          command.query['filter.issue.state'] = filter_issue_state unless filter_issue_state.nil?
          command.query['filter.issue.states'] = filter_issue_states unless filter_issue_states.nil?
          command.query['filter.issue.variantId'] = filter_issue_variant_id unless filter_issue_variant_id.nil?
          command.query['filter.operatingSystem.displayNames'] = filter_operating_system_display_names unless filter_operating_system_display_names.nil?
          command.query['filter.version.displayNames'] = filter_version_display_names unless filter_version_display_names.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change the state of a group of issues. This method is not atomic, so partial
        # failures can occur. In the event of a partial failure, the request will fail
        # and you will need to call `GetIssue` to see which issues were not updated.
        # @param [String] parent
        #   Required. The parent resource shared by all issues being updated. Format:
        #   projects/`project`/apps/`app`. If this is set, the parent field in the
        #   UpdateIssueRequest messages must either be empty or match this field.
        # @param [Google::Apis::FirebasecrashlyticsV1alpha::BatchUpdateIssuesRequest] batch_update_issues_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::BatchUpdateIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::BatchUpdateIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_issues(parent, batch_update_issues_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/issues:batchUpdate', options)
          command.request_representation = Google::Apis::FirebasecrashlyticsV1alpha::BatchUpdateIssuesRequest::Representation
          command.request_object = batch_update_issues_request_object
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::BatchUpdateIssuesResponse::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::BatchUpdateIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an issue.
        # @param [String] name
        #   Required. The name of the issue to retrieve. Format: "projects/`project`/apps/`
        #   app`/issues/`issue`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_issue(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::Issue
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change the state of an issue.
        # @param [String] name
        #   Required. Output only. Immutable. Identifier. The name of the issue resource.
        #   Format: "projects/`project`/apps/`app`/issues/`issue`".
        # @param [Google::Apis::FirebasecrashlyticsV1alpha::Issue] issue_object
        # @param [String] update_mask
        #   Optional. The list of Issue fields to update. Currently only "state" is
        #   mutable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::Issue] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Issue]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_issue(name, issue_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
          command.request_object = issue_object
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::Issue
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new note for an issue.
        # @param [String] parent
        #   Required. The parent resource where this note will be created. Format: "
        #   projects/`project`/apps/`app`/issues/`issue`".
        # @param [Google::Apis::FirebasecrashlyticsV1alpha::Note] note_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_app_issue_note(parent, note_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/notes', options)
          command.request_representation = Google::Apis::FirebasecrashlyticsV1alpha::Note::Representation
          command.request_object = note_object
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::Note::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::Note
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a note by its name.
        # @param [String] name
        #   Required. The name of the note to delete. Format: projects/`project`/apps/`app`
        #   /issues/`issue`/notes/`note`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_app_issue_note(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::Empty::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all notes for a certain issue, sorted in descending order by timestamp.
        # @param [String] parent
        #   Required. The issue the notes belongs to. Format: "projects/`project`/apps/`
        #   app`/issues/`issue`".
        # @param [Fixnum] page_size
        #   Optional. The maximum number of notes per page. If omitted, defaults to 10.
        # @param [String] page_token
        #   Optional. A page token, received from a previous calls.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::ListNotesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::ListNotesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_issue_notes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/notes', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::ListNotesResponse::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::ListNotesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a report with its computed results.
        # @param [String] name
        #   Required. The report name. Format: "projects/`project`/apps/`app_id`/reports/`
        #   report`".
        # @param [Array<String>, String] filter_browser_display_names
        #   Optional. Only count events from the given browser. This string matches
        #   Browser.display_name. Format: "name (display_version)" e.g. "Chrome (123)", or
        #   just "name" for all possible versions, e.g. simply "Chrome".
        # @param [Array<String>, String] filter_device_display_names
        #   Only counts events from the given Device model. This string matches Device.
        #   display_name. Format: "manufacturer (model)" e.g. "Google (Pixel 6)", or just "
        #   manufacturer" for all possible models, e.g. simply "Google". Note that a
        #   device's marketing_name field can not be used for filtering.
        # @param [Array<String>, String] filter_device_form_factors
        #   Only counts events from devices with the given form factor (e.g. phone or
        #   tablet).
        # @param [String] filter_interval_end_time
        #   Optional. Exclusive end of the interval. If specified, a Timestamp matching
        #   this interval will have to be before the end.
        # @param [String] filter_interval_start_time
        #   Optional. Inclusive start of the interval. If specified, a Timestamp matching
        #   this interval will have to be the same or after the start.
        # @param [String] filter_issue_content
        #   Optional. A space separated list of filter terms matched against the contents
        #   of the issue. Contents include the title and the stack trace. Matches must
        #   begin at alphanumeric tokens, i.e., 'util.Sorted' matches 'java.util.SortedSet'
        #   but not 'myutil.SortedArray'. The filter matches if all filter terms match.
        #   All non-alphanumeric characters are ignored for matching. Filtering is assumed
        #   to be prefix-search and order-independent unless phrases are surrounded by "".
        #   Any terms contained in quotes are searched using exact-match (given filter
        #   term "foo", we will not return "foobar"), and must appear in the order given
        #   exactly. To get order-dependence but prefix-search, use a * within the quotes (
        #   "abc foo*" will match "abc foobar", but not "foo abc" "abcd foobar", or "abc
        #   xyz foobar").
        # @param [Array<String>, String] filter_issue_error_types
        #   Optional. Only counts events of the given error types. This field matches [
        #   Issue.error_type].
        # @param [String] filter_issue_id
        #   Optional. Only counts events in the given issue ID. This field matches [Issue.
        #   id].
        # @param [Array<String>, String] filter_issue_signals
        #   Optional. Only returns issues currently marked with the given signals. This
        #   field matches [Issue.signals.signal].
        # @param [String] filter_issue_state
        #   Optional. Deprecated: Prefer `states` field. Only includes events for issues
        #   with the given issue state. Only available for `topIssues` reports.
        # @param [Array<String>, String] filter_issue_states
        #   Optional. Only includes events for issues with the given issue states. Only
        #   available for `topIssues` reports.
        # @param [String] filter_issue_variant_id
        #   Optional. Only counts events for the given issue variant ID. This field
        #   matches [IssueVariant.id].
        # @param [Array<String>, String] filter_operating_system_display_names
        #   Only counts events in the given operating system and version. This string
        #   matches OperatingSystem.display_name. Format: "osName (osVersion)" e.g. "
        #   Android (11)". or just "osName" for all versions, e.g. simply "iPadOS".
        # @param [Array<String>, String] filter_version_display_names
        #   Only counts events in the given app version. This string matches Version.
        #   display_name. Format: "display_version (build_version)" e.g. "1.2.3 (456)".
        # @param [String] granularity
        #   Optional. The report response will contain one data point per time grain. If
        #   omitted, the report will contain a single data point for the complete interval.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of result groups to return. If omitted, defaults
        #   to 25.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call. The page token is only
        #   valid for the exact same set of filters, which must also be sent in subsequent
        #   requests. This token is valid for 10 minutes after the first request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_report(name, filter_browser_display_names: nil, filter_device_display_names: nil, filter_device_form_factors: nil, filter_interval_end_time: nil, filter_interval_start_time: nil, filter_issue_content: nil, filter_issue_error_types: nil, filter_issue_id: nil, filter_issue_signals: nil, filter_issue_state: nil, filter_issue_states: nil, filter_issue_variant_id: nil, filter_operating_system_display_names: nil, filter_version_display_names: nil, granularity: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::Report::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::Report
          command.params['name'] = name unless name.nil?
          command.query['filter.browser.displayNames'] = filter_browser_display_names unless filter_browser_display_names.nil?
          command.query['filter.device.displayNames'] = filter_device_display_names unless filter_device_display_names.nil?
          command.query['filter.device.formFactors'] = filter_device_form_factors unless filter_device_form_factors.nil?
          command.query['filter.interval.endTime'] = filter_interval_end_time unless filter_interval_end_time.nil?
          command.query['filter.interval.startTime'] = filter_interval_start_time unless filter_interval_start_time.nil?
          command.query['filter.issue.content'] = filter_issue_content unless filter_issue_content.nil?
          command.query['filter.issue.errorTypes'] = filter_issue_error_types unless filter_issue_error_types.nil?
          command.query['filter.issue.id'] = filter_issue_id unless filter_issue_id.nil?
          command.query['filter.issue.signals'] = filter_issue_signals unless filter_issue_signals.nil?
          command.query['filter.issue.state'] = filter_issue_state unless filter_issue_state.nil?
          command.query['filter.issue.states'] = filter_issue_states unless filter_issue_states.nil?
          command.query['filter.issue.variantId'] = filter_issue_variant_id unless filter_issue_variant_id.nil?
          command.query['filter.operatingSystem.displayNames'] = filter_operating_system_display_names unless filter_operating_system_display_names.nil?
          command.query['filter.version.displayNames'] = filter_version_display_names unless filter_version_display_names.nil?
          command.query['granularity'] = granularity unless granularity.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all of the available reports.
        # @param [String] parent
        #   Required. The firebase application. Format: "projects/`project`/apps/`app_id`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_reports(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/reports', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::ListReportsResponse::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::ListReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enqueues a request to permanently remove crash reports associated with the
        # specified user. All reports belonging to the specified user will be deleted
        # typically within 24 hours of receiving the crash report.
        # @param [String] name
        #   Required. Resource name for user reports, in the format: projects/
        #   PROJECT_IDENTIFIER/apps/APP_ID/users/USER_ID/crashReports - PROJECT_IDENTIFIER:
        #   The Firebase project's project number (recommended) or its project ID. Learn
        #   more about using project identifiers in Google's [AIP 2510 standard](https://
        #   google.aip.dev/cloud/2510). - APP_ID: The globally unique, Firebase-assigned
        #   identifier for the Firebase App. This is not your package name or bundle ID.
        #   Learn how to [find your app ID](https://firebase.google.com/support/faq/#find-
        #   app-id). - USER_ID: The user ID set using the Crashlytics SDK. Learn how to [
        #   set user identifiers](https://firebase.google.com/docs/crashlytics/customize-
        #   crash-reports#set-user-ids).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasecrashlyticsV1alpha::DeleteUserCrashReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::DeleteUserCrashReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_app_user_crash_reports(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebasecrashlyticsV1alpha::DeleteUserCrashReportsResponse::Representation
          command.response_class = Google::Apis::FirebasecrashlyticsV1alpha::DeleteUserCrashReportsResponse
          command.params['name'] = name unless name.nil?
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
