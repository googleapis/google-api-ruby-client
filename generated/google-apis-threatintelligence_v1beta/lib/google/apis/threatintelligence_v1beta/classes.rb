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
    module ThreatintelligenceV1beta
      
      # Stateful object representing a group of Findings. Key feature to an Alert is
      # that it expresses the user's intent towards the findings of that group, even
      # those that haven't occurred yet.
      class Alert
        include Google::Apis::Core::Hashable
      
        # Optional. AI summary of the finding.
        # Corresponds to the JSON property `aiSummary`
        # @return [String]
        attr_accessor :ai_summary
      
        # Tracks basic CRUD facts.
        # Corresponds to the JSON property `audit`
        # @return [Google::Apis::ThreatintelligenceV1beta::Audit]
        attr_accessor :audit
      
        # Output only. The resource names of the Configurations bound to this alert.
        # Format: projects/`project`/configurations/`configuration`
        # Corresponds to the JSON property `configurations`
        # @return [Array<String>]
        attr_accessor :configurations
      
        # Container for different types of alert details.
        # Corresponds to the JSON property `detail`
        # @return [Google::Apis::ThreatintelligenceV1beta::AlertDetail]
        attr_accessor :detail
      
        # Output only. A short title for the alert.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. alert name of the alert this alert is a duplicate of. Format:
        # projects/`project`/alerts/`alert`
        # Corresponds to the JSON property `duplicateOf`
        # @return [String]
        attr_accessor :duplicate_of
      
        # Output only. alert names of the alerts that are duplicates of this alert.
        # Format: projects/`project`/alerts/`alert`
        # Corresponds to the JSON property `duplicatedBy`
        # @return [Array<String>]
        attr_accessor :duplicated_by
      
        # Optional. If included when updating an alert, this should be set to the
        # current etag of the alert. If the etags do not match, the update will be
        # rejected and an ABORTED error will be returned.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. External ID for the alert. This is used internally to provide
        # protection against out of order updates.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # Output only. The number of findings associated with this alert.
        # Corresponds to the JSON property `findingCount`
        # @return [Fixnum]
        attr_accessor :finding_count
      
        # Output only. Findings that are covered by this alert.
        # Corresponds to the JSON property `findings`
        # @return [Array<String>]
        attr_accessor :findings
      
        # Identifier. Server generated name for the alert. format is projects/`project`/
        # alerts/`alert`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Structured priority analysis for a threat.
        # Corresponds to the JSON property `priorityAnalysis`
        # @return [Google::Apis::ThreatintelligenceV1beta::PriorityAnalysis]
        attr_accessor :priority_analysis
      
        # Structured relevance analysis for a threat.
        # Corresponds to the JSON property `relevanceAnalysis`
        # @return [Google::Apis::ThreatintelligenceV1beta::RelevanceAnalysis]
        attr_accessor :relevance_analysis
      
        # Structured severity analysis for a threat.
        # Corresponds to the JSON property `severityAnalysis`
        # @return [Google::Apis::ThreatintelligenceV1beta::SeverityAnalysis]
        attr_accessor :severity_analysis
      
        # Output only. State of the alert.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_summary = args[:ai_summary] if args.key?(:ai_summary)
          @audit = args[:audit] if args.key?(:audit)
          @configurations = args[:configurations] if args.key?(:configurations)
          @detail = args[:detail] if args.key?(:detail)
          @display_name = args[:display_name] if args.key?(:display_name)
          @duplicate_of = args[:duplicate_of] if args.key?(:duplicate_of)
          @duplicated_by = args[:duplicated_by] if args.key?(:duplicated_by)
          @etag = args[:etag] if args.key?(:etag)
          @external_id = args[:external_id] if args.key?(:external_id)
          @finding_count = args[:finding_count] if args.key?(:finding_count)
          @findings = args[:findings] if args.key?(:findings)
          @name = args[:name] if args.key?(:name)
          @priority_analysis = args[:priority_analysis] if args.key?(:priority_analysis)
          @relevance_analysis = args[:relevance_analysis] if args.key?(:relevance_analysis)
          @severity_analysis = args[:severity_analysis] if args.key?(:severity_analysis)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Container for different types of alert details.
      class AlertDetail
        include Google::Apis::Core::Hashable
      
        # Captures the specific details of Data Leak alert.
        # Corresponds to the JSON property `dataLeak`
        # @return [Google::Apis::ThreatintelligenceV1beta::DataLeakAlertDetail]
        attr_accessor :data_leak
      
        # Output only. Name of the detail type. Will be set by the server during
        # creation to the name of the field that is set in the detail union.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        # Captures the specific details of InitialAccessBroker (IAB) alert.
        # Corresponds to the JSON property `initialAccessBroker`
        # @return [Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerAlertDetail]
        attr_accessor :initial_access_broker
      
        # Captures the specific details of InsiderThreat alert.
        # Corresponds to the JSON property `insiderThreat`
        # @return [Google::Apis::ThreatintelligenceV1beta::InsiderThreatAlertDetail]
        attr_accessor :insider_threat
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_leak = args[:data_leak] if args.key?(:data_leak)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
          @initial_access_broker = args[:initial_access_broker] if args.key?(:initial_access_broker)
          @insider_threat = args[:insider_threat] if args.key?(:insider_threat)
        end
      end
      
      # A document that is associated with an alert.
      class AlertDocument
        include Google::Apis::Core::Hashable
      
        # Output only. AI summary of the finding.
        # Corresponds to the JSON property `aiSummary`
        # @return [String]
        attr_accessor :ai_summary
      
        # Output only. The author of the document.
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # Output only. Time when the origin source collected the intel.
        # Corresponds to the JSON property `collectionTime`
        # @return [String]
        attr_accessor :collection_time
      
        # Output only. The content of the document.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Output only. The timestamp of the original external publication of the
        # document.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when GTI received the intel.
        # Corresponds to the JSON property `ingestTime`
        # @return [String]
        attr_accessor :ingest_time
      
        # Output only. The language code of the document.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Identifier. Server generated name for the alert document. format is projects/`
        # project`/alerts/`alert`/documents/`document`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Source of the intel item, e.g. DarkMarket.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. Time when the intel was last updated by the source.
        # Corresponds to the JSON property `sourceUpdateTime`
        # @return [String]
        attr_accessor :source_update_time
      
        # Output only. URI of the intel item from the source.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # Output only. The title of the document, if available.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The translation of an alert document.
        # Corresponds to the JSON property `translation`
        # @return [Google::Apis::ThreatintelligenceV1beta::AlertDocumentTranslation]
        attr_accessor :translation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_summary = args[:ai_summary] if args.key?(:ai_summary)
          @author = args[:author] if args.key?(:author)
          @collection_time = args[:collection_time] if args.key?(:collection_time)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @ingest_time = args[:ingest_time] if args.key?(:ingest_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @source_update_time = args[:source_update_time] if args.key?(:source_update_time)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @title = args[:title] if args.key?(:title)
          @translation = args[:translation] if args.key?(:translation)
        end
      end
      
      # The translation of an alert document.
      class AlertDocumentTranslation
        include Google::Apis::Core::Hashable
      
        # Output only. The translated content of the document.
        # Corresponds to the JSON property `translatedContent`
        # @return [String]
        attr_accessor :translated_content
      
        # Output only. The translated title of the document.
        # Corresponds to the JSON property `translatedTitle`
        # @return [String]
        attr_accessor :translated_title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @translated_content = args[:translated_content] if args.key?(:translated_content)
          @translated_title = args[:translated_title] if args.key?(:translated_title)
        end
      end
      
      # Tracks basic CRUD facts.
      class Audit
        include Google::Apis::Core::Hashable
      
        # Output only. Time of creation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Agent that created or updated the record, could be a UserId or a
        # JobId.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Output only. Time of creation or last update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Agent that last updated the record, could be a UserId or a JobId.
        # Corresponds to the JSON property `updater`
        # @return [String]
        attr_accessor :updater
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @update_time = args[:update_time] if args.key?(:update_time)
          @updater = args[:updater] if args.key?(:updater)
        end
      end
      
      # A configuration represents a behavior an engine should follow when producing
      # new findings.
      class Configuration
        include Google::Apis::Core::Hashable
      
        # Tracks basic CRUD facts.
        # Corresponds to the JSON property `audit`
        # @return [Google::Apis::ThreatintelligenceV1beta::Audit]
        attr_accessor :audit
      
        # Optional. A description of the configuration.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Wrapper class that contains the union struct for all the various configuration
        # detail specific classes.
        # Corresponds to the JSON property `detail`
        # @return [Google::Apis::ThreatintelligenceV1beta::ConfigurationDetail]
        attr_accessor :detail
      
        # Output only. Human readable name for the configuration.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Server generated name for the configuration. format is projects/`
        # project`/configurations/`configuration`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Name of the service that provides the configuration.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Optional. State of the configuration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. A user-manipulatable version. Does not adhere to a specific format
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit = args[:audit] if args.key?(:audit)
          @description = args[:description] if args.key?(:description)
          @detail = args[:detail] if args.key?(:detail)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Wrapper class that contains the union struct for all the various configuration
      # detail specific classes.
      class ConfigurationDetail
        include Google::Apis::Core::Hashable
      
        # CustomerProfileConfig is the configuration for the customer profile.
        # Corresponds to the JSON property `customerProfile`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileConfig]
        attr_accessor :customer_profile
      
        # Output only. Name of the detail type. Will be set by the server during
        # creation to the name of the field that is set in the detail union.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_profile = args[:customer_profile] if args.key?(:customer_profile)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
        end
      end
      
      # A ConfigurationRevision is a snapshot of a Configuration at a point in time.
      # It is immutable.
      class ConfigurationRevision
        include Google::Apis::Core::Hashable
      
        # Output only. The time the Revision was created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The name of the ConfigurationRevision Format: projects//
        # configurations//revisions/
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A configuration represents a behavior an engine should follow when producing
        # new findings.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::ThreatintelligenceV1beta::Configuration]
        attr_accessor :snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
        end
      end
      
      # Citation information for the customer profile.
      class CustomerProfileCitation
        include Google::Apis::Core::Hashable
      
        # Required. The citation id for the citation. Should be unique within the
        # profile.
        # Corresponds to the JSON property `citationId`
        # @return [String]
        attr_accessor :citation_id
      
        # Required. The name of the document the citation is from.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        # The time the citation was retrieved.
        # Corresponds to the JSON property `retrievalTime`
        # @return [String]
        attr_accessor :retrieval_time
      
        # Required. The source of the citation.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. The url of the citation.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_id = args[:citation_id] if args.key?(:citation_id)
          @document = args[:document] if args.key?(:document)
          @retrieval_time = args[:retrieval_time] if args.key?(:retrieval_time)
          @source = args[:source] if args.key?(:source)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A string with citation ids.
      class CustomerProfileCitedString
        include Google::Apis::Core::Hashable
      
        # Optional. The citation ids for the string.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Required. The value of the string.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Company information for the customer profile.
      class CustomerProfileCompany
        include Google::Apis::Core::Hashable
      
        # Optional. The citation ids for the company.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Required. The name of the company.
        # Corresponds to the JSON property `company`
        # @return [String]
        attr_accessor :company
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @company = args[:company] if args.key?(:company)
        end
      end
      
      # CustomerProfileConfig is the configuration for the customer profile.
      class CustomerProfileConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Citations for the organization profile.
        # Corresponds to the JSON property `citations`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitation>]
        attr_accessor :citations
      
        # Optional. Contact information for the organization.
        # Corresponds to the JSON property `contactInfo`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileContactInfo>]
        attr_accessor :contact_info
      
        # Optional. Executives of the organization.
        # Corresponds to the JSON property `executives`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfilePerson>]
        attr_accessor :executives
      
        # Optional. The industries the organization is involved in.
        # Corresponds to the JSON property `industries`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileIndustry>]
        attr_accessor :industries
      
        # Optional. Locations the organization is present or conducts business in.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileLocation>]
        attr_accessor :locations
      
        # Required. The name of the organization.
        # Corresponds to the JSON property `org`
        # @return [String]
        attr_accessor :org
      
        # Optional. A summary of the organization.
        # Corresponds to the JSON property `orgSummary`
        # @return [String]
        attr_accessor :org_summary
      
        # Optional. The parent companies of the organization.
        # Corresponds to the JSON property `parentCompanies`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileCompany>]
        attr_accessor :parent_companies
      
        # Optional. Product information for the organization.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileProduct>]
        attr_accessor :products
      
        # Security considerations for the customer profile.
        # Corresponds to the JSON property `securityConsiderations`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileSecurityConsiderations]
        attr_accessor :security_considerations
      
        # A summarized version of the customer profile. Generated by the backend.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileSummary]
        attr_accessor :summary
      
        # Optional. Technology presence of the organization.
        # Corresponds to the JSON property `technologyPresence`
        # @return [String]
        attr_accessor :technology_presence
      
        # Optional. Web presence of the organization.
        # Corresponds to the JSON property `webPresences`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::CustomerProfileWebPresence>]
        attr_accessor :web_presences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citations = args[:citations] if args.key?(:citations)
          @contact_info = args[:contact_info] if args.key?(:contact_info)
          @executives = args[:executives] if args.key?(:executives)
          @industries = args[:industries] if args.key?(:industries)
          @locations = args[:locations] if args.key?(:locations)
          @org = args[:org] if args.key?(:org)
          @org_summary = args[:org_summary] if args.key?(:org_summary)
          @parent_companies = args[:parent_companies] if args.key?(:parent_companies)
          @products = args[:products] if args.key?(:products)
          @security_considerations = args[:security_considerations] if args.key?(:security_considerations)
          @summary = args[:summary] if args.key?(:summary)
          @technology_presence = args[:technology_presence] if args.key?(:technology_presence)
          @web_presences = args[:web_presences] if args.key?(:web_presences)
        end
      end
      
      # Contact information for the customer profile.
      class CustomerProfileContactInfo
        include Google::Apis::Core::Hashable
      
        # The address of the contact.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Optional. The citation ids for the contact information.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # The email address of the contact.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Optional. The name of the contact.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The other contact information.
        # Corresponds to the JSON property `other`
        # @return [String]
        attr_accessor :other
      
        # The phone number of the contact.
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @email = args[:email] if args.key?(:email)
          @label = args[:label] if args.key?(:label)
          @other = args[:other] if args.key?(:other)
          @phone = args[:phone] if args.key?(:phone)
        end
      end
      
      # Industry information for the customer profile.
      class CustomerProfileIndustry
        include Google::Apis::Core::Hashable
      
        # Optional. The citation ids for the industry.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Required. The name of the industry.
        # Corresponds to the JSON property `industry`
        # @return [String]
        attr_accessor :industry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @industry = args[:industry] if args.key?(:industry)
        end
      end
      
      # Location information for the customer profile.
      class CustomerProfileLocation
        include Google::Apis::Core::Hashable
      
        # Required. The address of the location.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Required. The brand of the location.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Optional. The citation ids for the location.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Optional. The type of location.
        # Corresponds to the JSON property `facilityType`
        # @return [String]
        attr_accessor :facility_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @brand = args[:brand] if args.key?(:brand)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @facility_type = args[:facility_type] if args.key?(:facility_type)
        end
      end
      
      # Person information for the customer profile.
      class CustomerProfilePerson
        include Google::Apis::Core::Hashable
      
        # Optional. The citation ids for the person.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Required. The name of the person.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The title of the person.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Product information for the customer profile.
      class CustomerProfileProduct
        include Google::Apis::Core::Hashable
      
        # Required. The brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Optional. The citation ids for the product.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Required. The name of the product.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # Security considerations for the customer profile.
      class CustomerProfileSecurityConsiderations
        include Google::Apis::Core::Hashable
      
        # Optional. A series of considerations for the security of the organization,
        # such as "high risk of compromise" or "vulnerable to cyberbullying".
        # Corresponds to the JSON property `considerations`
        # @return [Array<String>]
        attr_accessor :considerations
      
        # Optional. A note about the security considerations.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @considerations = args[:considerations] if args.key?(:considerations)
          @note = args[:note] if args.key?(:note)
        end
      end
      
      # A summarized version of the customer profile. Generated by the backend.
      class CustomerProfileSummary
        include Google::Apis::Core::Hashable
      
        # A string with citation ids.
        # Corresponds to the JSON property `areaServed`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :area_served
      
        # A string with citation ids.
        # Corresponds to the JSON property `brands`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :brands
      
        # A string with citation ids.
        # Corresponds to the JSON property `entityType`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :entity_type
      
        # A string with citation ids.
        # Corresponds to the JSON property `founded`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :founded
      
        # A string with citation ids.
        # Corresponds to the JSON property `headquarters`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :headquarters
      
        # A string with citation ids.
        # Corresponds to the JSON property `industry`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :industry
      
        # A string with citation ids.
        # Corresponds to the JSON property `keyPeopleSummary`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :key_people_summary
      
        # A string with citation ids.
        # Corresponds to the JSON property `parentCompany`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :parent_company
      
        # A string with citation ids.
        # Corresponds to the JSON property `primaryWebsite`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :primary_website
      
        # A string with citation ids.
        # Corresponds to the JSON property `productsSummary`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :products_summary
      
        # A string with citation ids.
        # Corresponds to the JSON property `servicesSummary`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :services_summary
      
        # A string with citation ids.
        # Corresponds to the JSON property `title`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @area_served = args[:area_served] if args.key?(:area_served)
          @brands = args[:brands] if args.key?(:brands)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @founded = args[:founded] if args.key?(:founded)
          @headquarters = args[:headquarters] if args.key?(:headquarters)
          @industry = args[:industry] if args.key?(:industry)
          @key_people_summary = args[:key_people_summary] if args.key?(:key_people_summary)
          @parent_company = args[:parent_company] if args.key?(:parent_company)
          @primary_website = args[:primary_website] if args.key?(:primary_website)
          @products_summary = args[:products_summary] if args.key?(:products_summary)
          @services_summary = args[:services_summary] if args.key?(:services_summary)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Web presence information for the customer profile.
      class CustomerProfileWebPresence
        include Google::Apis::Core::Hashable
      
        # Optional. The citation ids for the web presence.
        # Corresponds to the JSON property `citationIds`
        # @return [Array<String>]
        attr_accessor :citation_ids
      
        # Required. The domain name of the web presence.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_ids = args[:citation_ids] if args.key?(:citation_ids)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # Captures the specific details of Data Leak alert.
      class DataLeakAlertDetail
        include Google::Apis::Core::Hashable
      
        # Required. Array of ids to accommodate multiple discovery documents
        # Corresponds to the JSON property `discoveryDocumentIds`
        # @return [Array<String>]
        attr_accessor :discovery_document_ids
      
        # Required. The severity of the Data Leak alert. Allowed values are: * `LOW` * `
        # MEDIUM` * `HIGH` * `CRITICAL`
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_document_ids = args[:discovery_document_ids] if args.key?(:discovery_document_ids)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A detail object for a Data Leak finding.
      class DataLeakFindingDetail
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the document that triggered the Data Leak
        # finding. This ID can be used to retrieve the content of the document for
        # further analysis.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # Required. Reference to the match score of the Data Leak finding. This is a
        # float value greater than 0 and less than or equal to 1 calculated by the
        # matching engine based on the similarity of the document and the user provided
        # configurations.
        # Corresponds to the JSON property `matchScore`
        # @return [Float]
        attr_accessor :match_score
      
        # Required. The severity of the Data Leak finding. This indicates the potential
        # impact of the threat.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @match_score = args[:match_score] if args.key?(:match_score)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Response message for EnumerateAlertFacets.
      class EnumerateAlertFacetsResponse
        include Google::Apis::Core::Hashable
      
        # List of facets and the counts.
        # Corresponds to the JSON property `facets`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::Facet>]
        attr_accessor :facets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facets = args[:facets] if args.key?(:facets)
        end
      end
      
      # Details the evidence used to determine the relevance verdict.
      class Evidence
        include Google::Apis::Core::Hashable
      
        # A list of semantic themes or concepts found to be common, related, or aligned
        # between the sources, supporting the verdict.
        # Corresponds to the JSON property `commonThemes`
        # @return [Array<String>]
        attr_accessor :common_themes
      
        # A list of semantic themes or descriptions unique to one source or semantically
        # distant.
        # Corresponds to the JSON property `distinctThemes`
        # @return [Array<String>]
        attr_accessor :distinct_themes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_themes = args[:common_themes] if args.key?(:common_themes)
          @distinct_themes = args[:distinct_themes] if args.key?(:distinct_themes)
        end
      end
      
      # Facet represents a sub element of a resource for filtering. The results from
      # this method are used to populate the filterable facets in the UI.
      class Facet
        include Google::Apis::Core::Hashable
      
        # Name of the facet. This is also the string that needs to be used in the
        # filtering expression.
        # Corresponds to the JSON property `facet`
        # @return [String]
        attr_accessor :facet
      
        # List of counts for the facet (if categorical).
        # Corresponds to the JSON property `facetCounts`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::FacetCount>]
        attr_accessor :facet_counts
      
        # The type of the facet. Options include "string", "int", "float", "bool", "enum"
        # , "timestamp", "user" and are useful to show the right sort of UI controls
        # when building a AIP-160 style filtering string.
        # Corresponds to the JSON property `facetType`
        # @return [String]
        attr_accessor :facet_type
      
        # Max value of the facet stringified based on type. Will be populated and
        # formatted the same as min_value.
        # Corresponds to the JSON property `maxValue`
        # @return [String]
        attr_accessor :max_value
      
        # Min value of the facet stringified based on type. This is only populated for
        # facets that have a clear ordering, for types like enum it will be left empty.
        # Timestamps will be formatted using RFC3339.
        # Corresponds to the JSON property `minValue`
        # @return [String]
        attr_accessor :min_value
      
        # Total number of records that contain this facet with ANY value.
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facet = args[:facet] if args.key?(:facet)
          @facet_counts = args[:facet_counts] if args.key?(:facet_counts)
          @facet_type = args[:facet_type] if args.key?(:facet_type)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # FacetCount represents a count of records with each facet value.
      class FacetCount
        include Google::Apis::Core::Hashable
      
        # Count of records with the value.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Value of the facet stringified. Timestamps will be formatted using RFC3339.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A ‘stateless’ and a point in time event that a check produced a result of
      # interest.
      class Finding
        include Google::Apis::Core::Hashable
      
        # Optional. AI summary of the finding.
        # Corresponds to the JSON property `aiSummary`
        # @return [String]
        attr_accessor :ai_summary
      
        # Optional. Name of the alert that this finding is bound to.
        # Corresponds to the JSON property `alert`
        # @return [String]
        attr_accessor :alert
      
        # Tracks basic CRUD facts.
        # Corresponds to the JSON property `audit`
        # @return [Google::Apis::ThreatintelligenceV1beta::Audit]
        attr_accessor :audit
      
        # Optional. Configuration names that are bound to this finding.
        # Corresponds to the JSON property `configurations`
        # @return [Array<String>]
        attr_accessor :configurations
      
        # Wrapper class that contains the union struct for all the various findings
        # detail specific classes.
        # Corresponds to the JSON property `detail`
        # @return [Google::Apis::ThreatintelligenceV1beta::FindingDetail]
        attr_accessor :detail
      
        # Required. A short descriptive title for the finding <= 250 chars. EX: "Actor '
        # baddy' offering $1000 for credentials of 'goodguy'".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Server generated name for the finding (leave clear during creation)
        # . Format: projects/`project`/findings/`finding`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Logical source of this finding (name of the sub-engine).
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Structured relevance analysis for a threat.
        # Corresponds to the JSON property `relevanceAnalysis`
        # @return [Google::Apis::ThreatintelligenceV1beta::RelevanceAnalysis]
        attr_accessor :relevance_analysis
      
        # Output only. When identical finding (same labels and same details) has re-
        # occurred.
        # Corresponds to the JSON property `reoccurrenceTimes`
        # @return [Array<String>]
        attr_accessor :reoccurrence_times
      
        # Optional. Deprecated: Use the `severity_analysis` field instead. Base severity
        # score from the finding source.
        # Corresponds to the JSON property `severity`
        # @return [Float]
        attr_accessor :severity
      
        # Structured severity analysis for a threat.
        # Corresponds to the JSON property `severityAnalysis`
        # @return [Google::Apis::ThreatintelligenceV1beta::SeverityAnalysis]
        attr_accessor :severity_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_summary = args[:ai_summary] if args.key?(:ai_summary)
          @alert = args[:alert] if args.key?(:alert)
          @audit = args[:audit] if args.key?(:audit)
          @configurations = args[:configurations] if args.key?(:configurations)
          @detail = args[:detail] if args.key?(:detail)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @relevance_analysis = args[:relevance_analysis] if args.key?(:relevance_analysis)
          @reoccurrence_times = args[:reoccurrence_times] if args.key?(:reoccurrence_times)
          @severity = args[:severity] if args.key?(:severity)
          @severity_analysis = args[:severity_analysis] if args.key?(:severity_analysis)
        end
      end
      
      # Wrapper class that contains the union struct for all the various findings
      # detail specific classes.
      class FindingDetail
        include Google::Apis::Core::Hashable
      
        # A detail object for a Data Leak finding.
        # Corresponds to the JSON property `dataLeak`
        # @return [Google::Apis::ThreatintelligenceV1beta::DataLeakFindingDetail]
        attr_accessor :data_leak
      
        # Output only. Name of the detail type. Will be set by the server during
        # creation to the name of the field that is set in the detail union.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        # A detail object for an Initial Access Broker (IAB) finding.
        # Corresponds to the JSON property `initialAccessBroker`
        # @return [Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerFindingDetail]
        attr_accessor :initial_access_broker
      
        # A detail object for a InsiderThreat finding.
        # Corresponds to the JSON property `insiderThreat`
        # @return [Google::Apis::ThreatintelligenceV1beta::InsiderThreatFindingDetail]
        attr_accessor :insider_threat
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_leak = args[:data_leak] if args.key?(:data_leak)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
          @initial_access_broker = args[:initial_access_broker] if args.key?(:initial_access_broker)
          @insider_threat = args[:insider_threat] if args.key?(:insider_threat)
        end
      end
      
      # Request message for GenerateOrgProfileConfiguration.
      class GenerateOrgProfileConfigurationRequest
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the organization to generate the profile for.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The domain of the organization to generate the profile for.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # Captures the specific details of InitialAccessBroker (IAB) alert.
      class InitialAccessBrokerAlertDetail
        include Google::Apis::Core::Hashable
      
        # Required. Array of ids to accommodate multiple discovery documents
        # Corresponds to the JSON property `discoveryDocumentIds`
        # @return [Array<String>]
        attr_accessor :discovery_document_ids
      
        # Required. The severity of the Initial Access Broker (IAB) alert. Allowed
        # values are: * `LOW` * `MEDIUM` * `HIGH` * `CRITICAL`
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_document_ids = args[:discovery_document_ids] if args.key?(:discovery_document_ids)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A detail object for an Initial Access Broker (IAB) finding.
      class InitialAccessBrokerFindingDetail
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the document that triggered the IAB finding.
        # This ID can be used to retrieve the content of the document for further
        # analysis.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # Required. Reference to the match score of the IAB finding. This is a float
        # value between 0 and 1 calculated by the matching engine based on the
        # similarity of the document and the user provided configurations.
        # Corresponds to the JSON property `matchScore`
        # @return [Float]
        attr_accessor :match_score
      
        # Required. The severity of the IAB finding. This indicates the potential impact
        # of the threat.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @match_score = args[:match_score] if args.key?(:match_score)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Captures the specific details of InsiderThreat alert.
      class InsiderThreatAlertDetail
        include Google::Apis::Core::Hashable
      
        # Required. Array of ids to accommodate multiple discovery documents
        # Corresponds to the JSON property `discoveryDocumentIds`
        # @return [Array<String>]
        attr_accessor :discovery_document_ids
      
        # Required. The severity of the Insider Threat alert. Allowed values are: * `LOW`
        # * `MEDIUM` * `HIGH` * `CRITICAL`
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_document_ids = args[:discovery_document_ids] if args.key?(:discovery_document_ids)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A detail object for a InsiderThreat finding.
      class InsiderThreatFindingDetail
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the document that triggered the
        # InsiderThreat finding. This ID can be used to retrieve the content of the
        # document for further analysis.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # Required. Reference to the match score of the InsiderThreat finding. This is a
        # float value greater than 0 and less than or equal to 1 calculated by the
        # matching engine based on the similarity of the document and the user provided
        # configurations.
        # Corresponds to the JSON property `matchScore`
        # @return [Float]
        attr_accessor :match_score
      
        # Required. The severity of the InsiderThreat finding. This indicates the
        # potential impact of the threat.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @match_score = args[:match_score] if args.key?(:match_score)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Response message for ListAlerts.
      class ListAlertsResponse
        include Google::Apis::Core::Hashable
      
        # List of alerts.
        # Corresponds to the JSON property `alerts`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::Alert>]
        attr_accessor :alerts
      
        # Page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alerts = args[:alerts] if args.key?(:alerts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListConfigurationRevisions.
      class ListConfigurationRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Configuration Revisions associated with the specified Configuration
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::ConfigurationRevision>]
        attr_accessor :revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @revisions = args[:revisions] if args.key?(:revisions)
        end
      end
      
      # Response message for ListConfigurations.
      class ListConfigurationsResponse
        include Google::Apis::Core::Hashable
      
        # List of configurations.
        # Corresponds to the JSON property `configurations`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::Configuration>]
        attr_accessor :configurations
      
        # Page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configurations = args[:configurations] if args.key?(:configurations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListFindings.
      class ListFindingsResponse
        include Google::Apis::Core::Hashable
      
        # List of findings.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::Finding>]
        attr_accessor :findings
      
        # Page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for MarkAlertAsBenign.
      class MarkAlertAsBenignRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsDuplicate.
      class MarkAlertAsDuplicateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the alert to mark as a duplicate of. Format: projects/`
        # project`/alerts/`alert`
        # Corresponds to the JSON property `duplicateOf`
        # @return [String]
        attr_accessor :duplicate_of
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate_of = args[:duplicate_of] if args.key?(:duplicate_of)
        end
      end
      
      # Request message for MarkAlertAsEscalated.
      class MarkAlertAsEscalatedRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsFalsePositive.
      class MarkAlertAsFalsePositiveRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsNotActionable.
      class MarkAlertAsNotActionableRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsRead.
      class MarkAlertAsReadRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsResolved.
      class MarkAlertAsResolvedRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsTrackedExternally.
      class MarkAlertAsTrackedExternallyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for MarkAlertAsTriaged.
      class MarkAlertAsTriagedRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ThreatintelligenceV1beta::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Structured priority analysis for a threat.
      class PriorityAnalysis
        include Google::Apis::Core::Hashable
      
        # The level of confidence in the given verdict.
        # Corresponds to the JSON property `confidence`
        # @return [String]
        attr_accessor :confidence
      
        # The level of Priority.
        # Corresponds to the JSON property `priorityLevel`
        # @return [String]
        attr_accessor :priority_level
      
        # Human-readable explanation from the model, detailing why a particular result
        # is considered to have a certain priority.
        # Corresponds to the JSON property `reasoning`
        # @return [String]
        attr_accessor :reasoning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @priority_level = args[:priority_level] if args.key?(:priority_level)
          @reasoning = args[:reasoning] if args.key?(:reasoning)
        end
      end
      
      # Structured relevance analysis for a threat.
      class RelevanceAnalysis
        include Google::Apis::Core::Hashable
      
        # The level of confidence in the given verdict.
        # Corresponds to the JSON property `confidence`
        # @return [String]
        attr_accessor :confidence
      
        # Details the evidence used to determine the relevance verdict.
        # Corresponds to the JSON property `evidence`
        # @return [Google::Apis::ThreatintelligenceV1beta::Evidence]
        attr_accessor :evidence
      
        # Human-readable explanation from the matcher, detailing why a particular result
        # is considered relevant or not relevant.
        # Corresponds to the JSON property `reasoning`
        # @return [String]
        attr_accessor :reasoning
      
        # The level of relevance.
        # Corresponds to the JSON property `relevanceLevel`
        # @return [String]
        attr_accessor :relevance_level
      
        # Indicates whether the threat is considered relevant.
        # Corresponds to the JSON property `relevant`
        # @return [Boolean]
        attr_accessor :relevant
        alias_method :relevant?, :relevant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @evidence = args[:evidence] if args.key?(:evidence)
          @reasoning = args[:reasoning] if args.key?(:reasoning)
          @relevance_level = args[:relevance_level] if args.key?(:relevance_level)
          @relevant = args[:relevant] if args.key?(:relevant)
        end
      end
      
      # Response message for SearchFindings.
      class SearchFindingsResponse
        include Google::Apis::Core::Hashable
      
        # List of findings.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::Finding>]
        attr_accessor :findings
      
        # Page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Structured severity analysis for a threat.
      class SeverityAnalysis
        include Google::Apis::Core::Hashable
      
        # The level of confidence in the given verdict.
        # Corresponds to the JSON property `confidence`
        # @return [String]
        attr_accessor :confidence
      
        # Human-readable explanation from the model, detailing why a particular result
        # is considered to have a certain severity.
        # Corresponds to the JSON property `reasoning`
        # @return [String]
        attr_accessor :reasoning
      
        # The level of severity.
        # Corresponds to the JSON property `severityLevel`
        # @return [String]
        attr_accessor :severity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @reasoning = args[:reasoning] if args.key?(:reasoning)
          @severity_level = args[:severity_level] if args.key?(:severity_level)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Response message for UpsertConfiguration.
      class UpsertConfigurationResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Created configuration ID with server assigned id.
        # Corresponds to the JSON property `configuration`
        # @return [String]
        attr_accessor :configuration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration = args[:configuration] if args.key?(:configuration)
        end
      end
    end
  end
end
