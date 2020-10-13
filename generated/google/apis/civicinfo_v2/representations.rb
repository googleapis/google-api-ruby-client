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
      
      class AdministrationRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdministrativeBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Candidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Contest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchDivisionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DivisionSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Election
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ElectionOfficial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryElectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ElectoralDistrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeographicDivision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Office
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Official
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepresentativeInfoData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepresentativeInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleAddressType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoterInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdministrationRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :election_administration_body, as: 'electionAdministrationBody', class: Google::Apis::CivicinfoV2::AdministrativeBody, decorator: Google::Apis::CivicinfoV2::AdministrativeBody::Representation
      
          property :local_jurisdiction, as: 'local_jurisdiction', class: Google::Apis::CivicinfoV2::AdministrationRegion, decorator: Google::Apis::CivicinfoV2::AdministrationRegion::Representation
      
          property :name, as: 'name'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::Source::Representation
      
        end
      end
      
      class AdministrativeBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :absentee_voting_info_url, as: 'absenteeVotingInfoUrl'
          property :ballot_info_url, as: 'ballotInfoUrl'
          property :correspondence_address, as: 'correspondenceAddress', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressType::Representation
      
          property :election_info_url, as: 'electionInfoUrl'
          property :election_notice_text, as: 'electionNoticeText'
          property :election_notice_url, as: 'electionNoticeUrl'
          collection :election_officials, as: 'electionOfficials', class: Google::Apis::CivicinfoV2::ElectionOfficial, decorator: Google::Apis::CivicinfoV2::ElectionOfficial::Representation
      
          property :election_registration_confirmation_url, as: 'electionRegistrationConfirmationUrl'
          property :election_registration_url, as: 'electionRegistrationUrl'
          property :election_rules_url, as: 'electionRulesUrl'
          property :hours_of_operation, as: 'hoursOfOperation'
          property :name, as: 'name'
          property :physical_address, as: 'physicalAddress', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressType::Representation
      
          collection :voter_services, as: 'voter_services'
          property :voting_location_finder_url, as: 'votingLocationFinderUrl'
        end
      end
      
      class Candidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidate_url, as: 'candidateUrl'
          collection :channels, as: 'channels', class: Google::Apis::CivicinfoV2::Channel, decorator: Google::Apis::CivicinfoV2::Channel::Representation
      
          property :email, as: 'email'
          property :name, as: 'name'
          property :order_on_ballot, :numeric_string => true, as: 'orderOnBallot'
          property :party, as: 'party'
          property :phone, as: 'phone'
          property :photo_url, as: 'photoUrl'
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class Contest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ballot_placement, :numeric_string => true, as: 'ballotPlacement'
          property :ballot_title, as: 'ballotTitle'
          collection :candidates, as: 'candidates', class: Google::Apis::CivicinfoV2::Candidate, decorator: Google::Apis::CivicinfoV2::Candidate::Representation
      
          property :district, as: 'district', class: Google::Apis::CivicinfoV2::ElectoralDistrict, decorator: Google::Apis::CivicinfoV2::ElectoralDistrict::Representation
      
          property :electorate_specifications, as: 'electorateSpecifications'
          collection :level, as: 'level'
          property :number_elected, :numeric_string => true, as: 'numberElected'
          property :number_voting_for, :numeric_string => true, as: 'numberVotingFor'
          property :office, as: 'office'
          collection :primary_parties, as: 'primaryParties'
          property :primary_party, as: 'primaryParty'
          collection :referendum_ballot_responses, as: 'referendumBallotResponses'
          property :referendum_brief, as: 'referendumBrief'
          property :referendum_con_statement, as: 'referendumConStatement'
          property :referendum_effect_of_abstain, as: 'referendumEffectOfAbstain'
          property :referendum_passage_threshold, as: 'referendumPassageThreshold'
          property :referendum_pro_statement, as: 'referendumProStatement'
          property :referendum_subtitle, as: 'referendumSubtitle'
          property :referendum_text, as: 'referendumText'
          property :referendum_title, as: 'referendumTitle'
          property :referendum_url, as: 'referendumUrl'
          collection :roles, as: 'roles'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::Source::Representation
      
          property :special, as: 'special'
          property :type, as: 'type'
        end
      end
      
      class SearchDivisionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :results, as: 'results', class: Google::Apis::CivicinfoV2::DivisionSearchResult, decorator: Google::Apis::CivicinfoV2::DivisionSearchResult::Representation
      
        end
      end
      
      class DivisionSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases'
          property :name, as: 'name'
          property :ocd_id, as: 'ocdId'
        end
      end
      
      class Election
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :election_day, as: 'electionDay'
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :ocd_division_id, as: 'ocdDivisionId'
        end
      end
      
      class ElectionOfficial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :fax_number, as: 'faxNumber'
          property :name, as: 'name'
          property :office_phone_number, as: 'officePhoneNumber'
          property :title, as: 'title'
        end
      end
      
      class QueryElectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elections, as: 'elections', class: Google::Apis::CivicinfoV2::Election, decorator: Google::Apis::CivicinfoV2::Election::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ElectoralDistrict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :scope, as: 'scope'
        end
      end
      
      class GeographicDivision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :also_known_as, as: 'alsoKnownAs'
          property :name, as: 'name'
          collection :office_indices, as: 'officeIndices'
        end
      end
      
      class Office
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :division_id, as: 'divisionId'
          collection :levels, as: 'levels'
          property :name, as: 'name'
          collection :official_indices, as: 'officialIndices'
          collection :roles, as: 'roles'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::Source::Representation
      
        end
      end
      
      class Official
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address, as: 'address', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressType::Representation
      
          collection :channels, as: 'channels', class: Google::Apis::CivicinfoV2::Channel, decorator: Google::Apis::CivicinfoV2::Channel::Representation
      
          collection :emails, as: 'emails'
          property :name, as: 'name'
          property :party, as: 'party'
          collection :phones, as: 'phones'
          property :photo_url, as: 'photoUrl'
          collection :urls, as: 'urls'
        end
      end
      
      class PollingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressType::Representation
      
          property :end_date, as: 'endDate'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :polling_hours, as: 'pollingHours'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::Source::Representation
      
          property :start_date, as: 'startDate'
          property :voter_services, as: 'voterServices'
        end
      end
      
      class RepresentativeInfoData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::GeographicDivision, decorator: Google::Apis::CivicinfoV2::GeographicDivision::Representation
      
          collection :offices, as: 'offices', class: Google::Apis::CivicinfoV2::Office, decorator: Google::Apis::CivicinfoV2::Office::Representation
      
          collection :officials, as: 'officials', class: Google::Apis::CivicinfoV2::Official, decorator: Google::Apis::CivicinfoV2::Official::Representation
      
        end
      end
      
      class RepresentativeInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::GeographicDivision, decorator: Google::Apis::CivicinfoV2::GeographicDivision::Representation
      
          property :kind, as: 'kind'
          property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressType::Representation
      
          collection :offices, as: 'offices', class: Google::Apis::CivicinfoV2::Office, decorator: Google::Apis::CivicinfoV2::Office::Representation
      
          collection :officials, as: 'officials', class: Google::Apis::CivicinfoV2::Official, decorator: Google::Apis::CivicinfoV2::Official::Representation
      
        end
      end
      
      class SimpleAddressType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :city, as: 'city'
          property :line1, as: 'line1'
          property :line2, as: 'line2'
          property :line3, as: 'line3'
          property :location_name, as: 'locationName'
          property :state, as: 'state'
          property :zip, as: 'zip'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :official, as: 'official'
        end
      end
      
      class VoterInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contests, as: 'contests', class: Google::Apis::CivicinfoV2::Contest, decorator: Google::Apis::CivicinfoV2::Contest::Representation
      
          collection :drop_off_locations, as: 'dropOffLocations', class: Google::Apis::CivicinfoV2::PollingLocation, decorator: Google::Apis::CivicinfoV2::PollingLocation::Representation
      
          collection :early_vote_sites, as: 'earlyVoteSites', class: Google::Apis::CivicinfoV2::PollingLocation, decorator: Google::Apis::CivicinfoV2::PollingLocation::Representation
      
          property :election, as: 'election', class: Google::Apis::CivicinfoV2::Election, decorator: Google::Apis::CivicinfoV2::Election::Representation
      
          property :kind, as: 'kind'
          property :mail_only, as: 'mailOnly'
          property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressType::Representation
      
          collection :other_elections, as: 'otherElections', class: Google::Apis::CivicinfoV2::Election, decorator: Google::Apis::CivicinfoV2::Election::Representation
      
          collection :polling_locations, as: 'pollingLocations', class: Google::Apis::CivicinfoV2::PollingLocation, decorator: Google::Apis::CivicinfoV2::PollingLocation::Representation
      
          property :precinct_id, as: 'precinctId'
          collection :state, as: 'state', class: Google::Apis::CivicinfoV2::AdministrationRegion, decorator: Google::Apis::CivicinfoV2::AdministrationRegion::Representation
      
        end
      end
    end
  end
end
