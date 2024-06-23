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
      
      # Active conference.
      class ActiveConference
        include Google::Apis::Core::Hashable
      
        # Output only. Reference to 'ConferenceRecord' resource. Format: `
        # conferenceRecords/`conference_record`` where ``conference_record`` is a unique
        # ID for each instance of a call within a space.
        # Corresponds to the JSON property `conferenceRecord`
        # @return [String]
        attr_accessor :conference_record
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conference_record = args[:conference_record] if args.key?(:conference_record)
        end
      end
      
      # User who joins anonymously (meaning not signed into a Google Account).
      class AnonymousUser
        include Google::Apis::Core::Hashable
      
        # Output only. User provided name when they join a conference anonymously.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Single instance of a meeting held in a space.
      class ConferenceRecord
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the conference ended. Set for past conferences.
        # Unset if the conference is ongoing.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Server enforced expiration time for when this conference record
        # resource is deleted. The resource is deleted 30 days after the conference ends.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Identifier. Resource name of the conference record. Format: `conferenceRecords/
        # `conference_record`` where ``conference_record`` is a unique ID for each
        # instance of a call within a space.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The space where the conference was held.
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        # Output only. Timestamp when the conference started. Always set.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @space = args[:space] if args.key?(:space)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Google Docs location where the transcript file is saved.
      class DocsDestination
        include Google::Apis::Core::Hashable
      
        # Output only. The document ID for the underlying Google Docs transcript file.
        # For example, "1kuceFZohVoCh6FulBHxwy6I15Ogpc4hP". Use the `documents.get`
        # method of the Google Docs API (https://developers.google.com/docs/api/
        # reference/rest/v1/documents/get) to fetch the content.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        # Output only. URI for the Google Docs transcript file. Use `https://docs.google.
        # com/document/d/`$DocumentId`/view` to browse the transcript in the browser.
        # Corresponds to the JSON property `exportUri`
        # @return [String]
        attr_accessor :export_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @export_uri = args[:export_uri] if args.key?(:export_uri)
        end
      end
      
      # Export location where a recording file is saved in Google Drive.
      class DriveDestination
        include Google::Apis::Core::Hashable
      
        # Output only. Link used to play back the recording file in the browser. For
        # example, `https://drive.google.com/file/d/`$fileId`/view`.
        # Corresponds to the JSON property `exportUri`
        # @return [String]
        attr_accessor :export_uri
      
        # Output only. The `fileId` for the underlying MP4 file. For example, "
        # 1kuceFZohVoCh6FulBHxwy6I15Ogpc4hP". Use `$ GET https://www.googleapis.com/
        # drive/v3/files/`$fileId`?alt=media` to download the blob. For more information,
        # see https://developers.google.com/drive/api/v3/reference/files/get.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_uri = args[:export_uri] if args.key?(:export_uri)
          @file = args[:file] if args.key?(:file)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to end an ongoing conference of a space.
      class EndActiveConferenceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of ListConferenceRecords method.
      class ListConferenceRecordsResponse
        include Google::Apis::Core::Hashable
      
        # List of conferences in one page.
        # Corresponds to the JSON property `conferenceRecords`
        # @return [Array<Google::Apis::MeetV2::ConferenceRecord>]
        attr_accessor :conference_records
      
        # Token to be circulated back for further List call if current List does NOT
        # include all the Conferences. Unset if all conferences have been returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conference_records = args[:conference_records] if args.key?(:conference_records)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response of ListParticipants method.
      class ListParticipantSessionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to be circulated back for further List call if current List doesn't
        # include all the participants. Unset if all participants are returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of participants in one page.
        # Corresponds to the JSON property `participantSessions`
        # @return [Array<Google::Apis::MeetV2::ParticipantSession>]
        attr_accessor :participant_sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @participant_sessions = args[:participant_sessions] if args.key?(:participant_sessions)
        end
      end
      
      # Response of ListParticipants method.
      class ListParticipantsResponse
        include Google::Apis::Core::Hashable
      
        # Token to be circulated back for further List call if current List doesn't
        # include all the participants. Unset if all participants are returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of participants in one page.
        # Corresponds to the JSON property `participants`
        # @return [Array<Google::Apis::MeetV2::Participant>]
        attr_accessor :participants
      
        # Total, exact number of `participants`. By default, this field isn't included
        # in the response. Set the field mask in [SystemParameterContext](https://cloud.
        # google.com/apis/docs/system-parameters) to receive this field in the response.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @participants = args[:participants] if args.key?(:participants)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response for ListRecordings method.
      class ListRecordingsResponse
        include Google::Apis::Core::Hashable
      
        # Token to be circulated back for further List call if current List doesn't
        # include all the recordings. Unset if all recordings are returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of recordings in one page.
        # Corresponds to the JSON property `recordings`
        # @return [Array<Google::Apis::MeetV2::Recording>]
        attr_accessor :recordings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @recordings = args[:recordings] if args.key?(:recordings)
        end
      end
      
      # Response for ListTranscriptEntries method.
      class ListTranscriptEntriesResponse
        include Google::Apis::Core::Hashable
      
        # Token to be circulated back for further List call if current List doesn't
        # include all the transcript entries. Unset if all entries are returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of TranscriptEntries in one page.
        # Corresponds to the JSON property `transcriptEntries`
        # @return [Array<Google::Apis::MeetV2::TranscriptEntry>]
        attr_accessor :transcript_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transcript_entries = args[:transcript_entries] if args.key?(:transcript_entries)
        end
      end
      
      # Response for ListTranscripts method.
      class ListTranscriptsResponse
        include Google::Apis::Core::Hashable
      
        # Token to be circulated back for further List call if current List doesn't
        # include all the transcripts. Unset if all transcripts are returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of transcripts in one page.
        # Corresponds to the JSON property `transcripts`
        # @return [Array<Google::Apis::MeetV2::Transcript>]
        attr_accessor :transcripts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transcripts = args[:transcripts] if args.key?(:transcripts)
        end
      end
      
      # User who attended or is attending a conference.
      class Participant
        include Google::Apis::Core::Hashable
      
        # User who joins anonymously (meaning not signed into a Google Account).
        # Corresponds to the JSON property `anonymousUser`
        # @return [Google::Apis::MeetV2::AnonymousUser]
        attr_accessor :anonymous_user
      
        # Output only. Time when the participant first joined the meeting.
        # Corresponds to the JSON property `earliestStartTime`
        # @return [String]
        attr_accessor :earliest_start_time
      
        # Output only. Time when the participant left the meeting for the last time.
        # This can be null if it's an active meeting.
        # Corresponds to the JSON property `latestEndTime`
        # @return [String]
        attr_accessor :latest_end_time
      
        # Output only. Resource name of the participant. Format: `conferenceRecords/`
        # conference_record`/participants/`participant``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User dialing in from a phone where the user's identity is unknown because they
        # haven't signed in with a Google Account.
        # Corresponds to the JSON property `phoneUser`
        # @return [Google::Apis::MeetV2::PhoneUser]
        attr_accessor :phone_user
      
        # A signed-in user can be: a) An individual joining from a personal computer,
        # mobile device, or through companion mode. b) A robot account used by
        # conference room devices.
        # Corresponds to the JSON property `signedinUser`
        # @return [Google::Apis::MeetV2::SignedinUser]
        attr_accessor :signedin_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anonymous_user = args[:anonymous_user] if args.key?(:anonymous_user)
          @earliest_start_time = args[:earliest_start_time] if args.key?(:earliest_start_time)
          @latest_end_time = args[:latest_end_time] if args.key?(:latest_end_time)
          @name = args[:name] if args.key?(:name)
          @phone_user = args[:phone_user] if args.key?(:phone_user)
          @signedin_user = args[:signedin_user] if args.key?(:signedin_user)
        end
      end
      
      # Refers to each unique join or leave session when a user joins a conference
      # from a device. Note that any time a user joins the conference a new unique ID
      # is assigned. That means if a user joins a space multiple times from the same
      # device, they're assigned different IDs, and are also be treated as different
      # participant sessions.
      class ParticipantSession
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the user session ends. Unset if the user session
        # hasn’t ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifier. Session id.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the user session starts.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # User dialing in from a phone where the user's identity is unknown because they
      # haven't signed in with a Google Account.
      class PhoneUser
        include Google::Apis::Core::Hashable
      
        # Output only. Partially redacted user's phone number when calling.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Metadata about a recording created during a conference.
      class Recording
        include Google::Apis::Core::Hashable
      
        # Export location where a recording file is saved in Google Drive.
        # Corresponds to the JSON property `driveDestination`
        # @return [Google::Apis::MeetV2::DriveDestination]
        attr_accessor :drive_destination
      
        # Output only. Timestamp when the recording ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Resource name of the recording. Format: `conferenceRecords/`
        # conference_record`/recordings/`recording`` where ``recording`` is a 1:1
        # mapping to each unique recording session during the conference.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the recording started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Current state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_destination = args[:drive_destination] if args.key?(:drive_destination)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A signed-in user can be: a) An individual joining from a personal computer,
      # mobile device, or through companion mode. b) A robot account used by
      # conference room devices.
      class SignedinUser
        include Google::Apis::Core::Hashable
      
        # Output only. For a personal device, it's the user's first name and last name.
        # For a robot account, it's the administrator-specified device name. For example,
        # "Altostrat Room".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Unique ID for the user. Interoperable with Admin SDK API and
        # People API. Format: `users/`user``
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Virtual place where conferences are held. Only one active conference can be
      # held in one space at any given time.
      class Space
        include Google::Apis::Core::Hashable
      
        # Active conference.
        # Corresponds to the JSON property `activeConference`
        # @return [Google::Apis::MeetV2::ActiveConference]
        attr_accessor :active_conference
      
        # The configuration pertaining to a meeting space.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::MeetV2::SpaceConfig]
        attr_accessor :config
      
        # Output only. Type friendly code to join the meeting. Format: `[a-z]+-[a-z]+-[a-
        # z]+` such as `abc-mnop-xyz`. The maximum length is 128 characters. Can only be
        # used as an alias of the space ID to get the space.
        # Corresponds to the JSON property `meetingCode`
        # @return [String]
        attr_accessor :meeting_code
      
        # Output only. URI used to join meetings, such as `https://meet.google.com/abc-
        # mnop-xyz`.
        # Corresponds to the JSON property `meetingUri`
        # @return [String]
        attr_accessor :meeting_uri
      
        # Immutable. Resource name of the space. Format: `spaces/`space``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_conference = args[:active_conference] if args.key?(:active_conference)
          @config = args[:config] if args.key?(:config)
          @meeting_code = args[:meeting_code] if args.key?(:meeting_code)
          @meeting_uri = args[:meeting_uri] if args.key?(:meeting_uri)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The configuration pertaining to a meeting space.
      class SpaceConfig
        include Google::Apis::Core::Hashable
      
        # Access type of the meeting space that determines who can join without knocking.
        # Default: The user's default access settings. Controlled by the user's admin
        # for enterprise users or RESTRICTED.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Defines the entry points that can be used to join meetings hosted in this
        # meeting space. Default: EntryPointAccess.ALL
        # Corresponds to the JSON property `entryPointAccess`
        # @return [String]
        attr_accessor :entry_point_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @entry_point_access = args[:entry_point_access] if args.key?(:entry_point_access)
        end
      end
      
      # Metadata for a transcript generated from a conference. It refers to the ASR (
      # Automatic Speech Recognition) result of user's speech during the conference.
      class Transcript
        include Google::Apis::Core::Hashable
      
        # Google Docs location where the transcript file is saved.
        # Corresponds to the JSON property `docsDestination`
        # @return [Google::Apis::MeetV2::DocsDestination]
        attr_accessor :docs_destination
      
        # Output only. Timestamp when the transcript stopped.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Resource name of the transcript. Format: `conferenceRecords/`
        # conference_record`/transcripts/`transcript``, where ``transcript`` is a 1:1
        # mapping to each unique transcription session of the conference.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the transcript started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Current state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @docs_destination = args[:docs_destination] if args.key?(:docs_destination)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Single entry for one user’s speech during a transcript session.
      class TranscriptEntry
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the transcript entry ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Language of spoken text, such as "en-US". IETF BCP 47 syntax (
        # https://tools.ietf.org/html/bcp47)
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Resource name of the entry. Format: "conferenceRecords/`
        # conference_record`/transcripts/`transcript`/entries/`entry`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Refers to the participant who speaks.
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # Output only. Timestamp when the transcript entry started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The transcribed text of the participant's voice, at maximum 10K
        # words. Note that the limit is subject to change.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @participant = args[:participant] if args.key?(:participant)
          @start_time = args[:start_time] if args.key?(:start_time)
          @text = args[:text] if args.key?(:text)
        end
      end
    end
  end
end
