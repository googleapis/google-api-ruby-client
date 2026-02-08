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
      
      class AffectedSoftware
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Alert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlertDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlertDocumentTranslation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetDiscoveryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetDiscoverySeed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Association
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Audit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompromisedCredentialsFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Configuration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigurationDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigurationRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileCitedString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileCompany
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileIndustry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfilePerson
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileSecurityConsiderations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerProfileWebPresence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataLeakAlertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataLeakFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainMonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainMonitoringDomain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumerateAlertFacetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Evidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Facet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FacetCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateOrgProfileConfigurationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InbandVulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InbandVulnerabilityFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitialAccessBrokerAlertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitialAccessBrokerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitialAccessBrokerFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsiderThreatAlertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsiderThreatFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConfigurationRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConfigurationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsBenignRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsDuplicateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsEscalatedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsFalsePositiveRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsNotActionableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsReadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsResolvedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsTrackedExternallyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MarkAlertAsTriagedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MisconfigurationFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MisconfigurationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MisconfigurationReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriorityAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshAlertUriStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshAlertUriStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelevanceAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportAlertUriRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportAlertUriResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeverityAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousDomainAlertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousDomainDnsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousDomainDnsRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousDomainFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousDomainGtiDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousDomainWhoIsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetTechnologyAlertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetTechnologyFindingDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TechnologyWatchListAlertThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TechnologyWatchListConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpsertConfigurationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AffectedSoftware
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product'
          property :vendor, as: 'vendor'
        end
      end
      
      class Alert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ai_summary, as: 'aiSummary'
          collection :assets, as: 'assets'
          property :audit, as: 'audit', class: Google::Apis::ThreatintelligenceV1beta::Audit, decorator: Google::Apis::ThreatintelligenceV1beta::Audit::Representation
      
          collection :configurations, as: 'configurations'
          property :detail, as: 'detail', class: Google::Apis::ThreatintelligenceV1beta::AlertDetail, decorator: Google::Apis::ThreatintelligenceV1beta::AlertDetail::Representation
      
          property :display_name, as: 'displayName'
          property :duplicate_of, as: 'duplicateOf'
          collection :duplicated_by, as: 'duplicatedBy'
          property :etag, as: 'etag'
          property :external_id, as: 'externalId'
          property :finding_count, :numeric_string => true, as: 'findingCount'
          collection :findings, as: 'findings'
          property :name, as: 'name'
          property :priority_analysis, as: 'priorityAnalysis', class: Google::Apis::ThreatintelligenceV1beta::PriorityAnalysis, decorator: Google::Apis::ThreatintelligenceV1beta::PriorityAnalysis::Representation
      
          property :relevance_analysis, as: 'relevanceAnalysis', class: Google::Apis::ThreatintelligenceV1beta::RelevanceAnalysis, decorator: Google::Apis::ThreatintelligenceV1beta::RelevanceAnalysis::Representation
      
          property :severity_analysis, as: 'severityAnalysis', class: Google::Apis::ThreatintelligenceV1beta::SeverityAnalysis, decorator: Google::Apis::ThreatintelligenceV1beta::SeverityAnalysis::Representation
      
          property :state, as: 'state'
        end
      end
      
      class AlertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_leak, as: 'dataLeak', class: Google::Apis::ThreatintelligenceV1beta::DataLeakAlertDetail, decorator: Google::Apis::ThreatintelligenceV1beta::DataLeakAlertDetail::Representation
      
          property :detail_type, as: 'detailType'
          property :initial_access_broker, as: 'initialAccessBroker', class: Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerAlertDetail, decorator: Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerAlertDetail::Representation
      
          property :insider_threat, as: 'insiderThreat', class: Google::Apis::ThreatintelligenceV1beta::InsiderThreatAlertDetail, decorator: Google::Apis::ThreatintelligenceV1beta::InsiderThreatAlertDetail::Representation
      
          property :suspicious_domain, as: 'suspiciousDomain', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainAlertDetail, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainAlertDetail::Representation
      
          property :target_technology, as: 'targetTechnology', class: Google::Apis::ThreatintelligenceV1beta::TargetTechnologyAlertDetail, decorator: Google::Apis::ThreatintelligenceV1beta::TargetTechnologyAlertDetail::Representation
      
        end
      end
      
      class AlertDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ai_summary, as: 'aiSummary'
          property :author, as: 'author'
          property :collection_time, as: 'collectionTime'
          property :content, as: 'content'
          property :create_time, as: 'createTime'
          property :ingest_time, as: 'ingestTime'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :source, as: 'source'
          property :source_update_time, as: 'sourceUpdateTime'
          property :source_uri, as: 'sourceUri'
          property :title, as: 'title'
          property :translation, as: 'translation', class: Google::Apis::ThreatintelligenceV1beta::AlertDocumentTranslation, decorator: Google::Apis::ThreatintelligenceV1beta::AlertDocumentTranslation::Representation
      
        end
      end
      
      class AlertDocumentTranslation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :translated_content, as: 'translatedContent'
          property :translated_title, as: 'translatedTitle'
        end
      end
      
      class AssetDiscoveryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_scan_complete_time, as: 'lastScanCompleteTime'
          property :last_scan_start_time, as: 'lastScanStartTime'
          property :scan_frequency, as: 'scanFrequency'
          collection :scope_exclusion_assets, as: 'scopeExclusionAssets', class: Google::Apis::ThreatintelligenceV1beta::AssetDiscoverySeed, decorator: Google::Apis::ThreatintelligenceV1beta::AssetDiscoverySeed::Representation
      
          collection :seed_assets, as: 'seedAssets', class: Google::Apis::ThreatintelligenceV1beta::AssetDiscoverySeed, decorator: Google::Apis::ThreatintelligenceV1beta::AssetDiscoverySeed::Representation
      
          property :workflow, as: 'workflow'
        end
      end
      
      class AssetDiscoverySeed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :seed_type, as: 'seedType'
          property :seed_value, as: 'seedValue'
        end
      end
      
      class Association
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class Audit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :update_time, as: 'updateTime'
          property :updater, as: 'updater'
        end
      end
      
      class CompromisedCredentialsFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author'
          property :credential_service, as: 'credentialService'
          property :dark_web_doc, as: 'darkWebDoc'
          property :external_reference_uri, as: 'externalReferenceUri'
          property :file_dump, as: 'fileDump'
          collection :file_dump_hashes, as: 'fileDumpHashes'
          property :file_dump_size_bytes, :numeric_string => true, as: 'fileDumpSizeBytes'
          property :forum, as: 'forum'
          property :malware_family, as: 'malwareFamily'
          property :posted_time, as: 'postedTime'
          property :source_uri, as: 'sourceUri'
          property :user_key, as: 'userKey'
          property :user_secret_evidence, as: 'userSecretEvidence'
        end
      end
      
      class Configuration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit, as: 'audit', class: Google::Apis::ThreatintelligenceV1beta::Audit, decorator: Google::Apis::ThreatintelligenceV1beta::Audit::Representation
      
          property :description, as: 'description'
          property :detail, as: 'detail', class: Google::Apis::ThreatintelligenceV1beta::ConfigurationDetail, decorator: Google::Apis::ThreatintelligenceV1beta::ConfigurationDetail::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class ConfigurationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_discovery, as: 'assetDiscovery', class: Google::Apis::ThreatintelligenceV1beta::AssetDiscoveryConfig, decorator: Google::Apis::ThreatintelligenceV1beta::AssetDiscoveryConfig::Representation
      
          property :customer_profile, as: 'customerProfile', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileConfig, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileConfig::Representation
      
          property :detail_type, as: 'detailType'
          property :domain_monitoring, as: 'domainMonitoring', class: Google::Apis::ThreatintelligenceV1beta::DomainMonitoringConfig, decorator: Google::Apis::ThreatintelligenceV1beta::DomainMonitoringConfig::Representation
      
          property :initial_access_broker, as: 'initialAccessBroker', class: Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerConfig, decorator: Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerConfig::Representation
      
          property :technology_watchlist, as: 'technologyWatchlist', class: Google::Apis::ThreatintelligenceV1beta::TechnologyWatchListConfig, decorator: Google::Apis::ThreatintelligenceV1beta::TechnologyWatchListConfig::Representation
      
        end
      end
      
      class ConfigurationRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :snapshot, as: 'snapshot', class: Google::Apis::ThreatintelligenceV1beta::Configuration, decorator: Google::Apis::ThreatintelligenceV1beta::Configuration::Representation
      
        end
      end
      
      class CustomerProfileCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_id, as: 'citationId'
          property :document, as: 'document'
          property :retrieval_time, as: 'retrievalTime'
          property :source, as: 'source'
          property :uri, as: 'uri'
        end
      end
      
      class CustomerProfileCitedString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_ids, as: 'citationIds'
          property :value, as: 'value'
        end
      end
      
      class CustomerProfileCompany
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_ids, as: 'citationIds'
          property :company, as: 'company'
        end
      end
      
      class CustomerProfileConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitation, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitation::Representation
      
          collection :contact_info, as: 'contactInfo', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileContactInfo, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileContactInfo::Representation
      
          collection :executives, as: 'executives', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfilePerson, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfilePerson::Representation
      
          collection :industries, as: 'industries', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileIndustry, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileIndustry::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileLocation, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileLocation::Representation
      
          property :org, as: 'org'
          property :org_summary, as: 'orgSummary'
          collection :parent_companies, as: 'parentCompanies', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCompany, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCompany::Representation
      
          collection :products, as: 'products', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileProduct, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileProduct::Representation
      
          property :security_considerations, as: 'securityConsiderations', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileSecurityConsiderations, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileSecurityConsiderations::Representation
      
          property :summary, as: 'summary', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileSummary, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileSummary::Representation
      
          property :technology_presence, as: 'technologyPresence'
          collection :web_presences, as: 'webPresences', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileWebPresence, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileWebPresence::Representation
      
        end
      end
      
      class CustomerProfileContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          collection :citation_ids, as: 'citationIds'
          property :email, as: 'email'
          property :label, as: 'label'
          property :other, as: 'other'
          property :phone, as: 'phone'
        end
      end
      
      class CustomerProfileIndustry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_ids, as: 'citationIds'
          property :industry, as: 'industry'
        end
      end
      
      class CustomerProfileLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :brand, as: 'brand'
          collection :citation_ids, as: 'citationIds'
          property :facility_type, as: 'facilityType'
        end
      end
      
      class CustomerProfilePerson
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_ids, as: 'citationIds'
          property :name, as: 'name'
          property :title, as: 'title'
        end
      end
      
      class CustomerProfileProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          collection :citation_ids, as: 'citationIds'
          property :product, as: 'product'
        end
      end
      
      class CustomerProfileSecurityConsiderations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :considerations, as: 'considerations'
          property :note, as: 'note'
        end
      end
      
      class CustomerProfileSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :area_served, as: 'areaServed', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :brands, as: 'brands', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :entity_type, as: 'entityType', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :founded, as: 'founded', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :headquarters, as: 'headquarters', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :industry, as: 'industry', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :key_people_summary, as: 'keyPeopleSummary', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :parent_company, as: 'parentCompany', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :primary_website, as: 'primaryWebsite', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :products_summary, as: 'productsSummary', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :services_summary, as: 'servicesSummary', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
          property :title, as: 'title', class: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString, decorator: Google::Apis::ThreatintelligenceV1beta::CustomerProfileCitedString::Representation
      
        end
      end
      
      class CustomerProfileWebPresence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_ids, as: 'citationIds'
          property :domain, as: 'domain'
        end
      end
      
      class DataLeakAlertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovery_document_ids, as: 'discoveryDocumentIds'
          property :severity, as: 'severity'
        end
      end
      
      class DataLeakFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :match_score, as: 'matchScore'
          property :severity, as: 'severity'
        end
      end
      
      class DomainMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::ThreatintelligenceV1beta::DomainMonitoringDomain, decorator: Google::Apis::ThreatintelligenceV1beta::DomainMonitoringDomain::Representation
      
        end
      end
      
      class DomainMonitoringDomain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
        end
      end
      
      class EntityProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :countries, as: 'countries'
          collection :domains, as: 'domains'
          collection :industries, as: 'industries'
          property :name, as: 'name'
          collection :operational_areas, as: 'operationalAreas'
          property :profile_summary, as: 'profileSummary'
          collection :regions, as: 'regions'
          collection :sub_industries, as: 'subIndustries'
        end
      end
      
      class EnumerateAlertFacetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facets, as: 'facets', class: Google::Apis::ThreatintelligenceV1beta::Facet, decorator: Google::Apis::ThreatintelligenceV1beta::Facet::Representation
      
        end
      end
      
      class Evidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :common_themes, as: 'commonThemes'
          collection :distinct_themes, as: 'distinctThemes'
        end
      end
      
      class Facet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :facet, as: 'facet'
          collection :facet_counts, as: 'facetCounts', class: Google::Apis::ThreatintelligenceV1beta::FacetCount, decorator: Google::Apis::ThreatintelligenceV1beta::FacetCount::Representation
      
          property :facet_type, as: 'facetType'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class FacetCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :value, as: 'value'
        end
      end
      
      class Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ai_summary, as: 'aiSummary'
          property :alert, as: 'alert'
          property :asset, as: 'asset'
          property :audit, as: 'audit', class: Google::Apis::ThreatintelligenceV1beta::Audit, decorator: Google::Apis::ThreatintelligenceV1beta::Audit::Representation
      
          collection :configurations, as: 'configurations'
          property :detail, as: 'detail', class: Google::Apis::ThreatintelligenceV1beta::FindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::FindingDetail::Representation
      
          property :display_name, as: 'displayName'
          property :issue, as: 'issue'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :relevance_analysis, as: 'relevanceAnalysis', class: Google::Apis::ThreatintelligenceV1beta::RelevanceAnalysis, decorator: Google::Apis::ThreatintelligenceV1beta::RelevanceAnalysis::Representation
      
          collection :reoccurrence_times, as: 'reoccurrenceTimes'
          property :severity, as: 'severity'
          property :severity_analysis, as: 'severityAnalysis', class: Google::Apis::ThreatintelligenceV1beta::SeverityAnalysis, decorator: Google::Apis::ThreatintelligenceV1beta::SeverityAnalysis::Representation
      
        end
      end
      
      class FindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compromised_credentials, as: 'compromisedCredentials', class: Google::Apis::ThreatintelligenceV1beta::CompromisedCredentialsFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::CompromisedCredentialsFindingDetail::Representation
      
          property :data_leak, as: 'dataLeak', class: Google::Apis::ThreatintelligenceV1beta::DataLeakFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::DataLeakFindingDetail::Representation
      
          property :detail_type, as: 'detailType'
          property :inband_vulnerability, as: 'inbandVulnerability', class: Google::Apis::ThreatintelligenceV1beta::InbandVulnerabilityFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::InbandVulnerabilityFindingDetail::Representation
      
          property :initial_access_broker, as: 'initialAccessBroker', class: Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerFindingDetail::Representation
      
          property :insider_threat, as: 'insiderThreat', class: Google::Apis::ThreatintelligenceV1beta::InsiderThreatFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::InsiderThreatFindingDetail::Representation
      
          property :misconfiguration, as: 'misconfiguration', class: Google::Apis::ThreatintelligenceV1beta::MisconfigurationFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::MisconfigurationFindingDetail::Representation
      
          property :suspicious_domain, as: 'suspiciousDomain', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainFindingDetail::Representation
      
          property :target_technology, as: 'targetTechnology', class: Google::Apis::ThreatintelligenceV1beta::TargetTechnologyFindingDetail, decorator: Google::Apis::ThreatintelligenceV1beta::TargetTechnologyFindingDetail::Representation
      
        end
      end
      
      class GenerateOrgProfileConfigurationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :domain, as: 'domain'
        end
      end
      
      class InbandVulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_software, as: 'affectedSoftware', class: Google::Apis::ThreatintelligenceV1beta::AffectedSoftware, decorator: Google::Apis::ThreatintelligenceV1beta::AffectedSoftware::Representation
      
          collection :authors, as: 'authors'
          property :cve_id, as: 'cveId'
          property :cvss_v31_score, as: 'cvssV31Score'
          property :cvss_v31_score_temporal, as: 'cvssV31ScoreTemporal'
          property :description, as: 'description'
          property :disclosure_time, as: 'disclosureTime'
          property :exploitation_state, as: 'exploitationState'
          property :external_vulnerability_id, as: 'externalVulnerabilityId'
          property :is_exploited_wild, as: 'isExploitedWild'
          collection :reference_urls, as: 'referenceUrls'
          property :remediation, as: 'remediation'
          property :risk_rating, as: 'riskRating'
          property :title, as: 'title'
        end
      end
      
      class InbandVulnerabilityFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_proof_details, as: 'formattedProofDetails'
          property :request_uri, as: 'requestUri'
          property :vulnerability, as: 'vulnerability', class: Google::Apis::ThreatintelligenceV1beta::InbandVulnerability, decorator: Google::Apis::ThreatintelligenceV1beta::InbandVulnerability::Representation
      
        end
      end
      
      class InitialAccessBrokerAlertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovery_document_ids, as: 'discoveryDocumentIds'
          property :severity, as: 'severity'
        end
      end
      
      class InitialAccessBrokerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_profile, as: 'entityProfile', class: Google::Apis::ThreatintelligenceV1beta::EntityProfile, decorator: Google::Apis::ThreatintelligenceV1beta::EntityProfile::Representation
      
        end
      end
      
      class InitialAccessBrokerFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :match_score, as: 'matchScore'
          property :severity, as: 'severity'
        end
      end
      
      class InsiderThreatAlertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovery_document_ids, as: 'discoveryDocumentIds'
          property :severity, as: 'severity'
        end
      end
      
      class InsiderThreatFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :match_score, as: 'matchScore'
          property :severity, as: 'severity'
        end
      end
      
      class ListAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alerts, as: 'alerts', class: Google::Apis::ThreatintelligenceV1beta::Alert, decorator: Google::Apis::ThreatintelligenceV1beta::Alert::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConfigurationRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :revisions, as: 'revisions', class: Google::Apis::ThreatintelligenceV1beta::ConfigurationRevision, decorator: Google::Apis::ThreatintelligenceV1beta::ConfigurationRevision::Representation
      
        end
      end
      
      class ListConfigurationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configurations, as: 'configurations', class: Google::Apis::ThreatintelligenceV1beta::Configuration, decorator: Google::Apis::ThreatintelligenceV1beta::Configuration::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::ThreatintelligenceV1beta::Finding, decorator: Google::Apis::ThreatintelligenceV1beta::Finding::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MarkAlertAsBenignRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsDuplicateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicate_of, as: 'duplicateOf'
        end
      end
      
      class MarkAlertAsEscalatedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsFalsePositiveRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsNotActionableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsReadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsResolvedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsTrackedExternallyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MarkAlertAsTriagedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MisconfigurationFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :misconfiguration_metadata, as: 'misconfigurationMetadata', class: Google::Apis::ThreatintelligenceV1beta::MisconfigurationMetadata, decorator: Google::Apis::ThreatintelligenceV1beta::MisconfigurationMetadata::Representation
      
        end
      end
      
      class MisconfigurationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :misconfiguration_id, as: 'misconfigurationId'
          collection :references, as: 'references', class: Google::Apis::ThreatintelligenceV1beta::MisconfigurationReference, decorator: Google::Apis::ThreatintelligenceV1beta::MisconfigurationReference::Representation
      
          property :remediation, as: 'remediation'
          property :vulnerable_uri, as: 'vulnerableUri'
        end
      end
      
      class MisconfigurationReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ThreatintelligenceV1beta::Status, decorator: Google::Apis::ThreatintelligenceV1beta::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PriorityAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :priority_level, as: 'priorityLevel'
          property :reasoning, as: 'reasoning'
        end
      end
      
      class RefreshAlertUriStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RefreshAlertUriStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class RelevanceAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :evidence, as: 'evidence', class: Google::Apis::ThreatintelligenceV1beta::Evidence, decorator: Google::Apis::ThreatintelligenceV1beta::Evidence::Representation
      
          property :reasoning, as: 'reasoning'
          property :relevance_level, as: 'relevanceLevel'
          property :relevant, as: 'relevant'
        end
      end
      
      class ReportAlertUriRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReportAlertUriResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class SearchFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::ThreatintelligenceV1beta::Finding, decorator: Google::Apis::ThreatintelligenceV1beta::Finding::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SeverityAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :reasoning, as: 'reasoning'
          property :severity_level, as: 'severityLevel'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SuspiciousDomainAlertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns, as: 'dns', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsDetails, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsDetails::Representation
      
          property :domain, as: 'domain'
          property :gti_details, as: 'gtiDetails', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainGtiDetails, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainGtiDetails::Representation
      
          property :web_risk_operation, as: 'webRiskOperation'
          property :web_risk_state, as: 'webRiskState'
          property :whois, as: 'whois', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainWhoIsDetails, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainWhoIsDetails::Representation
      
        end
      end
      
      class SuspiciousDomainDnsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_records, as: 'dnsRecords', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsRecord, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsRecord::Representation
      
          property :retrieval_time, as: 'retrievalTime'
        end
      end
      
      class SuspiciousDomainDnsRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record, as: 'record'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class SuspiciousDomainFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns, as: 'dns', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsDetails, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsDetails::Representation
      
          property :domain, as: 'domain'
          property :gti_details, as: 'gtiDetails', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainGtiDetails, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainGtiDetails::Representation
      
          property :match_score, as: 'matchScore'
          property :severity, as: 'severity'
          property :whois, as: 'whois', class: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainWhoIsDetails, decorator: Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainWhoIsDetails::Representation
      
        end
      end
      
      class SuspiciousDomainGtiDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threat_score, as: 'threatScore'
          property :verdict, as: 'verdict'
          property :virustotal_uri, as: 'virustotalUri'
        end
      end
      
      class SuspiciousDomainWhoIsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retrieval_time, as: 'retrievalTime'
          property :whois, as: 'whois'
        end
      end
      
      class TargetTechnologyAlertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vulnerability_match, as: 'vulnerabilityMatch', class: Google::Apis::ThreatintelligenceV1beta::VulnerabilityMatch, decorator: Google::Apis::ThreatintelligenceV1beta::VulnerabilityMatch::Representation
      
        end
      end
      
      class TargetTechnologyFindingDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vulnerability_match, as: 'vulnerabilityMatch', class: Google::Apis::ThreatintelligenceV1beta::VulnerabilityMatch, decorator: Google::Apis::ThreatintelligenceV1beta::VulnerabilityMatch::Representation
      
        end
      end
      
      class TechnologyWatchListAlertThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score_minimum, as: 'cvssScoreMinimum'
          property :epss_score_minimum, as: 'epssScoreMinimum'
          collection :exploitation_states, as: 'exploitationStates'
          property :priority_minimum, as: 'priorityMinimum'
        end
      end
      
      class TechnologyWatchListConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_threshold, as: 'alertThreshold', class: Google::Apis::ThreatintelligenceV1beta::TechnologyWatchListAlertThreshold, decorator: Google::Apis::ThreatintelligenceV1beta::TechnologyWatchListAlertThreshold::Representation
      
          collection :technologies, as: 'technologies'
        end
      end
      
      class UpsertConfigurationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration, as: 'configuration'
        end
      end
      
      class VulnerabilityMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::ThreatintelligenceV1beta::Association, decorator: Google::Apis::ThreatintelligenceV1beta::Association::Representation
      
          property :collection_id, as: 'collectionId'
          property :cve_id, as: 'cveId'
          property :cvss3_score, as: 'cvss3Score'
          property :description, as: 'description'
          property :exploitation_state, as: 'exploitationState'
          property :risk_rating, as: 'riskRating'
          collection :technologies, as: 'technologies'
        end
      end
    end
  end
end
