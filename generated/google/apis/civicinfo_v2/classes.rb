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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CivicinfoV2
      
      # Describes information about a regional election administrative area.
      class AdministrationRegion
        include Google::Apis::Core::Hashable
      
        # Information about an election administrative body (e.g. County Board of
        # Elections).
        # Corresponds to the JSON property `electionAdministrationBody`
        # @return [Google::Apis::CivicinfoV2::AdministrativeBody]
        attr_accessor :election_administration_body
      
        # An ID for this object. IDs may change in future requests and should not be
        # cached. Access to this field requires special access that can be requested
        # from the Request more link on the Quotas page.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Describes information about a regional election administrative area.
        # Corresponds to the JSON property `local_jurisdiction`
        # @return [Google::Apis::CivicinfoV2::AdministrationRegion]
        attr_accessor :local_jurisdiction
      
        # The name of the jurisdiction.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of sources for this area. If multiple sources are listed the data has
        # been aggregated from those sources.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CivicinfoV2::Source>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @election_administration_body = args[:election_administration_body] if args.key?(:election_administration_body)
          @id = args[:id] if args.key?(:id)
          @local_jurisdiction = args[:local_jurisdiction] if args.key?(:local_jurisdiction)
          @name = args[:name] if args.key?(:name)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Information about an election administrative body (e.g. County Board of
      # Elections).
      class AdministrativeBody
        include Google::Apis::Core::Hashable
      
        # A URL provided by this administrative body for information on absentee voting.
        # Corresponds to the JSON property `absenteeVotingInfoUrl`
        # @return [String]
        attr_accessor :absentee_voting_info_url
      
        # 
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # A URL provided by this administrative body to give contest information to the
        # voter.
        # Corresponds to the JSON property `ballotInfoUrl`
        # @return [String]
        attr_accessor :ballot_info_url
      
        # A simple representation of an address.
        # Corresponds to the JSON property `correspondenceAddress`
        # @return [Google::Apis::CivicinfoV2::SimpleAddressType]
        attr_accessor :correspondence_address
      
        # A URL provided by this administrative body for looking up general election
        # information.
        # Corresponds to the JSON property `electionInfoUrl`
        # @return [String]
        attr_accessor :election_info_url
      
        # The election officials for this election administrative body.
        # Corresponds to the JSON property `electionOfficials`
        # @return [Array<Google::Apis::CivicinfoV2::ElectionOfficial>]
        attr_accessor :election_officials
      
        # A URL provided by this administrative body for confirming that the voter is
        # registered to vote.
        # Corresponds to the JSON property `electionRegistrationConfirmationUrl`
        # @return [String]
        attr_accessor :election_registration_confirmation_url
      
        # A URL provided by this administrative body for looking up how to register to
        # vote.
        # Corresponds to the JSON property `electionRegistrationUrl`
        # @return [String]
        attr_accessor :election_registration_url
      
        # A URL provided by this administrative body describing election rules to the
        # voter.
        # Corresponds to the JSON property `electionRulesUrl`
        # @return [String]
        attr_accessor :election_rules_url
      
        # A description of the hours of operation for this administrative body.
        # Corresponds to the JSON property `hoursOfOperation`
        # @return [String]
        attr_accessor :hours_of_operation
      
        # The name of this election administrative body.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A simple representation of an address.
        # Corresponds to the JSON property `physicalAddress`
        # @return [Google::Apis::CivicinfoV2::SimpleAddressType]
        attr_accessor :physical_address
      
        # A description of the services this administrative body may provide.
        # Corresponds to the JSON property `voter_services`
        # @return [Array<String>]
        attr_accessor :voter_services
      
        # A URL provided by this administrative body for looking up where to vote.
        # Corresponds to the JSON property `votingLocationFinderUrl`
        # @return [String]
        attr_accessor :voting_location_finder_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @absentee_voting_info_url = args[:absentee_voting_info_url] if args.key?(:absentee_voting_info_url)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @ballot_info_url = args[:ballot_info_url] if args.key?(:ballot_info_url)
          @correspondence_address = args[:correspondence_address] if args.key?(:correspondence_address)
          @election_info_url = args[:election_info_url] if args.key?(:election_info_url)
          @election_officials = args[:election_officials] if args.key?(:election_officials)
          @election_registration_confirmation_url = args[:election_registration_confirmation_url] if args.key?(:election_registration_confirmation_url)
          @election_registration_url = args[:election_registration_url] if args.key?(:election_registration_url)
          @election_rules_url = args[:election_rules_url] if args.key?(:election_rules_url)
          @hours_of_operation = args[:hours_of_operation] if args.key?(:hours_of_operation)
          @name = args[:name] if args.key?(:name)
          @physical_address = args[:physical_address] if args.key?(:physical_address)
          @voter_services = args[:voter_services] if args.key?(:voter_services)
          @voting_location_finder_url = args[:voting_location_finder_url] if args.key?(:voting_location_finder_url)
        end
      end
      
      # Information about a candidate running for elected office.
      class Candidate
        include Google::Apis::Core::Hashable
      
        # The URL for the candidate's campaign web site.
        # Corresponds to the JSON property `candidateUrl`
        # @return [String]
        attr_accessor :candidate_url
      
        # A list of known (social) media channels for this candidate.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::CivicinfoV2::Channel>]
        attr_accessor :channels
      
        # The email address for the candidate's campaign.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The candidate's name. If this is a joint ticket it will indicate the name of
        # the candidate at the top of a ticket followed by a / and that name of
        # candidate at the bottom of the ticket. e.g. "Mitt Romney / Paul Ryan"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The order the candidate appears on the ballot for this contest.
        # Corresponds to the JSON property `orderOnBallot`
        # @return [Fixnum]
        attr_accessor :order_on_ballot
      
        # The full name of the party the candidate is a member of.
        # Corresponds to the JSON property `party`
        # @return [String]
        attr_accessor :party
      
        # The voice phone number for the candidate's campaign office.
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        # A URL for a photo of the candidate.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidate_url = args[:candidate_url] if args.key?(:candidate_url)
          @channels = args[:channels] if args.key?(:channels)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @order_on_ballot = args[:order_on_ballot] if args.key?(:order_on_ballot)
          @party = args[:party] if args.key?(:party)
          @phone = args[:phone] if args.key?(:phone)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
        end
      end
      
      # A social media or web channel for a candidate.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The unique public identifier for the candidate's channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of channel. The following is a list of types of channels, but is not
        # exhaustive. More channel types may be added at a later time. One of:
        # GooglePlus, YouTube, Facebook, Twitter
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information about a contest that appears on a voter's ballot.
      class Contest
        include Google::Apis::Core::Hashable
      
        # A number specifying the position of this contest on the voter's ballot.
        # Corresponds to the JSON property `ballotPlacement`
        # @return [Fixnum]
        attr_accessor :ballot_placement
      
        # The candidate choices for this contest.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::CivicinfoV2::Candidate>]
        attr_accessor :candidates
      
        # Describes the geographic scope of a contest.
        # Corresponds to the JSON property `district`
        # @return [Google::Apis::CivicinfoV2::ElectoralDistrict]
        attr_accessor :district
      
        # A description of any additional eligibility requirements for voting in this
        # contest.
        # Corresponds to the JSON property `electorateSpecifications`
        # @return [String]
        attr_accessor :electorate_specifications
      
        # An ID for this object. IDs may change in future requests and should not be
        # cached. Access to this field requires special access that can be requested
        # from the Request more link on the Quotas page.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The levels of government of the office for this contest. There may be more
        # than one in cases where a jurisdiction effectively acts at two different
        # levels of government; for example, the mayor of the District of Columbia acts
        # at "locality" level, but also effectively at both "administrative-area-2" and "
        # administrative-area-1".
        # Corresponds to the JSON property `level`
        # @return [Array<String>]
        attr_accessor :level
      
        # The number of candidates that will be elected to office in this contest.
        # Corresponds to the JSON property `numberElected`
        # @return [Fixnum]
        attr_accessor :number_elected
      
        # The number of candidates that a voter may vote for in this contest.
        # Corresponds to the JSON property `numberVotingFor`
        # @return [Fixnum]
        attr_accessor :number_voting_for
      
        # The name of the office for this contest.
        # Corresponds to the JSON property `office`
        # @return [String]
        attr_accessor :office
      
        # If this is a partisan election, the name of the party it is for.
        # Corresponds to the JSON property `primaryParty`
        # @return [String]
        attr_accessor :primary_party
      
        # The set of ballot responses for the referendum. A ballot response represents a
        # line on the ballot. Common examples might include "yes" or "no" for referenda.
        # This field is only populated for contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumBallotResponses`
        # @return [Array<String>]
        attr_accessor :referendum_ballot_responses
      
        # Specifies a short summary of the referendum that is typically on the ballot
        # below the title but above the text. This field is only populated for contests
        # of type 'Referendum'.
        # Corresponds to the JSON property `referendumBrief`
        # @return [String]
        attr_accessor :referendum_brief
      
        # A statement in opposition to the referendum. It does not necessarily appear on
        # the ballot. This field is only populated for contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumConStatement`
        # @return [String]
        attr_accessor :referendum_con_statement
      
        # Specifies what effect abstaining (not voting) on the proposition will have (i.
        # e. whether abstaining is considered a vote against it). This field is only
        # populated for contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumEffectOfAbstain`
        # @return [String]
        attr_accessor :referendum_effect_of_abstain
      
        # The threshold of votes that the referendum needs in order to pass, e.g. "two-
        # thirds". This field is only populated for contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumPassageThreshold`
        # @return [String]
        attr_accessor :referendum_passage_threshold
      
        # A statement in favor of the referendum. It does not necessarily appear on the
        # ballot. This field is only populated for contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumProStatement`
        # @return [String]
        attr_accessor :referendum_pro_statement
      
        # A brief description of the referendum. This field is only populated for
        # contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumSubtitle`
        # @return [String]
        attr_accessor :referendum_subtitle
      
        # The full text of the referendum. This field is only populated for contests of
        # type 'Referendum'.
        # Corresponds to the JSON property `referendumText`
        # @return [String]
        attr_accessor :referendum_text
      
        # The title of the referendum (e.g. 'Proposition 42'). This field is only
        # populated for contests of type 'Referendum'.
        # Corresponds to the JSON property `referendumTitle`
        # @return [String]
        attr_accessor :referendum_title
      
        # A link to the referendum. This field is only populated for contests of type '
        # Referendum'.
        # Corresponds to the JSON property `referendumUrl`
        # @return [String]
        attr_accessor :referendum_url
      
        # The roles which this office fulfills.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        # A list of sources for this contest. If multiple sources are listed, the data
        # has been aggregated from those sources.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CivicinfoV2::Source>]
        attr_accessor :sources
      
        # "Yes" or "No" depending on whether this a contest being held outside the
        # normal election cycle.
        # Corresponds to the JSON property `special`
        # @return [String]
        attr_accessor :special
      
        # The type of contest. Usually this will be 'General', 'Primary', or 'Run-off'
        # for contests with candidates. For referenda this will be 'Referendum'. For
        # Retention contests this will typically be 'Retention'.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ballot_placement = args[:ballot_placement] if args.key?(:ballot_placement)
          @candidates = args[:candidates] if args.key?(:candidates)
          @district = args[:district] if args.key?(:district)
          @electorate_specifications = args[:electorate_specifications] if args.key?(:electorate_specifications)
          @id = args[:id] if args.key?(:id)
          @level = args[:level] if args.key?(:level)
          @number_elected = args[:number_elected] if args.key?(:number_elected)
          @number_voting_for = args[:number_voting_for] if args.key?(:number_voting_for)
          @office = args[:office] if args.key?(:office)
          @primary_party = args[:primary_party] if args.key?(:primary_party)
          @referendum_ballot_responses = args[:referendum_ballot_responses] if args.key?(:referendum_ballot_responses)
          @referendum_brief = args[:referendum_brief] if args.key?(:referendum_brief)
          @referendum_con_statement = args[:referendum_con_statement] if args.key?(:referendum_con_statement)
          @referendum_effect_of_abstain = args[:referendum_effect_of_abstain] if args.key?(:referendum_effect_of_abstain)
          @referendum_passage_threshold = args[:referendum_passage_threshold] if args.key?(:referendum_passage_threshold)
          @referendum_pro_statement = args[:referendum_pro_statement] if args.key?(:referendum_pro_statement)
          @referendum_subtitle = args[:referendum_subtitle] if args.key?(:referendum_subtitle)
          @referendum_text = args[:referendum_text] if args.key?(:referendum_text)
          @referendum_title = args[:referendum_title] if args.key?(:referendum_title)
          @referendum_url = args[:referendum_url] if args.key?(:referendum_url)
          @roles = args[:roles] if args.key?(:roles)
          @sources = args[:sources] if args.key?(:sources)
          @special = args[:special] if args.key?(:special)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ContextParams
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientProfile`
        # @return [String]
        attr_accessor :client_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_profile = args[:client_profile] if args.key?(:client_profile)
        end
      end
      
      # A request to look up representative information for a single division.
      class DivisionRepresentativeInfoRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextParams`
        # @return [Google::Apis::CivicinfoV2::ContextParams]
        attr_accessor :context_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_params = args[:context_params] if args.key?(:context_params)
        end
      end
      
      # A search request for political geographies.
      class DivisionSearchRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextParams`
        # @return [Google::Apis::CivicinfoV2::ContextParams]
        attr_accessor :context_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_params = args[:context_params] if args.key?(:context_params)
        end
      end
      
      # The result of a division search query.
      class SearchDivisionResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "civicinfo#
        # divisionSearchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CivicinfoV2::DivisionSearchResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Represents a political geographic division that matches the requested query.
      class DivisionSearchResult
        include Google::Apis::Core::Hashable
      
        # Other Open Civic Data identifiers that refer to the same division -- for
        # example, those that refer to other political divisions whose boundaries are
        # defined to be coterminous with this one. For example, ocd-division/country:us/
        # state:wy will include an alias of ocd-division/country:us/state:wy/cd:1, since
        # Wyoming has only one Congressional district.
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # The name of the division.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique Open Civic Data identifier for this division.
        # Corresponds to the JSON property `ocdId`
        # @return [String]
        attr_accessor :ocd_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @name = args[:name] if args.key?(:name)
          @ocd_id = args[:ocd_id] if args.key?(:ocd_id)
        end
      end
      
      # Information about the election that was queried.
      class Election
        include Google::Apis::Core::Hashable
      
        # Day of the election in YYYY-MM-DD format.
        # Corresponds to the JSON property `electionDay`
        # @return [String]
        attr_accessor :election_day
      
        # The unique ID of this election.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # A displayable name for the election.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The political division of the election. Represented as an OCD Division ID.
        # Voters within these political jurisdictions are covered by this election. This
        # is typically a state such as ocd-division/country:us/state:ca or for the
        # midterms or general election the entire US (i.e. ocd-division/country:us).
        # Corresponds to the JSON property `ocdDivisionId`
        # @return [String]
        attr_accessor :ocd_division_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @election_day = args[:election_day] if args.key?(:election_day)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @ocd_division_id = args[:ocd_division_id] if args.key?(:ocd_division_id)
        end
      end
      
      # Information about individual election officials.
      class ElectionOfficial
        include Google::Apis::Core::Hashable
      
        # The email address of the election official.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The fax number of the election official.
        # Corresponds to the JSON property `faxNumber`
        # @return [String]
        attr_accessor :fax_number
      
        # The full name of the election official.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The office phone number of the election official.
        # Corresponds to the JSON property `officePhoneNumber`
        # @return [String]
        attr_accessor :office_phone_number
      
        # The title of the election official.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @fax_number = args[:fax_number] if args.key?(:fax_number)
          @name = args[:name] if args.key?(:name)
          @office_phone_number = args[:office_phone_number] if args.key?(:office_phone_number)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class ElectionsQueryRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextParams`
        # @return [Google::Apis::CivicinfoV2::ContextParams]
        attr_accessor :context_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_params = args[:context_params] if args.key?(:context_params)
        end
      end
      
      # The list of elections available for this version of the API.
      class QueryElectionsResponse
        include Google::Apis::Core::Hashable
      
        # A list of available elections
        # Corresponds to the JSON property `elections`
        # @return [Array<Google::Apis::CivicinfoV2::Election>]
        attr_accessor :elections
      
        # Identifies what kind of resource this is. Value: the fixed string "civicinfo#
        # electionsQueryResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elections = args[:elections] if args.key?(:elections)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Describes the geographic scope of a contest.
      class ElectoralDistrict
        include Google::Apis::Core::Hashable
      
        # An identifier for this district, relative to its scope. For example, the 34th
        # State Senate district would have id "34" and a scope of stateUpper.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kgForeignKey`
        # @return [String]
        attr_accessor :kg_foreign_key
      
        # The name of the district.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The geographic scope of this district. If unspecified the district's geography
        # is not known. One of: national, statewide, congressional, stateUpper,
        # stateLower, countywide, judicial, schoolBoard, cityWide, township,
        # countyCouncil, cityCouncil, ward, special
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kg_foreign_key = args[:kg_foreign_key] if args.key?(:kg_foreign_key)
          @name = args[:name] if args.key?(:name)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Describes a political geography.
      class GeographicDivision
        include Google::Apis::Core::Hashable
      
        # Any other valid OCD IDs that refer to the same division.
        # Because OCD IDs are meant to be human-readable and at least somewhat
        # predictable, there are occasionally several identifiers for a single division.
        # These identifiers are defined to be equivalent to one another, and one is
        # always indicated as the primary identifier. The primary identifier will be
        # returned in ocd_id above, and any other equivalent valid identifiers will be
        # returned in this list.
        # For example, if this division's OCD ID is ocd-division/country:us/district:dc,
        # this will contain ocd-division/country:us/state:dc.
        # Corresponds to the JSON property `alsoKnownAs`
        # @return [Array<String>]
        attr_accessor :also_known_as
      
        # The name of the division.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of indices in the offices array, one for each office elected from this
        # division. Will only be present if includeOffices was true (or absent) in the
        # request.
        # Corresponds to the JSON property `officeIndices`
        # @return [Array<Fixnum>]
        attr_accessor :office_indices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @also_known_as = args[:also_known_as] if args.key?(:also_known_as)
          @name = args[:name] if args.key?(:name)
          @office_indices = args[:office_indices] if args.key?(:office_indices)
        end
      end
      
      # Information about an Office held by one or more Officials.
      class Office
        include Google::Apis::Core::Hashable
      
        # The OCD ID of the division with which this office is associated.
        # Corresponds to the JSON property `divisionId`
        # @return [String]
        attr_accessor :division_id
      
        # The levels of government of which this office is part. There may be more than
        # one in cases where a jurisdiction effectively acts at two different levels of
        # government; for example, the mayor of the District of Columbia acts at "
        # locality" level, but also effectively at both "administrative-area-2" and "
        # administrative-area-1".
        # Corresponds to the JSON property `levels`
        # @return [Array<String>]
        attr_accessor :levels
      
        # The human-readable name of the office.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of indices in the officials array of people who presently hold this
        # office.
        # Corresponds to the JSON property `officialIndices`
        # @return [Array<Fixnum>]
        attr_accessor :official_indices
      
        # The roles which this office fulfills. Roles are not meant to be exhaustive, or
        # to exactly specify the entire set of responsibilities of a given office, but
        # are meant to be rough categories that are useful for general selection from or
        # sorting of a list of offices.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        # A list of sources for this office. If multiple sources are listed, the data
        # has been aggregated from those sources.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CivicinfoV2::Source>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @division_id = args[:division_id] if args.key?(:division_id)
          @levels = args[:levels] if args.key?(:levels)
          @name = args[:name] if args.key?(:name)
          @official_indices = args[:official_indices] if args.key?(:official_indices)
          @roles = args[:roles] if args.key?(:roles)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Information about a person holding an elected office.
      class Official
        include Google::Apis::Core::Hashable
      
        # Addresses at which to contact the official.
        # Corresponds to the JSON property `address`
        # @return [Array<Google::Apis::CivicinfoV2::SimpleAddressType>]
        attr_accessor :address
      
        # A list of known (social) media channels for this official.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::CivicinfoV2::Channel>]
        attr_accessor :channels
      
        # The direct email addresses for the official.
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        # The official's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full name of the party the official belongs to.
        # Corresponds to the JSON property `party`
        # @return [String]
        attr_accessor :party
      
        # The official's public contact phone numbers.
        # Corresponds to the JSON property `phones`
        # @return [Array<String>]
        attr_accessor :phones
      
        # A URL for a photo of the official.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The official's public website URLs.
        # Corresponds to the JSON property `urls`
        # @return [Array<String>]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @channels = args[:channels] if args.key?(:channels)
          @emails = args[:emails] if args.key?(:emails)
          @name = args[:name] if args.key?(:name)
          @party = args[:party] if args.key?(:party)
          @phones = args[:phones] if args.key?(:phones)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @urls = args[:urls] if args.key?(:urls)
        end
      end
      
      # A location where a voter can vote. This may be an early vote site, an election
      # day voting location, or a drop off location for a completed ballot.
      class PollingLocation
        include Google::Apis::Core::Hashable
      
        # A simple representation of an address.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::CivicinfoV2::SimpleAddressType]
        attr_accessor :address
      
        # The last date that this early vote site or drop off location may be used. This
        # field is not populated for polling locations.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # An ID for this object. IDs may change in future requests and should not be
        # cached. Access to this field requires special access that can be requested
        # from the Request more link on the Quotas page.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the early vote site or drop off location. This field is not
        # populated for polling locations.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Notes about this location (e.g. accessibility ramp or entrance to use).
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # A description of when this location is open.
        # Corresponds to the JSON property `pollingHours`
        # @return [String]
        attr_accessor :polling_hours
      
        # A list of sources for this location. If multiple sources are listed the data
        # has been aggregated from those sources.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CivicinfoV2::Source>]
        attr_accessor :sources
      
        # The first date that this early vote site or drop off location may be used.
        # This field is not populated for polling locations.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # The services provided by this early vote site or drop off location. This field
        # is not populated for polling locations.
        # Corresponds to the JSON property `voterServices`
        # @return [String]
        attr_accessor :voter_services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @end_date = args[:end_date] if args.key?(:end_date)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @notes = args[:notes] if args.key?(:notes)
          @polling_hours = args[:polling_hours] if args.key?(:polling_hours)
          @sources = args[:sources] if args.key?(:sources)
          @start_date = args[:start_date] if args.key?(:start_date)
          @voter_services = args[:voter_services] if args.key?(:voter_services)
        end
      end
      
      # 
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # 
        # Corresponds to the JSON property `administrativeAreaName`
        # @return [String]
        attr_accessor :administrative_area_name
      
        # 
        # Corresponds to the JSON property `countryName`
        # @return [String]
        attr_accessor :country_name
      
        # 
        # Corresponds to the JSON property `countryNameCode`
        # @return [String]
        attr_accessor :country_name_code
      
        # 
        # Corresponds to the JSON property `dependentLocalityName`
        # @return [String]
        attr_accessor :dependent_locality_name
      
        # 
        # Corresponds to the JSON property `dependentThoroughfareLeadingType`
        # @return [String]
        attr_accessor :dependent_thoroughfare_leading_type
      
        # 
        # Corresponds to the JSON property `dependentThoroughfareName`
        # @return [String]
        attr_accessor :dependent_thoroughfare_name
      
        # 
        # Corresponds to the JSON property `dependentThoroughfarePostDirection`
        # @return [String]
        attr_accessor :dependent_thoroughfare_post_direction
      
        # 
        # Corresponds to the JSON property `dependentThoroughfarePreDirection`
        # @return [String]
        attr_accessor :dependent_thoroughfare_pre_direction
      
        # 
        # Corresponds to the JSON property `dependentThoroughfareTrailingType`
        # @return [String]
        attr_accessor :dependent_thoroughfare_trailing_type
      
        # 
        # Corresponds to the JSON property `dependentThoroughfaresConnector`
        # @return [String]
        attr_accessor :dependent_thoroughfares_connector
      
        # 
        # Corresponds to the JSON property `dependentThoroughfaresIndicator`
        # @return [String]
        attr_accessor :dependent_thoroughfares_indicator
      
        # 
        # Corresponds to the JSON property `dependentThoroughfaresType`
        # @return [String]
        attr_accessor :dependent_thoroughfares_type
      
        # 
        # Corresponds to the JSON property `firmName`
        # @return [String]
        attr_accessor :firm_name
      
        # 
        # Corresponds to the JSON property `isDisputed`
        # @return [Boolean]
        attr_accessor :is_disputed
        alias_method :is_disputed?, :is_disputed
      
        # 
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # 
        # Corresponds to the JSON property `localityName`
        # @return [String]
        attr_accessor :locality_name
      
        # 
        # Corresponds to the JSON property `postBoxNumber`
        # @return [String]
        attr_accessor :post_box_number
      
        # 
        # Corresponds to the JSON property `postalCodeNumber`
        # @return [String]
        attr_accessor :postal_code_number
      
        # 
        # Corresponds to the JSON property `postalCodeNumberExtension`
        # @return [String]
        attr_accessor :postal_code_number_extension
      
        # 
        # Corresponds to the JSON property `premiseName`
        # @return [String]
        attr_accessor :premise_name
      
        # 
        # Corresponds to the JSON property `recipientName`
        # @return [String]
        attr_accessor :recipient_name
      
        # 
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # 
        # Corresponds to the JSON property `subAdministrativeAreaName`
        # @return [String]
        attr_accessor :sub_administrative_area_name
      
        # 
        # Corresponds to the JSON property `subPremiseName`
        # @return [String]
        attr_accessor :sub_premise_name
      
        # 
        # Corresponds to the JSON property `thoroughfareLeadingType`
        # @return [String]
        attr_accessor :thoroughfare_leading_type
      
        # 
        # Corresponds to the JSON property `thoroughfareName`
        # @return [String]
        attr_accessor :thoroughfare_name
      
        # 
        # Corresponds to the JSON property `thoroughfareNumber`
        # @return [String]
        attr_accessor :thoroughfare_number
      
        # 
        # Corresponds to the JSON property `thoroughfarePostDirection`
        # @return [String]
        attr_accessor :thoroughfare_post_direction
      
        # 
        # Corresponds to the JSON property `thoroughfarePreDirection`
        # @return [String]
        attr_accessor :thoroughfare_pre_direction
      
        # 
        # Corresponds to the JSON property `thoroughfareTrailingType`
        # @return [String]
        attr_accessor :thoroughfare_trailing_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area_name = args[:administrative_area_name] if args.key?(:administrative_area_name)
          @country_name = args[:country_name] if args.key?(:country_name)
          @country_name_code = args[:country_name_code] if args.key?(:country_name_code)
          @dependent_locality_name = args[:dependent_locality_name] if args.key?(:dependent_locality_name)
          @dependent_thoroughfare_leading_type = args[:dependent_thoroughfare_leading_type] if args.key?(:dependent_thoroughfare_leading_type)
          @dependent_thoroughfare_name = args[:dependent_thoroughfare_name] if args.key?(:dependent_thoroughfare_name)
          @dependent_thoroughfare_post_direction = args[:dependent_thoroughfare_post_direction] if args.key?(:dependent_thoroughfare_post_direction)
          @dependent_thoroughfare_pre_direction = args[:dependent_thoroughfare_pre_direction] if args.key?(:dependent_thoroughfare_pre_direction)
          @dependent_thoroughfare_trailing_type = args[:dependent_thoroughfare_trailing_type] if args.key?(:dependent_thoroughfare_trailing_type)
          @dependent_thoroughfares_connector = args[:dependent_thoroughfares_connector] if args.key?(:dependent_thoroughfares_connector)
          @dependent_thoroughfares_indicator = args[:dependent_thoroughfares_indicator] if args.key?(:dependent_thoroughfares_indicator)
          @dependent_thoroughfares_type = args[:dependent_thoroughfares_type] if args.key?(:dependent_thoroughfares_type)
          @firm_name = args[:firm_name] if args.key?(:firm_name)
          @is_disputed = args[:is_disputed] if args.key?(:is_disputed)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality_name = args[:locality_name] if args.key?(:locality_name)
          @post_box_number = args[:post_box_number] if args.key?(:post_box_number)
          @postal_code_number = args[:postal_code_number] if args.key?(:postal_code_number)
          @postal_code_number_extension = args[:postal_code_number_extension] if args.key?(:postal_code_number_extension)
          @premise_name = args[:premise_name] if args.key?(:premise_name)
          @recipient_name = args[:recipient_name] if args.key?(:recipient_name)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sub_administrative_area_name = args[:sub_administrative_area_name] if args.key?(:sub_administrative_area_name)
          @sub_premise_name = args[:sub_premise_name] if args.key?(:sub_premise_name)
          @thoroughfare_leading_type = args[:thoroughfare_leading_type] if args.key?(:thoroughfare_leading_type)
          @thoroughfare_name = args[:thoroughfare_name] if args.key?(:thoroughfare_name)
          @thoroughfare_number = args[:thoroughfare_number] if args.key?(:thoroughfare_number)
          @thoroughfare_post_direction = args[:thoroughfare_post_direction] if args.key?(:thoroughfare_post_direction)
          @thoroughfare_pre_direction = args[:thoroughfare_pre_direction] if args.key?(:thoroughfare_pre_direction)
          @thoroughfare_trailing_type = args[:thoroughfare_trailing_type] if args.key?(:thoroughfare_trailing_type)
        end
      end
      
      # 
      class RepresentativeInfoData
        include Google::Apis::Core::Hashable
      
        # Political geographic divisions that contain the requested address.
        # Corresponds to the JSON property `divisions`
        # @return [Hash<String,Google::Apis::CivicinfoV2::GeographicDivision>]
        attr_accessor :divisions
      
        # Elected offices referenced by the divisions listed above. Will only be present
        # if includeOffices was true in the request.
        # Corresponds to the JSON property `offices`
        # @return [Array<Google::Apis::CivicinfoV2::Office>]
        attr_accessor :offices
      
        # Officials holding the offices listed above. Will only be present if
        # includeOffices was true in the request.
        # Corresponds to the JSON property `officials`
        # @return [Array<Google::Apis::CivicinfoV2::Official>]
        attr_accessor :officials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @divisions = args[:divisions] if args.key?(:divisions)
          @offices = args[:offices] if args.key?(:offices)
          @officials = args[:officials] if args.key?(:officials)
        end
      end
      
      # A request for political geography and representative information for an
      # address.
      class RepresentativeInfoRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextParams`
        # @return [Google::Apis::CivicinfoV2::ContextParams]
        attr_accessor :context_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_params = args[:context_params] if args.key?(:context_params)
        end
      end
      
      # The result of a representative info lookup query.
      class RepresentativeInfoResponse
        include Google::Apis::Core::Hashable
      
        # Political geographic divisions that contain the requested address.
        # Corresponds to the JSON property `divisions`
        # @return [Hash<String,Google::Apis::CivicinfoV2::GeographicDivision>]
        attr_accessor :divisions
      
        # Identifies what kind of resource this is. Value: the fixed string "civicinfo#
        # representativeInfoResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A simple representation of an address.
        # Corresponds to the JSON property `normalizedInput`
        # @return [Google::Apis::CivicinfoV2::SimpleAddressType]
        attr_accessor :normalized_input
      
        # Elected offices referenced by the divisions listed above. Will only be present
        # if includeOffices was true in the request.
        # Corresponds to the JSON property `offices`
        # @return [Array<Google::Apis::CivicinfoV2::Office>]
        attr_accessor :offices
      
        # Officials holding the offices listed above. Will only be present if
        # includeOffices was true in the request.
        # Corresponds to the JSON property `officials`
        # @return [Array<Google::Apis::CivicinfoV2::Official>]
        attr_accessor :officials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @divisions = args[:divisions] if args.key?(:divisions)
          @kind = args[:kind] if args.key?(:kind)
          @normalized_input = args[:normalized_input] if args.key?(:normalized_input)
          @offices = args[:offices] if args.key?(:offices)
          @officials = args[:officials] if args.key?(:officials)
        end
      end
      
      # A simple representation of an address.
      class SimpleAddressType
        include Google::Apis::Core::Hashable
      
        # The city or town for the address.
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # The street name and number of this address.
        # Corresponds to the JSON property `line1`
        # @return [String]
        attr_accessor :line1
      
        # The second line the address, if needed.
        # Corresponds to the JSON property `line2`
        # @return [String]
        attr_accessor :line2
      
        # The third line of the address, if needed.
        # Corresponds to the JSON property `line3`
        # @return [String]
        attr_accessor :line3
      
        # The name of the location.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # The US two letter state abbreviation of the address.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The US Postal Zip Code of the address.
        # Corresponds to the JSON property `zip`
        # @return [String]
        attr_accessor :zip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @city = args[:city] if args.key?(:city)
          @line1 = args[:line1] if args.key?(:line1)
          @line2 = args[:line2] if args.key?(:line2)
          @line3 = args[:line3] if args.key?(:line3)
          @location_name = args[:location_name] if args.key?(:location_name)
          @state = args[:state] if args.key?(:state)
          @zip = args[:zip] if args.key?(:zip)
        end
      end
      
      # Contains information about the data source for the element containing it.
      class Source
        include Google::Apis::Core::Hashable
      
        # The name of the data source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether this data comes from an official government source.
        # Corresponds to the JSON property `official`
        # @return [Boolean]
        attr_accessor :official
        alias_method :official?, :official
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @official = args[:official] if args.key?(:official)
        end
      end
      
      # A request for information about a voter.
      class VoterInfoRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contextParams`
        # @return [Google::Apis::CivicinfoV2::ContextParams]
        attr_accessor :context_params
      
        # 
        # Corresponds to the JSON property `voterInfoSegmentResult`
        # @return [Google::Apis::CivicinfoV2::VoterInfoSegmentResult]
        attr_accessor :voter_info_segment_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_params = args[:context_params] if args.key?(:context_params)
          @voter_info_segment_result = args[:voter_info_segment_result] if args.key?(:voter_info_segment_result)
        end
      end
      
      # The result of a voter info lookup query.
      class VoterInfoResponse
        include Google::Apis::Core::Hashable
      
        # Contests that will appear on the voter's ballot.
        # Corresponds to the JSON property `contests`
        # @return [Array<Google::Apis::CivicinfoV2::Contest>]
        attr_accessor :contests
      
        # Locations where a voter is eligible to drop off a completed ballot. The voter
        # must have received and completed a ballot prior to arriving at the location.
        # The location may not have ballots available on the premises. These locations
        # could be open on or before election day as indicated in the pollingHours field.
        # Corresponds to the JSON property `dropOffLocations`
        # @return [Array<Google::Apis::CivicinfoV2::PollingLocation>]
        attr_accessor :drop_off_locations
      
        # Locations where the voter is eligible to vote early, prior to election day.
        # Corresponds to the JSON property `earlyVoteSites`
        # @return [Array<Google::Apis::CivicinfoV2::PollingLocation>]
        attr_accessor :early_vote_sites
      
        # Information about the election that was queried.
        # Corresponds to the JSON property `election`
        # @return [Google::Apis::CivicinfoV2::Election]
        attr_accessor :election
      
        # Identifies what kind of resource this is. Value: the fixed string "civicinfo#
        # voterInfoResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Specifies whether voters in the precinct vote only by mailing their ballots (
        # with the possible option of dropping off their ballots as well).
        # Corresponds to the JSON property `mailOnly`
        # @return [Boolean]
        attr_accessor :mail_only
        alias_method :mail_only?, :mail_only
      
        # A simple representation of an address.
        # Corresponds to the JSON property `normalizedInput`
        # @return [Google::Apis::CivicinfoV2::SimpleAddressType]
        attr_accessor :normalized_input
      
        # If no election ID was specified in the query, and there was more than one
        # election with data for the given voter, this will contain information about
        # the other elections that could apply.
        # Corresponds to the JSON property `otherElections`
        # @return [Array<Google::Apis::CivicinfoV2::Election>]
        attr_accessor :other_elections
      
        # Locations where the voter is eligible to vote on election day.
        # Corresponds to the JSON property `pollingLocations`
        # @return [Array<Google::Apis::CivicinfoV2::PollingLocation>]
        attr_accessor :polling_locations
      
        # 
        # Corresponds to the JSON property `precinctId`
        # @return [String]
        attr_accessor :precinct_id
      
        # Local Election Information for the state that the voter votes in. For the US,
        # there will only be one element in this array.
        # Corresponds to the JSON property `state`
        # @return [Array<Google::Apis::CivicinfoV2::AdministrationRegion>]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contests = args[:contests] if args.key?(:contests)
          @drop_off_locations = args[:drop_off_locations] if args.key?(:drop_off_locations)
          @early_vote_sites = args[:early_vote_sites] if args.key?(:early_vote_sites)
          @election = args[:election] if args.key?(:election)
          @kind = args[:kind] if args.key?(:kind)
          @mail_only = args[:mail_only] if args.key?(:mail_only)
          @normalized_input = args[:normalized_input] if args.key?(:normalized_input)
          @other_elections = args[:other_elections] if args.key?(:other_elections)
          @polling_locations = args[:polling_locations] if args.key?(:polling_locations)
          @precinct_id = args[:precinct_id] if args.key?(:precinct_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class VoterInfoSegmentResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `generatedMillis`
        # @return [Fixnum]
        attr_accessor :generated_millis
      
        # 
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::CivicinfoV2::PostalAddress]
        attr_accessor :postal_address
      
        # A request for information about a voter.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::CivicinfoV2::VoterInfoRequest]
        attr_accessor :request
      
        # The result of a voter info lookup query.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::CivicinfoV2::VoterInfoResponse]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generated_millis = args[:generated_millis] if args.key?(:generated_millis)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @request = args[:request] if args.key?(:request)
          @response = args[:response] if args.key?(:response)
        end
      end
    end
  end
end
