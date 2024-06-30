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
    module MeetV2
      # Google Meet API
      #
      # Create and manage meetings in Google Meet.
      #
      # @example
      #    require 'google/apis/meet_v2'
      #
      #    Meet = Google::Apis::MeetV2 # Alias the module
      #    service = Meet::MeetService.new
      #
      # @see https://developers.google.com/meet/api
      class MeetService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://meet.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-meet_v2',
                client_version: Google::Apis::MeetV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets a conference record by conference ID.
        # @param [String] name
        #   Required. Resource name of the conference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ConferenceRecord] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ConferenceRecord]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conference_record(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::ConferenceRecord::Representation
          command.response_class = Google::Apis::MeetV2::ConferenceRecord
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the conference records. By default, ordered by start time and in
        # descending order.
        # @param [String] filter
        #   Optional. User specified filtering condition in [EBNF format](https://en.
        #   wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form). The following are the
        #   filterable fields: * `space.meeting_code` * `space.name` * `start_time` * `
        #   end_time` For example, consider the following filters: * `space.name = "spaces/
        #   NAME"` * `space.meeting_code = "abc-mnop-xyz"` * `start_time>="2024-01-01T00:
        #   00:00.000Z" AND start_time<="2024-01-02T00:00:00.000Z"` * `end_time IS NULL`
        # @param [Fixnum] page_size
        #   Optional. Maximum number of conference records to return. The service might
        #   return fewer than this value. If unspecified, at most 25 conference records
        #   are returned. The maximum value is 100; values above 100 are coerced to 100.
        #   Maximum might change in the future.
        # @param [String] page_token
        #   Optional. Page token returned from previous List Call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ListConferenceRecordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ListConferenceRecordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conference_records(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/conferenceRecords', options)
          command.response_representation = Google::Apis::MeetV2::ListConferenceRecordsResponse::Representation
          command.response_class = Google::Apis::MeetV2::ListConferenceRecordsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a participant by participant ID.
        # @param [String] name
        #   Required. Resource name of the participant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Participant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Participant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conference_record_participant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::Participant::Representation
          command.response_class = Google::Apis::MeetV2::Participant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the participants in a conference record. By default, ordered by join
        # time and in descending order. This API supports `fields` as standard
        # parameters like every other API. However, when the `fields` request parameter
        # is omitted, this API defaults to `'participants/*, next_page_token'`.
        # @param [String] parent
        #   Required. Format: `conferenceRecords/`conference_record``
        # @param [String] filter
        #   Optional. User specified filtering condition in [EBNF format](https://en.
        #   wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form). The following are the
        #   filterable fields: * `earliest_start_time` * `latest_end_time` For example, `
        #   latest_end_time IS NULL` returns active participants in the conference.
        # @param [Fixnum] page_size
        #   Maximum number of participants to return. The service might return fewer than
        #   this value. If unspecified, at most 100 participants are returned. The maximum
        #   value is 250; values above 250 are coerced to 250. Maximum might change in the
        #   future.
        # @param [String] page_token
        #   Page token returned from previous List Call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ListParticipantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ListParticipantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conference_record_participants(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/participants', options)
          command.response_representation = Google::Apis::MeetV2::ListParticipantsResponse::Representation
          command.response_class = Google::Apis::MeetV2::ListParticipantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a participant session by participant session ID.
        # @param [String] name
        #   Required. Resource name of the participant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ParticipantSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ParticipantSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conference_record_participant_participant_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::ParticipantSession::Representation
          command.response_class = Google::Apis::MeetV2::ParticipantSession
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the participant sessions of a participant in a conference record. By
        # default, ordered by join time and in descending order. This API supports `
        # fields` as standard parameters like every other API. However, when the `fields`
        # request parameter is omitted this API defaults to `'participantsessions/*,
        # next_page_token'`.
        # @param [String] parent
        #   Required. Format: `conferenceRecords/`conference_record`/participants/`
        #   participant``
        # @param [String] filter
        #   Optional. User specified filtering condition in [EBNF format](https://en.
        #   wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form). The following are the
        #   filterable fields: * `start_time` * `end_time` For example, `end_time IS NULL`
        #   returns active participant sessions in the conference record.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of participant sessions to return. The service might
        #   return fewer than this value. If unspecified, at most 100 participants are
        #   returned. The maximum value is 250; values above 250 are coerced to 250.
        #   Maximum might change in the future.
        # @param [String] page_token
        #   Optional. Page token returned from previous List Call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ListParticipantSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ListParticipantSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conference_record_participant_participant_sessions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/participantSessions', options)
          command.response_representation = Google::Apis::MeetV2::ListParticipantSessionsResponse::Representation
          command.response_class = Google::Apis::MeetV2::ListParticipantSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a recording by recording ID.
        # @param [String] name
        #   Required. Resource name of the recording.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Recording] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Recording]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conference_record_recording(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::Recording::Representation
          command.response_class = Google::Apis::MeetV2::Recording
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the recording resources from the conference record. By default, ordered
        # by start time and in ascending order.
        # @param [String] parent
        #   Required. Format: `conferenceRecords/`conference_record``
        # @param [Fixnum] page_size
        #   Maximum number of recordings to return. The service might return fewer than
        #   this value. If unspecified, at most 10 recordings are returned. The maximum
        #   value is 100; values above 100 are coerced to 100. Maximum might change in the
        #   future.
        # @param [String] page_token
        #   Page token returned from previous List Call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ListRecordingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ListRecordingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conference_record_recordings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/recordings', options)
          command.response_representation = Google::Apis::MeetV2::ListRecordingsResponse::Representation
          command.response_class = Google::Apis::MeetV2::ListRecordingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a transcript by transcript ID.
        # @param [String] name
        #   Required. Resource name of the transcript.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Transcript] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Transcript]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conference_record_transcript(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::Transcript::Representation
          command.response_class = Google::Apis::MeetV2::Transcript
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the set of transcripts from the conference record. By default, ordered
        # by start time and in ascending order.
        # @param [String] parent
        #   Required. Format: `conferenceRecords/`conference_record``
        # @param [Fixnum] page_size
        #   Maximum number of transcripts to return. The service might return fewer than
        #   this value. If unspecified, at most 10 transcripts are returned. The maximum
        #   value is 100; values above 100 are coerced to 100. Maximum might change in the
        #   future.
        # @param [String] page_token
        #   Page token returned from previous List Call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ListTranscriptsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ListTranscriptsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conference_record_transcripts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/transcripts', options)
          command.response_representation = Google::Apis::MeetV2::ListTranscriptsResponse::Representation
          command.response_class = Google::Apis::MeetV2::ListTranscriptsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a `TranscriptEntry` resource by entry ID. Note: The transcript entries
        # returned by the Google Meet API might not match the transcription found in the
        # Google Docs transcript file. This can occur when the Google Docs transcript
        # file is modified after generation.
        # @param [String] name
        #   Required. Resource name of the `TranscriptEntry`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::TranscriptEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::TranscriptEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conference_record_transcript_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::TranscriptEntry::Representation
          command.response_class = Google::Apis::MeetV2::TranscriptEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the structured transcript entries per transcript. By default, ordered by
        # start time and in ascending order. Note: The transcript entries returned by
        # the Google Meet API might not match the transcription found in the Google Docs
        # transcript file. This can occur when the Google Docs transcript file is
        # modified after generation.
        # @param [String] parent
        #   Required. Format: `conferenceRecords/`conference_record`/transcripts/`
        #   transcript``
        # @param [Fixnum] page_size
        #   Maximum number of entries to return. The service might return fewer than this
        #   value. If unspecified, at most 10 entries are returned. The maximum value is
        #   100; values above 100 are coerced to 100. Maximum might change in the future.
        # @param [String] page_token
        #   Page token returned from previous List Call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::ListTranscriptEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::ListTranscriptEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conference_record_transcript_entries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entries', options)
          command.response_representation = Google::Apis::MeetV2::ListTranscriptEntriesResponse::Representation
          command.response_class = Google::Apis::MeetV2::ListTranscriptEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a space.
        # @param [Google::Apis::MeetV2::Space] space_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_space(space_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/spaces', options)
          command.request_representation = Google::Apis::MeetV2::Space::Representation
          command.request_object = space_object
          command.response_representation = Google::Apis::MeetV2::Space::Representation
          command.response_class = Google::Apis::MeetV2::Space
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Ends an active conference (if there's one).
        # @param [String] name
        #   Required. Resource name of the space.
        # @param [Google::Apis::MeetV2::EndActiveConferenceRequest] end_active_conference_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def end_space_active_conference(name, end_active_conference_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:endActiveConference', options)
          command.request_representation = Google::Apis::MeetV2::EndActiveConferenceRequest::Representation
          command.request_object = end_active_conference_request_object
          command.response_representation = Google::Apis::MeetV2::Empty::Representation
          command.response_class = Google::Apis::MeetV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a space by `space_id` or `meeting_code`.
        # @param [String] name
        #   Required. Resource name of the space.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_space(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MeetV2::Space::Representation
          command.response_class = Google::Apis::MeetV2::Space
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a space.
        # @param [String] name
        #   Immutable. Resource name of the space. Format: `spaces/`space``
        # @param [Google::Apis::MeetV2::Space] space_object
        # @param [String] update_mask
        #   Optional. Field mask used to specify the fields to be updated in the space. If
        #   update_mask isn't provided, it defaults to '*' and updates all fields provided
        #   in the request, including deleting fields not set in the request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MeetV2::Space] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MeetV2::Space]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_space(name, space_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::MeetV2::Space::Representation
          command.request_object = space_object
          command.response_representation = Google::Apis::MeetV2::Space::Representation
          command.response_class = Google::Apis::MeetV2::Space
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
