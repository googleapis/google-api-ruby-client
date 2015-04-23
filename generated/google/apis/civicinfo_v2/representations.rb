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
      
      class AdministrationRegionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AdministrativeBodyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CandidateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DivisionSearchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DivisionSearchResultRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ElectionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ElectionOfficialRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ElectionsQueryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ElectoralDistrictRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeographicDivisionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OfficeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OfficialRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PollingLocationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RepresentativeInfoDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RepresentativeInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SimpleAddressTypeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SourceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VoterInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AdministrationRegionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :election_administration_body, as: 'electionAdministrationBody', class: Google::Apis::CivicinfoV2::AdministrativeBody, decorator: Google::Apis::CivicinfoV2::AdministrativeBodyRepresentation
        
        property :id, as: 'id'
        property :local_jurisdiction, as: 'local_jurisdiction', class: Google::Apis::CivicinfoV2::AdministrationRegion, decorator: Google::Apis::CivicinfoV2::AdministrationRegionRepresentation
        
        property :name, as: 'name'
        collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::SourceRepresentation
      end

      # @private
      class AdministrativeBodyRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :absentee_voting_info_url, as: 'absenteeVotingInfoUrl'
        property :ballot_info_url, as: 'ballotInfoUrl'
        property :correspondence_address, as: 'correspondenceAddress', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressTypeRepresentation
        
        property :election_info_url, as: 'electionInfoUrl'
        collection :election_officials, as: 'electionOfficials', class: Google::Apis::CivicinfoV2::ElectionOfficial, decorator: Google::Apis::CivicinfoV2::ElectionOfficialRepresentation
        
        
        property :election_registration_confirmation_url, as: 'electionRegistrationConfirmationUrl'
        property :election_registration_url, as: 'electionRegistrationUrl'
        property :election_rules_url, as: 'electionRulesUrl'
        property :hours_of_operation, as: 'hoursOfOperation'
        property :name, as: 'name'
        property :physical_address, as: 'physicalAddress', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressTypeRepresentation
        
        collection :voter_services, as: 'voter_services'
        
        property :voting_location_finder_url, as: 'votingLocationFinderUrl'
      end

      # @private
      class CandidateRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :candidate_url, as: 'candidateUrl'
        collection :channels, as: 'channels', class: Google::Apis::CivicinfoV2::Channel, decorator: Google::Apis::CivicinfoV2::ChannelRepresentation
        
        
        property :email, as: 'email'
        property :name, as: 'name'
        property :order_on_ballot, as: 'orderOnBallot'
        property :party, as: 'party'
        property :phone, as: 'phone'
        property :photo_url, as: 'photoUrl'
      end

      # @private
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :type, as: 'type'
      end

      # @private
      class ContestRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :ballot_placement, as: 'ballotPlacement'
        collection :candidates, as: 'candidates', class: Google::Apis::CivicinfoV2::Candidate, decorator: Google::Apis::CivicinfoV2::CandidateRepresentation
        
        
        property :district, as: 'district', class: Google::Apis::CivicinfoV2::ElectoralDistrict, decorator: Google::Apis::CivicinfoV2::ElectoralDistrictRepresentation
        
        property :electorate_specifications, as: 'electorateSpecifications'
        property :id, as: 'id'
        collection :level, as: 'level'
        
        property :number_elected, as: 'numberElected'
        property :number_voting_for, as: 'numberVotingFor'
        property :office, as: 'office'
        property :primary_party, as: 'primaryParty'
        property :referendum_subtitle, as: 'referendumSubtitle'
        property :referendum_title, as: 'referendumTitle'
        property :referendum_url, as: 'referendumUrl'
        collection :roles, as: 'roles'
        
        collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::SourceRepresentation
        
        
        property :special, as: 'special'
        property :type, as: 'type'
      end

      # @private
      class DivisionSearchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        collection :results, as: 'results', class: Google::Apis::CivicinfoV2::DivisionSearchResult, decorator: Google::Apis::CivicinfoV2::DivisionSearchResultRepresentation
      end

      # @private
      class DivisionSearchResultRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :aliases, as: 'aliases'
        
        property :name, as: 'name'
        property :ocd_id, as: 'ocdId'
      end

      # @private
      class ElectionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :election_day, as: 'electionDay'
        property :id, as: 'id'
        property :name, as: 'name'
      end

      # @private
      class ElectionOfficialRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :email_address, as: 'emailAddress'
        property :fax_number, as: 'faxNumber'
        property :name, as: 'name'
        property :office_phone_number, as: 'officePhoneNumber'
        property :title, as: 'title'
      end

      # @private
      class ElectionsQueryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :elections, as: 'elections', class: Google::Apis::CivicinfoV2::Election, decorator: Google::Apis::CivicinfoV2::ElectionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ElectoralDistrictRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :name, as: 'name'
        property :scope, as: 'scope'
      end

      # @private
      class GeographicDivisionRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :also_known_as, as: 'alsoKnownAs'
        
        property :name, as: 'name'
        collection :office_indices, as: 'officeIndices'
      end

      # @private
      class OfficeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :division_id, as: 'divisionId'
        collection :levels, as: 'levels'
        
        property :name, as: 'name'
        collection :official_indices, as: 'officialIndices'
        
        collection :roles, as: 'roles'
        
        collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::SourceRepresentation
      end

      # @private
      class OfficialRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :address, as: 'address', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressTypeRepresentation
        
        
        collection :channels, as: 'channels', class: Google::Apis::CivicinfoV2::Channel, decorator: Google::Apis::CivicinfoV2::ChannelRepresentation
        
        
        collection :emails, as: 'emails'
        
        property :name, as: 'name'
        property :party, as: 'party'
        collection :phones, as: 'phones'
        
        property :photo_url, as: 'photoUrl'
        collection :urls, as: 'urls'
      end

      # @private
      class PollingLocationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :address, as: 'address', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressTypeRepresentation
        
        property :end_date, as: 'endDate'
        property :id, as: 'id'
        property :name, as: 'name'
        property :notes, as: 'notes'
        property :polling_hours, as: 'pollingHours'
        collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::Source, decorator: Google::Apis::CivicinfoV2::SourceRepresentation
        
        
        property :start_date, as: 'startDate'
        property :voter_services, as: 'voterServices'
      end

      # @private
      class RepresentativeInfoDataRepresentation < Google::Apis::Core::JsonRepresentation
        
        hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::GeographicDivision, decorator: Google::Apis::CivicinfoV2::GeographicDivisionRepresentation
        
        
        collection :offices, as: 'offices', class: Google::Apis::CivicinfoV2::Office, decorator: Google::Apis::CivicinfoV2::OfficeRepresentation
        
        
        collection :officials, as: 'officials', class: Google::Apis::CivicinfoV2::Official, decorator: Google::Apis::CivicinfoV2::OfficialRepresentation
      end

      # @private
      class RepresentativeInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::GeographicDivision, decorator: Google::Apis::CivicinfoV2::GeographicDivisionRepresentation
        
        
        property :kind, as: 'kind'
        property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressTypeRepresentation
        
        collection :offices, as: 'offices', class: Google::Apis::CivicinfoV2::Office, decorator: Google::Apis::CivicinfoV2::OfficeRepresentation
        
        
        collection :officials, as: 'officials', class: Google::Apis::CivicinfoV2::Official, decorator: Google::Apis::CivicinfoV2::OfficialRepresentation
      end

      # @private
      class SimpleAddressTypeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :city, as: 'city'
        property :line1, as: 'line1'
        property :line2, as: 'line2'
        property :line3, as: 'line3'
        property :location_name, as: 'locationName'
        property :state, as: 'state'
        property :zip, as: 'zip'
      end

      # @private
      class SourceRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :name, as: 'name'
        property :official, as: 'official'
      end

      # @private
      class VoterInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :contests, as: 'contests', class: Google::Apis::CivicinfoV2::Contest, decorator: Google::Apis::CivicinfoV2::ContestRepresentation
        
        
        collection :drop_off_locations, as: 'dropOffLocations', class: Google::Apis::CivicinfoV2::PollingLocation, decorator: Google::Apis::CivicinfoV2::PollingLocationRepresentation
        
        
        collection :early_vote_sites, as: 'earlyVoteSites', class: Google::Apis::CivicinfoV2::PollingLocation, decorator: Google::Apis::CivicinfoV2::PollingLocationRepresentation
        
        
        property :election, as: 'election', class: Google::Apis::CivicinfoV2::Election, decorator: Google::Apis::CivicinfoV2::ElectionRepresentation
        
        property :kind, as: 'kind'
        property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::SimpleAddressType, decorator: Google::Apis::CivicinfoV2::SimpleAddressTypeRepresentation
        
        collection :other_elections, as: 'otherElections', class: Google::Apis::CivicinfoV2::Election, decorator: Google::Apis::CivicinfoV2::ElectionRepresentation
        
        
        collection :polling_locations, as: 'pollingLocations', class: Google::Apis::CivicinfoV2::PollingLocation, decorator: Google::Apis::CivicinfoV2::PollingLocationRepresentation
        
        
        property :precinct_id, as: 'precinctId'
        collection :state, as: 'state', class: Google::Apis::CivicinfoV2::AdministrationRegion, decorator: Google::Apis::CivicinfoV2::AdministrationRegionRepresentation
      end
    end
  end
end
