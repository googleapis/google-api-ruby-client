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
    module MeetV2
      
      class ActiveConference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnonymousUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConferenceRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndActiveConferenceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConferenceRecordsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListParticipantSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListParticipantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRecordingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTranscriptEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTranscriptsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Participant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParticipantSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Recording
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignedinUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Space
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Transcript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranscriptEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActiveConference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conference_record, as: 'conferenceRecord'
        end
      end
      
      class AnonymousUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class ConferenceRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :space, as: 'space'
          property :start_time, as: 'startTime'
        end
      end
      
      class DocsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :export_uri, as: 'exportUri'
        end
      end
      
      class DriveDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_uri, as: 'exportUri'
          property :file, as: 'file'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EndActiveConferenceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListConferenceRecordsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conference_records, as: 'conferenceRecords', class: Google::Apis::MeetV2::ConferenceRecord, decorator: Google::Apis::MeetV2::ConferenceRecord::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListParticipantSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :participant_sessions, as: 'participantSessions', class: Google::Apis::MeetV2::ParticipantSession, decorator: Google::Apis::MeetV2::ParticipantSession::Representation
      
        end
      end
      
      class ListParticipantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :participants, as: 'participants', class: Google::Apis::MeetV2::Participant, decorator: Google::Apis::MeetV2::Participant::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListRecordingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :recordings, as: 'recordings', class: Google::Apis::MeetV2::Recording, decorator: Google::Apis::MeetV2::Recording::Representation
      
        end
      end
      
      class ListTranscriptEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transcript_entries, as: 'transcriptEntries', class: Google::Apis::MeetV2::TranscriptEntry, decorator: Google::Apis::MeetV2::TranscriptEntry::Representation
      
        end
      end
      
      class ListTranscriptsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transcripts, as: 'transcripts', class: Google::Apis::MeetV2::Transcript, decorator: Google::Apis::MeetV2::Transcript::Representation
      
        end
      end
      
      class Participant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anonymous_user, as: 'anonymousUser', class: Google::Apis::MeetV2::AnonymousUser, decorator: Google::Apis::MeetV2::AnonymousUser::Representation
      
          property :earliest_start_time, as: 'earliestStartTime'
          property :latest_end_time, as: 'latestEndTime'
          property :name, as: 'name'
          property :phone_user, as: 'phoneUser', class: Google::Apis::MeetV2::PhoneUser, decorator: Google::Apis::MeetV2::PhoneUser::Representation
      
          property :signedin_user, as: 'signedinUser', class: Google::Apis::MeetV2::SignedinUser, decorator: Google::Apis::MeetV2::SignedinUser::Representation
      
        end
      end
      
      class ParticipantSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class PhoneUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class Recording
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_destination, as: 'driveDestination', class: Google::Apis::MeetV2::DriveDestination, decorator: Google::Apis::MeetV2::DriveDestination::Representation
      
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class SignedinUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :user, as: 'user'
        end
      end
      
      class Space
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_conference, as: 'activeConference', class: Google::Apis::MeetV2::ActiveConference, decorator: Google::Apis::MeetV2::ActiveConference::Representation
      
          property :config, as: 'config', class: Google::Apis::MeetV2::SpaceConfig, decorator: Google::Apis::MeetV2::SpaceConfig::Representation
      
          property :meeting_code, as: 'meetingCode'
          property :meeting_uri, as: 'meetingUri'
          property :name, as: 'name'
        end
      end
      
      class SpaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :entry_point_access, as: 'entryPointAccess'
        end
      end
      
      class Transcript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :docs_destination, as: 'docsDestination', class: Google::Apis::MeetV2::DocsDestination, decorator: Google::Apis::MeetV2::DocsDestination::Representation
      
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class TranscriptEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :participant, as: 'participant'
          property :start_time, as: 'startTime'
          property :text, as: 'text'
        end
      end
    end
  end
end
