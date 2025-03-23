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
    module CivicinfoV2
      
      class CivicinfoApiprotosV2DivisionByAddressResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2DivisionSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2DivisionSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2ElectionsQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2RepresentativeInfoData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2RepresentativeInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2VoterInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2AdministrationRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2AdministrativeBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Candidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Contest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Election
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2ElectionOfficial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2ElectoralDistrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2GeographicDivision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Office
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Official
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2PollingLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Precinct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2SimpleAddressType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoSchemaV2Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CivicinfoApiprotosV2DivisionByAddressResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2GeographicDivision, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2GeographicDivision::Representation
      
          property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
        end
      end
      
      class CivicinfoApiprotosV2DivisionSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :results, as: 'results', class: Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionSearchResult, decorator: Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionSearchResult::Representation
      
        end
      end
      
      class CivicinfoApiprotosV2DivisionSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases'
          property :name, as: 'name'
          property :ocd_id, as: 'ocdId'
        end
      end
      
      class CivicinfoApiprotosV2ElectionsQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elections, as: 'elections', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Election, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Election::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class CivicinfoApiprotosV2RepresentativeInfoData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2GeographicDivision, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2GeographicDivision::Representation
      
          collection :offices, as: 'offices', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Office, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Office::Representation
      
          collection :officials, as: 'officials', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Official, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Official::Representation
      
        end
      end
      
      class CivicinfoApiprotosV2RepresentativeInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :divisions, as: 'divisions', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2GeographicDivision, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2GeographicDivision::Representation
      
          property :kind, as: 'kind'
          property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
          collection :offices, as: 'offices', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Office, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Office::Representation
      
          collection :officials, as: 'officials', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Official, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Official::Representation
      
        end
      end
      
      class CivicinfoApiprotosV2VoterInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contests, as: 'contests', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Contest, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Contest::Representation
      
          collection :drop_off_locations, as: 'dropOffLocations', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2PollingLocation, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2PollingLocation::Representation
      
          collection :early_vote_sites, as: 'earlyVoteSites', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2PollingLocation, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2PollingLocation::Representation
      
          property :election, as: 'election', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Election, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Election::Representation
      
          property :kind, as: 'kind'
          property :mail_only, as: 'mailOnly'
          property :normalized_input, as: 'normalizedInput', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
          collection :other_elections, as: 'otherElections', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Election, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Election::Representation
      
          collection :polling_locations, as: 'pollingLocations', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2PollingLocation, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2PollingLocation::Representation
      
          property :precinct_id, as: 'precinctId'
          collection :precincts, as: 'precincts', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Precinct, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Precinct::Representation
      
          collection :state, as: 'state', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2AdministrationRegion, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2AdministrationRegion::Representation
      
        end
      end
      
      class CivicinfoSchemaV2AdministrationRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :election_administration_body, as: 'electionAdministrationBody', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2AdministrativeBody, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2AdministrativeBody::Representation
      
          property :local_jurisdiction, as: 'local_jurisdiction', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2AdministrationRegion, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2AdministrationRegion::Representation
      
          property :name, as: 'name'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source::Representation
      
        end
      end
      
      class CivicinfoSchemaV2AdministrativeBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :absentee_voting_info_url, as: 'absenteeVotingInfoUrl'
          property :ballot_info_url, as: 'ballotInfoUrl'
          property :correspondence_address, as: 'correspondenceAddress', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
          property :election_info_url, as: 'electionInfoUrl'
          property :election_notice_text, as: 'electionNoticeText'
          property :election_notice_url, as: 'electionNoticeUrl'
          collection :election_officials, as: 'electionOfficials', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2ElectionOfficial, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2ElectionOfficial::Representation
      
          property :election_registration_confirmation_url, as: 'electionRegistrationConfirmationUrl'
          property :election_registration_url, as: 'electionRegistrationUrl'
          property :election_rules_url, as: 'electionRulesUrl'
          property :hours_of_operation, as: 'hoursOfOperation'
          property :name, as: 'name'
          property :physical_address, as: 'physicalAddress', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
          collection :voter_services, as: 'voter_services'
          property :voting_location_finder_url, as: 'votingLocationFinderUrl'
        end
      end
      
      class CivicinfoSchemaV2Candidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidate_url, as: 'candidateUrl'
          collection :channels, as: 'channels', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Channel, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Channel::Representation
      
          property :email, as: 'email'
          property :name, as: 'name'
          property :order_on_ballot, :numeric_string => true, as: 'orderOnBallot'
          property :party, as: 'party'
          property :phone, as: 'phone'
          property :photo_url, as: 'photoUrl'
        end
      end
      
      class CivicinfoSchemaV2Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class CivicinfoSchemaV2Contest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ballot_placement, :numeric_string => true, as: 'ballotPlacement'
          property :ballot_title, as: 'ballotTitle'
          collection :candidates, as: 'candidates', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Candidate, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Candidate::Representation
      
          property :district, as: 'district', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2ElectoralDistrict, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2ElectoralDistrict::Representation
      
          property :electorate_specifications, as: 'electorateSpecifications'
          collection :level, as: 'level'
          property :number_elected, :numeric_string => true, as: 'numberElected'
          property :number_voting_for, :numeric_string => true, as: 'numberVotingFor'
          property :office, as: 'office'
          collection :primary_parties, as: 'primaryParties'
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
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source::Representation
      
          property :special, as: 'special'
          property :type, as: 'type'
        end
      end
      
      class CivicinfoSchemaV2Election
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :election_day, as: 'electionDay'
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :ocd_division_id, as: 'ocdDivisionId'
          property :shape_lookup_behavior, as: 'shapeLookupBehavior'
        end
      end
      
      class CivicinfoSchemaV2ElectionOfficial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :fax_number, as: 'faxNumber'
          property :name, as: 'name'
          property :office_phone_number, as: 'officePhoneNumber'
          property :title, as: 'title'
        end
      end
      
      class CivicinfoSchemaV2ElectoralDistrict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :scope, as: 'scope'
        end
      end
      
      class CivicinfoSchemaV2GeographicDivision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :also_known_as, as: 'alsoKnownAs'
          property :name, as: 'name'
          collection :office_indices, as: 'officeIndices'
        end
      end
      
      class CivicinfoSchemaV2Office
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :division_id, as: 'divisionId'
          collection :levels, as: 'levels'
          property :name, as: 'name'
          collection :official_indices, as: 'officialIndices'
          collection :roles, as: 'roles'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source::Representation
      
        end
      end
      
      class CivicinfoSchemaV2Official
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address, as: 'address', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
          collection :channels, as: 'channels', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Channel, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Channel::Representation
      
          collection :emails, as: 'emails'
          property :name, as: 'name'
          property :party, as: 'party'
          collection :phones, as: 'phones'
          property :photo_url, as: 'photoUrl'
          collection :urls, as: 'urls'
        end
      end
      
      class CivicinfoSchemaV2PollingLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2SimpleAddressType::Representation
      
          property :end_date, as: 'endDate'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :name, as: 'name'
          property :notes, as: 'notes'
          property :polling_hours, as: 'pollingHours'
          collection :sources, as: 'sources', class: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source, decorator: Google::Apis::CivicinfoV2::CivicinfoSchemaV2Source::Representation
      
          property :start_date, as: 'startDate'
          property :voter_services, as: 'voterServices'
        end
      end
      
      class CivicinfoSchemaV2Precinct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :administration_region_id, as: 'administrationRegionId'
          collection :contest_id, as: 'contestId'
          property :dataset_id, :numeric_string => true, as: 'datasetId'
          collection :early_vote_site_id, as: 'earlyVoteSiteId'
          collection :electoral_district_id, as: 'electoralDistrictId'
          property :id, as: 'id'
          property :mail_only, as: 'mailOnly'
          property :name, as: 'name'
          property :number, as: 'number'
          collection :ocd_id, as: 'ocdId'
          collection :polling_location_id, as: 'pollingLocationId'
          collection :spatial_boundary_id, as: 'spatialBoundaryId'
          property :split_name, as: 'splitName'
          property :ward, as: 'ward'
        end
      end
      
      class CivicinfoSchemaV2SimpleAddressType
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
      
      class CivicinfoSchemaV2Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :official, as: 'official'
        end
      end
    end
  end
end
