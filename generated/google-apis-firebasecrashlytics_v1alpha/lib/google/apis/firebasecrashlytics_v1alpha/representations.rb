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
    module FirebasecrashlyticsV1alpha
      
      class BatchGetEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateIssuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Breadcrumb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Browser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteUserCrashReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exception
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirebaseSessionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Frame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntervalMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueVariant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Log
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Memory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Note
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperatingSystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlayTrack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Storage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Thread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateIssueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebMetricsGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :events, as: 'events', class: Google::Apis::FirebasecrashlyticsV1alpha::Event, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Event::Representation
      
        end
      end
      
      class BatchUpdateIssuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::FirebasecrashlyticsV1alpha::UpdateIssueRequest, decorator: Google::Apis::FirebasecrashlyticsV1alpha::UpdateIssueRequest::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class BatchUpdateIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::FirebasecrashlyticsV1alpha::Issue, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
      
        end
      end
      
      class Breadcrumb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_time, as: 'eventTime'
          hash :params, as: 'params'
          property :title, as: 'title'
        end
      end
      
      class Browser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browser, as: 'browser'
          property :display_name, as: 'displayName'
          property :display_version, as: 'displayVersion'
        end
      end
      
      class DeleteUserCrashReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_complete_time, as: 'targetCompleteTime'
        end
      end
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :company_name, as: 'companyName'
          property :display_name, as: 'displayName'
          property :form_factor, as: 'formFactor'
          property :manufacturer, as: 'manufacturer'
          property :marketing_name, as: 'marketingName'
          property :model, as: 'model'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blamed, as: 'blamed'
          property :code, :numeric_string => true, as: 'code'
          collection :frames, as: 'frames', class: Google::Apis::FirebasecrashlyticsV1alpha::Frame, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Frame::Representation
      
          property :queue, as: 'queue'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_orientation, as: 'appOrientation'
          property :blame_frame, as: 'blameFrame', class: Google::Apis::FirebasecrashlyticsV1alpha::Frame, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Frame::Representation
      
          collection :breadcrumbs, as: 'breadcrumbs', class: Google::Apis::FirebasecrashlyticsV1alpha::Breadcrumb, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Breadcrumb::Representation
      
          property :browser, as: 'browser', class: Google::Apis::FirebasecrashlyticsV1alpha::Browser, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Browser::Representation
      
          property :build_stamp, as: 'buildStamp'
          property :bundle_or_package, as: 'bundleOrPackage'
          property :crashlytics_sdk_version, as: 'crashlyticsSdkVersion'
          hash :custom_keys, as: 'customKeys'
          property :device, as: 'device', class: Google::Apis::FirebasecrashlyticsV1alpha::Device, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Device::Representation
      
          property :device_orientation, as: 'deviceOrientation'
          collection :errors, as: 'errors', class: Google::Apis::FirebasecrashlyticsV1alpha::Error, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Error::Representation
      
          property :event_id, as: 'eventId'
          property :event_time, as: 'eventTime'
          collection :exceptions, as: 'exceptions', class: Google::Apis::FirebasecrashlyticsV1alpha::Exception, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Exception::Representation
      
          property :installation_uuid, as: 'installationUuid'
          property :issue, as: 'issue', class: Google::Apis::FirebasecrashlyticsV1alpha::Issue, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
      
          property :issue_subtitle, as: 'issueSubtitle'
          property :issue_title, as: 'issueTitle'
          property :issue_variant, as: 'issueVariant', class: Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant, decorator: Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant::Representation
      
          collection :logs, as: 'logs', class: Google::Apis::FirebasecrashlyticsV1alpha::Log, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Log::Representation
      
          property :memory, as: 'memory', class: Google::Apis::FirebasecrashlyticsV1alpha::Memory, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Memory::Representation
      
          property :name, as: 'name'
          property :operating_system, as: 'operatingSystem', class: Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem, decorator: Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem::Representation
      
          property :platform, as: 'platform'
          property :process_state, as: 'processState'
          property :received_time, as: 'receivedTime'
          property :route_path, as: 'routePath'
          property :session_id, as: 'sessionId'
          property :storage, as: 'storage', class: Google::Apis::FirebasecrashlyticsV1alpha::Storage, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Storage::Representation
      
          collection :threads, as: 'threads', class: Google::Apis::FirebasecrashlyticsV1alpha::Thread, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Thread::Representation
      
          property :user, as: 'user', class: Google::Apis::FirebasecrashlyticsV1alpha::User, decorator: Google::Apis::FirebasecrashlyticsV1alpha::User::Representation
      
          property :version, as: 'version', class: Google::Apis::FirebasecrashlyticsV1alpha::Version, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Version::Representation
      
        end
      end
      
      class Exception
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blamed, as: 'blamed'
          property :exception_message, as: 'exceptionMessage'
          collection :frames, as: 'frames', class: Google::Apis::FirebasecrashlyticsV1alpha::Frame, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Frame::Representation
      
          property :nested, as: 'nested'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class FirebaseSessionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::FirebasecrashlyticsV1alpha::Device, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Device::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :firebase_installation_id, as: 'firebaseInstallationId'
          property :first_session_id, as: 'firstSessionId'
          property :operating_system, as: 'operatingSystem', class: Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem, decorator: Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem::Representation
      
          property :session_id, as: 'sessionId'
          property :session_index, as: 'sessionIndex'
          property :version, as: 'version', class: Google::Apis::FirebasecrashlyticsV1alpha::Version, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Version::Representation
      
        end
      end
      
      class Frame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, :numeric_string => true, as: 'address'
          property :blamed, as: 'blamed'
          property :column, :numeric_string => true, as: 'column'
          property :file, as: 'file'
          property :library, as: 'library'
          property :line, :numeric_string => true, as: 'line'
          property :offset, :numeric_string => true, as: 'offset'
          property :owner, as: 'owner'
          property :symbol, as: 'symbol'
        end
      end
      
      class IntervalMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :events_count, :numeric_string => true, as: 'eventsCount'
          property :impacted_users_count, :numeric_string => true, as: 'impactedUsersCount'
          property :sessions_count, :numeric_string => true, as: 'sessionsCount'
          property :start_time, as: 'startTime'
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_type, as: 'errorType'
          property :first_seen_time, as: 'firstSeenTime'
          property :first_seen_version, as: 'firstSeenVersion'
          property :id, as: 'id'
          property :last_seen_time, as: 'lastSeenTime'
          property :last_seen_version, as: 'lastSeenVersion'
          property :name, as: 'name'
          property :notes_count, :numeric_string => true, as: 'notesCount'
          property :sample_event, as: 'sampleEvent'
          collection :signals, as: 'signals', class: Google::Apis::FirebasecrashlyticsV1alpha::IssueSignals, decorator: Google::Apis::FirebasecrashlyticsV1alpha::IssueSignals::Representation
      
          property :state, as: 'state'
          property :state_update_time, as: 'stateUpdateTime'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
          property :uri, as: 'uri'
          collection :variants, as: 'variants', class: Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant, decorator: Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant::Representation
      
        end
      end
      
      class IssueSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :signal, as: 'signal'
        end
      end
      
      class IssueVariant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :sample_event, as: 'sampleEvent'
          property :uri, as: 'uri'
        end
      end
      
      class ListEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :events, as: 'events', class: Google::Apis::FirebasecrashlyticsV1alpha::Event, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Event::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notes, as: 'notes', class: Google::Apis::FirebasecrashlyticsV1alpha::Note, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Note::Representation
      
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reports, as: 'reports', class: Google::Apis::FirebasecrashlyticsV1alpha::Report, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Report::Representation
      
        end
      end
      
      class Log
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_time, as: 'logTime'
          property :message, as: 'message'
        end
      end
      
      class Memory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free, :numeric_string => true, as: 'free'
          property :used, :numeric_string => true, as: 'used'
        end
      end
      
      class Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author'
          property :body, as: 'body'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
        end
      end
      
      class OperatingSystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_type, as: 'deviceType'
          property :display_name, as: 'displayName'
          property :display_version, as: 'displayVersion'
          property :modification_state, as: 'modificationState'
          property :os, as: 'os'
          property :type, as: 'type'
        end
      end
      
      class PlayTrack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :groups, as: 'groups', class: Google::Apis::FirebasecrashlyticsV1alpha::ReportGroup, decorator: Google::Apis::FirebasecrashlyticsV1alpha::ReportGroup::Representation
      
          property :name, as: 'name'
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
          property :usage, as: 'usage'
        end
      end
      
      class ReportGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browser, as: 'browser', class: Google::Apis::FirebasecrashlyticsV1alpha::Browser, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Browser::Representation
      
          property :device, as: 'device', class: Google::Apis::FirebasecrashlyticsV1alpha::Device, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Device::Representation
      
          property :issue, as: 'issue', class: Google::Apis::FirebasecrashlyticsV1alpha::Issue, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::FirebasecrashlyticsV1alpha::IntervalMetrics, decorator: Google::Apis::FirebasecrashlyticsV1alpha::IntervalMetrics::Representation
      
          property :operating_system, as: 'operatingSystem', class: Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem, decorator: Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem::Representation
      
          collection :subgroups, as: 'subgroups', class: Google::Apis::FirebasecrashlyticsV1alpha::ReportGroup, decorator: Google::Apis::FirebasecrashlyticsV1alpha::ReportGroup::Representation
      
          property :variant, as: 'variant', class: Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant, decorator: Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant::Representation
      
          property :version, as: 'version', class: Google::Apis::FirebasecrashlyticsV1alpha::Version, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Version::Representation
      
          property :web_metrics_group, as: 'webMetricsGroup', class: Google::Apis::FirebasecrashlyticsV1alpha::WebMetricsGroup, decorator: Google::Apis::FirebasecrashlyticsV1alpha::WebMetricsGroup::Representation
      
        end
      end
      
      class Storage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free, :numeric_string => true, as: 'free'
          property :used, :numeric_string => true, as: 'used'
        end
      end
      
      class Thread
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blamed, as: 'blamed'
          property :crash_address, :numeric_string => true, as: 'crashAddress'
          property :crashed, as: 'crashed'
          collection :frames, as: 'frames', class: Google::Apis::FirebasecrashlyticsV1alpha::Frame, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Frame::Representation
      
          property :name, as: 'name'
          property :queue, as: 'queue'
          property :signal, as: 'signal'
          property :signal_code, as: 'signalCode'
          property :subtitle, as: 'subtitle'
          property :sys_thread_id, :numeric_string => true, as: 'sysThreadId'
          property :thread_id, :numeric_string => true, as: 'threadId'
          property :thread_state, as: 'threadState'
          property :title, as: 'title'
        end
      end
      
      class UpdateIssueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue, as: 'issue', class: Google::Apis::FirebasecrashlyticsV1alpha::Issue, decorator: Google::Apis::FirebasecrashlyticsV1alpha::Issue::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_version, as: 'buildVersion'
          property :display_name, as: 'displayName'
          property :display_version, as: 'displayVersion'
          collection :tracks, as: 'tracks', class: Google::Apis::FirebasecrashlyticsV1alpha::PlayTrack, decorator: Google::Apis::FirebasecrashlyticsV1alpha::PlayTrack::Representation
      
        end
      end
      
      class WebMetricsGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
    end
  end
end
