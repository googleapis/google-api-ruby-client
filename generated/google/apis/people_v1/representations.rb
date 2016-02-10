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
    module PeopleV1
      
      class Birthday
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Residence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RelationshipInterest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Tagline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Skill
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Nickname
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Gender
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FieldMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Locale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Organization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RelationshipStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContactGroupMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ImClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Person
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GetPeopleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PersonMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PersonResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Biography
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Photo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Occupation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CoverPhoto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Url
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BraggingRights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EmailAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DomainMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Interest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Relation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Name
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Birthday
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :date, as: 'date', class: Google::Apis::PeopleV1::Date, decorator: Google::Apis::PeopleV1::Date::Representation
      
        end
      end
      
      class Residence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :current, as: 'current'
        end
      end
      
      class RelationshipInterest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :formatted_value, as: 'formattedValue'
        end
      end
      
      class Tagline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_type, as: 'formattedType'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :type, as: 'type'
          property :date, as: 'date', class: Google::Apis::PeopleV1::Date, decorator: Google::Apis::PeopleV1::Date::Representation
      
        end
      end
      
      class Skill
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Nickname
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_group_membership, as: 'contactGroupMembership', class: Google::Apis::PeopleV1::ContactGroupMembership, decorator: Google::Apis::PeopleV1::ContactGroupMembership::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :domain_membership, as: 'domainMembership', class: Google::Apis::PeopleV1::DomainMembership, decorator: Google::Apis::PeopleV1::DomainMembership::Representation
      
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :id, as: 'id'
        end
      end
      
      class Gender
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :formatted_value, as: 'formattedValue'
        end
      end
      
      class FieldMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verified, as: 'verified'
          property :source, as: 'source', class: Google::Apis::PeopleV1::Source, decorator: Google::Apis::PeopleV1::Source::Representation
      
          property :primary, as: 'primary'
        end
      end
      
      class Locale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postal_code, as: 'postalCode'
          property :city, as: 'city'
          property :country_code, as: 'countryCode'
          property :formatted_value, as: 'formattedValue'
          property :formatted_type, as: 'formattedType'
          property :extended_address, as: 'extendedAddress'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :region, as: 'region'
          property :country, as: 'country'
          property :po_box, as: 'poBox'
          property :street_address, as: 'streetAddress'
          property :type, as: 'type'
        end
      end
      
      class Organization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :title, as: 'title'
          property :formatted_type, as: 'formattedType'
          property :job_description, as: 'jobDescription'
          property :symbol, as: 'symbol'
          property :domain, as: 'domain'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :end_date, as: 'endDate', class: Google::Apis::PeopleV1::Date, decorator: Google::Apis::PeopleV1::Date::Representation
      
          property :current, as: 'current'
          property :name, as: 'name'
          property :phonetic_name, as: 'phoneticName'
          property :start_date, as: 'startDate', class: Google::Apis::PeopleV1::Date, decorator: Google::Apis::PeopleV1::Date::Representation
      
          property :department, as: 'department'
          property :type, as: 'type'
        end
      end
      
      class RelationshipStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :formatted_value, as: 'formattedValue'
        end
      end
      
      class ContactGroupMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_group_id, as: 'contactGroupId'
        end
      end
      
      class ImClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protocol, as: 'protocol'
          property :formatted_type, as: 'formattedType'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :username, as: 'username'
          property :formatted_protocol, as: 'formattedProtocol'
          property :type, as: 'type'
        end
      end
      
      class Person
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :urls, as: 'urls', class: Google::Apis::PeopleV1::Url, decorator: Google::Apis::PeopleV1::Url::Representation
      
          collection :birthdays, as: 'birthdays', class: Google::Apis::PeopleV1::Birthday, decorator: Google::Apis::PeopleV1::Birthday::Representation
      
          collection :relations, as: 'relations', class: Google::Apis::PeopleV1::Relation, decorator: Google::Apis::PeopleV1::Relation::Representation
      
          collection :nicknames, as: 'nicknames', class: Google::Apis::PeopleV1::Nickname, decorator: Google::Apis::PeopleV1::Nickname::Representation
      
          collection :biographies, as: 'biographies', class: Google::Apis::PeopleV1::Biography, decorator: Google::Apis::PeopleV1::Biography::Representation
      
          collection :im_clients, as: 'imClients', class: Google::Apis::PeopleV1::ImClient, decorator: Google::Apis::PeopleV1::ImClient::Representation
      
          collection :bragging_rights, as: 'braggingRights', class: Google::Apis::PeopleV1::BraggingRights, decorator: Google::Apis::PeopleV1::BraggingRights::Representation
      
          collection :locales, as: 'locales', class: Google::Apis::PeopleV1::Locale, decorator: Google::Apis::PeopleV1::Locale::Representation
      
          collection :relationship_statuses, as: 'relationshipStatuses', class: Google::Apis::PeopleV1::RelationshipStatus, decorator: Google::Apis::PeopleV1::RelationshipStatus::Representation
      
          property :age_range, as: 'ageRange'
          collection :events, as: 'events', class: Google::Apis::PeopleV1::Event, decorator: Google::Apis::PeopleV1::Event::Representation
      
          collection :interests, as: 'interests', class: Google::Apis::PeopleV1::Interest, decorator: Google::Apis::PeopleV1::Interest::Representation
      
          collection :relationship_interests, as: 'relationshipInterests', class: Google::Apis::PeopleV1::RelationshipInterest, decorator: Google::Apis::PeopleV1::RelationshipInterest::Representation
      
          property :etag, as: 'etag'
          collection :organizations, as: 'organizations', class: Google::Apis::PeopleV1::Organization, decorator: Google::Apis::PeopleV1::Organization::Representation
      
          property :resource_name, as: 'resourceName'
          collection :memberships, as: 'memberships', class: Google::Apis::PeopleV1::Membership, decorator: Google::Apis::PeopleV1::Membership::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::PersonMetadata, decorator: Google::Apis::PeopleV1::PersonMetadata::Representation
      
          collection :occupations, as: 'occupations', class: Google::Apis::PeopleV1::Occupation, decorator: Google::Apis::PeopleV1::Occupation::Representation
      
          collection :names, as: 'names', class: Google::Apis::PeopleV1::Name, decorator: Google::Apis::PeopleV1::Name::Representation
      
          collection :email_addresses, as: 'emailAddresses', class: Google::Apis::PeopleV1::EmailAddress, decorator: Google::Apis::PeopleV1::EmailAddress::Representation
      
          collection :residences, as: 'residences', class: Google::Apis::PeopleV1::Residence, decorator: Google::Apis::PeopleV1::Residence::Representation
      
          collection :skills, as: 'skills', class: Google::Apis::PeopleV1::Skill, decorator: Google::Apis::PeopleV1::Skill::Representation
      
          collection :cover_photos, as: 'coverPhotos', class: Google::Apis::PeopleV1::CoverPhoto, decorator: Google::Apis::PeopleV1::CoverPhoto::Representation
      
          collection :taglines, as: 'taglines', class: Google::Apis::PeopleV1::Tagline, decorator: Google::Apis::PeopleV1::Tagline::Representation
      
          collection :phone_numbers, as: 'phoneNumbers', class: Google::Apis::PeopleV1::PhoneNumber, decorator: Google::Apis::PeopleV1::PhoneNumber::Representation
      
          collection :addresses, as: 'addresses', class: Google::Apis::PeopleV1::Address, decorator: Google::Apis::PeopleV1::Address::Representation
      
          collection :photos, as: 'photos', class: Google::Apis::PeopleV1::Photo, decorator: Google::Apis::PeopleV1::Photo::Representation
      
          collection :genders, as: 'genders', class: Google::Apis::PeopleV1::Gender, decorator: Google::Apis::PeopleV1::Gender::Representation
      
        end
      end
      
      class GetPeopleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::PeopleV1::PersonResponse, decorator: Google::Apis::PeopleV1::PersonResponse::Representation
      
        end
      end
      
      class PersonMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_type, as: 'objectType'
          collection :previous_resource_names, as: 'previousResourceNames'
          collection :sources, as: 'sources', class: Google::Apis::PeopleV1::Source, decorator: Google::Apis::PeopleV1::Source::Representation
      
          property :deleted, as: 'deleted'
        end
      end
      
      class PersonResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person, as: 'person', class: Google::Apis::PeopleV1::Person, decorator: Google::Apis::PeopleV1::Person::Representation
      
          property :requested_resource_name, as: 'requestedResourceName'
          property :http_status_code, as: 'httpStatusCode'
        end
      end
      
      class Biography
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Photo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Occupation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class CoverPhoto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default'
          property :url, as: 'url'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Url
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :formatted_type, as: 'formattedType'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :type, as: 'type'
        end
      end
      
      class BraggingRights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :next_sync_token, as: 'nextSyncToken'
          collection :connections, as: 'connections', class: Google::Apis::PeopleV1::Person, decorator: Google::Apis::PeopleV1::Person::Representation
      
        end
      end
      
      class EmailAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :formatted_type, as: 'formattedType'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :type, as: 'type'
        end
      end
      
      class PhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :formatted_type, as: 'formattedType'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :type, as: 'type'
          property :canonical_form, as: 'canonicalForm'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :month, as: 'month'
          property :day, as: 'day'
          property :year, as: 'year'
        end
      end
      
      class DomainMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :in_viewer_domain, as: 'inViewerDomain'
        end
      end
      
      class Interest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
        end
      end
      
      class Relation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_type, as: 'formattedType'
          property :person, as: 'person'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Name
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phonetic_family_name, as: 'phoneticFamilyName'
          property :given_name, as: 'givenName'
          property :phonetic_middle_name, as: 'phoneticMiddleName'
          property :middle_name, as: 'middleName'
          property :phonetic_given_name, as: 'phoneticGivenName'
          property :honorific_prefix, as: 'honorificPrefix'
          property :phonetic_honorific_prefix, as: 'phoneticHonorificPrefix'
          property :metadata, as: 'metadata', class: Google::Apis::PeopleV1::FieldMetadata, decorator: Google::Apis::PeopleV1::FieldMetadata::Representation
      
          property :phonetic_honorific_suffix, as: 'phoneticHonorificSuffix'
          property :family_name, as: 'familyName'
          property :display_name, as: 'displayName'
          property :honorific_suffix, as: 'honorificSuffix'
        end
      end
    end
  end
end
