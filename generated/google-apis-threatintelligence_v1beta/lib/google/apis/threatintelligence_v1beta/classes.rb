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
      
      # The software that is affected by the vulnerability.
      class AffectedSoftware
        include Google::Apis::Core::Hashable
      
        # Optional. The product of the software.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Optional. The vendor of the software.
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # Stateful object representing a group of Findings. Key feature to an Alert is
      # that it expresses the user's intent towards the findings of that group, even
      # those that haven't occurred yet.
      class Alert
        include Google::Apis::Core::Hashable
      
        # Optional. AI summary of the finding.
        # Corresponds to the JSON property `aiSummary`
        # @return [String]
        attr_accessor :ai_summary
      
        # Output only. Assets that are impacted by this alert.
        # Corresponds to the JSON property `assets`
        # @return [Array<String>]
        attr_accessor :assets
      
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
          @assets = args[:assets] if args.key?(:assets)
          @audit = args[:audit] if args.key?(:audit)
          @configurations = args[:configurations] if args.key?(:configurations)
          @detail = args[:detail] if args.key?(:detail)
          @display_name = args[:display_name] if args.key?(:display_name)
          @duplicate_of = args[:duplicate_of] if args.key?(:duplicate_of)
          @duplicated_by = args[:duplicated_by] if args.key?(:duplicated_by)
          @etag = args[:etag] if args.key?(:etag)
          @external_id = args[:external_id] if args.key?(:external_id)
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
      
        # The alert detail for a suspicious domain finding.
        # Corresponds to the JSON property `suspiciousDomain`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainAlertDetail]
        attr_accessor :suspicious_domain
      
        # Contains details for a technology watchlist alert.
        # Corresponds to the JSON property `targetTechnology`
        # @return [Google::Apis::ThreatintelligenceV1beta::TargetTechnologyAlertDetail]
        attr_accessor :target_technology
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_leak = args[:data_leak] if args.key?(:data_leak)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
          @initial_access_broker = args[:initial_access_broker] if args.key?(:initial_access_broker)
          @insider_threat = args[:insider_threat] if args.key?(:insider_threat)
          @suspicious_domain = args[:suspicious_domain] if args.key?(:suspicious_domain)
          @target_technology = args[:target_technology] if args.key?(:target_technology)
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
      
        # Output only. The time the document was created.
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
      
      # Customer defined Configuration for asset discovery.
      class AssetDiscoveryConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp of the last scan completed. This field is set by the
        # system and cannot be modified by the user.
        # Corresponds to the JSON property `lastScanCompleteTime`
        # @return [String]
        attr_accessor :last_scan_complete_time
      
        # Output only. Timestamp of the last scan started - used for scheduling the next
        # scan. This field is set by the system and cannot be modified by the user.
        # Corresponds to the JSON property `lastScanStartTime`
        # @return [String]
        attr_accessor :last_scan_start_time
      
        # Required. Frequency at which the scheduled discovery scan should be run. If
        # not specified, the default frequency is DAILY.
        # Corresponds to the JSON property `scanFrequency`
        # @return [String]
        attr_accessor :scan_frequency
      
        # Optional. Seed assets that are out of scope for the scheduled discovery scan.
        # Corresponds to the JSON property `scopeExclusionAssets`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::AssetDiscoverySeed>]
        attr_accessor :scope_exclusion_assets
      
        # Required. Seed assets for the scheduled discovery scan. At least one seed
        # asset is required.
        # Corresponds to the JSON property `seedAssets`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::AssetDiscoverySeed>]
        attr_accessor :seed_assets
      
        # Required. Workflow to be used for the scheduled discovery scan. If not
        # specified, the default workflow is EXTERNAL_DISCOVERY.
        # Corresponds to the JSON property `workflow`
        # @return [String]
        attr_accessor :workflow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_scan_complete_time = args[:last_scan_complete_time] if args.key?(:last_scan_complete_time)
          @last_scan_start_time = args[:last_scan_start_time] if args.key?(:last_scan_start_time)
          @scan_frequency = args[:scan_frequency] if args.key?(:scan_frequency)
          @scope_exclusion_assets = args[:scope_exclusion_assets] if args.key?(:scope_exclusion_assets)
          @seed_assets = args[:seed_assets] if args.key?(:seed_assets)
          @workflow = args[:workflow] if args.key?(:workflow)
        end
      end
      
      # Seed assets for asset discovery.
      class AssetDiscoverySeed
        include Google::Apis::Core::Hashable
      
        # Required. Type of the seed asset.
        # Corresponds to the JSON property `seedType`
        # @return [String]
        attr_accessor :seed_type
      
        # Required. Value for the seed asset. Could be an IP address, network service,
        # email addresses, etc.
        # Corresponds to the JSON property `seedValue`
        # @return [String]
        attr_accessor :seed_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @seed_type = args[:seed_type] if args.key?(:seed_type)
          @seed_value = args[:seed_value] if args.key?(:seed_value)
        end
      end
      
      # Represents an association with a vulnerability.
      class Association
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the association.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The type of the association.
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
      
      # Sample compromised credential detail.
      class CompromisedCredentialsFindingDetail
        include Google::Apis::Core::Hashable
      
        # Optional. Reference to the author this detail was extracted from. This is
        # deprecated and will be removed.
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # Optional. Claimed site the credential is intended for.
        # Corresponds to the JSON property `credentialService`
        # @return [String]
        attr_accessor :credential_service
      
        # Optional. Reference to the dark web document. This is deprecated and will be
        # removed.
        # Corresponds to the JSON property `darkWebDoc`
        # @return [String]
        attr_accessor :dark_web_doc
      
        # Optional. This will contain a link to the external reference for this
        # credential. If set, this is a link back to the DTM product to allow customers
        # to get additional context about this finding.
        # Corresponds to the JSON property `externalReferenceUri`
        # @return [String]
        attr_accessor :external_reference_uri
      
        # Optional. If the source of the credential was from a file dump this will
        # contain the name of the file the credential was found in. This can be used by
        # customers for context on where the credential was found and to try to find
        # other references to the file in the wild.
        # Corresponds to the JSON property `fileDump`
        # @return [String]
        attr_accessor :file_dump
      
        # Optional. A list of hashes of the file dump. These will be prefixed with the
        # algorithm. Example: "sha256:"
        # Corresponds to the JSON property `fileDumpHashes`
        # @return [Array<String>]
        attr_accessor :file_dump_hashes
      
        # Optional. If file_dump is set this will contain the size of the dump file in
        # bytes. File dumps can be very large.
        # Corresponds to the JSON property `fileDumpSizeBytes`
        # @return [Fixnum]
        attr_accessor :file_dump_size_bytes
      
        # Optional. Reference to the forum this detail was extracted from. This is
        # deprecated and will be removed.
        # Corresponds to the JSON property `forum`
        # @return [String]
        attr_accessor :forum
      
        # Optional. This will indicate the malware family that leaked this credential,
        # if known.
        # Corresponds to the JSON property `malwareFamily`
        # @return [String]
        attr_accessor :malware_family
      
        # Optional. This indicates our best guess as to when the credential was leaked
        # to the particular venue that triggered this finding. This is not necessarily
        # the time the credential was actually leaked and it may not always be be
        # accurate.
        # Corresponds to the JSON property `postedTime`
        # @return [String]
        attr_accessor :posted_time
      
        # Optional. If the source of a credential is publicly addressable this will
        # contain a uri to the where the credential was found.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # Required. This field will always be set and will be used to identify the user
        # named in the credential leak. In cases where customers are authorized to see
        # the actual user key this will be set to the actual user key. In cases where
        # the customer is not authorized to see the actual user key this will be set to
        # a hash of the user key. The hashed value is an intentionally opaque value that
        # is not intended to be used for any other purpose than to uniquely identify the
        # user in the context of this specific customer, service domain, and user name.
        # Example: "user@example.com" or "redacted:".
        # Corresponds to the JSON property `userKey`
        # @return [String]
        attr_accessor :user_key
      
        # Optional. Claimed evidence of the password/secret. This will always be hashed.
        # In the event where the plaintext password is known it will be set to "redacted:
        # " where the same hash will be presented when the same password is found for
        # the same organization for the same service. Redaction is done by hashing the
        # password with a salt that is unique to the customer organization and service.
        # In the event where the plaintext password is not known it will be set to ":"
        # where the algorithm is the hash algorithm used and the hash is the hash of the
        # password using that algorithm. In the event we don't know the exact algorithm
        # used we will set it to "hashed:".
        # Corresponds to the JSON property `userSecretEvidence`
        # @return [String]
        attr_accessor :user_secret_evidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @credential_service = args[:credential_service] if args.key?(:credential_service)
          @dark_web_doc = args[:dark_web_doc] if args.key?(:dark_web_doc)
          @external_reference_uri = args[:external_reference_uri] if args.key?(:external_reference_uri)
          @file_dump = args[:file_dump] if args.key?(:file_dump)
          @file_dump_hashes = args[:file_dump_hashes] if args.key?(:file_dump_hashes)
          @file_dump_size_bytes = args[:file_dump_size_bytes] if args.key?(:file_dump_size_bytes)
          @forum = args[:forum] if args.key?(:forum)
          @malware_family = args[:malware_family] if args.key?(:malware_family)
          @posted_time = args[:posted_time] if args.key?(:posted_time)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @user_key = args[:user_key] if args.key?(:user_key)
          @user_secret_evidence = args[:user_secret_evidence] if args.key?(:user_secret_evidence)
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
      
        # Identifier. Server generated name for the configuration. format is vaults/`
        # vault`/configurations/`configuration`
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
      
        # Customer defined Configuration for asset discovery.
        # Corresponds to the JSON property `assetDiscovery`
        # @return [Google::Apis::ThreatintelligenceV1beta::AssetDiscoveryConfig]
        attr_accessor :asset_discovery
      
        # CustomerProfileConfig is the configuration for the customer profile.
        # Corresponds to the JSON property `customerProfile`
        # @return [Google::Apis::ThreatintelligenceV1beta::CustomerProfileConfig]
        attr_accessor :customer_profile
      
        # Output only. Name of the detail type. Will be set by the server during
        # creation to the name of the field that is set in the detail union.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        # Any account-level configuration options will go here.
        # Corresponds to the JSON property `domainMonitoring`
        # @return [Google::Apis::ThreatintelligenceV1beta::DomainMonitoringConfig]
        attr_accessor :domain_monitoring
      
        # InitialAccessBrokerConfig is specific to Initial Access Broker (IAB) matching
        # scenarios.
        # Corresponds to the JSON property `initialAccessBroker`
        # @return [Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerConfig]
        attr_accessor :initial_access_broker
      
        # TechnologyWatchListConfig is the configuration for the technology watchlist.
        # Corresponds to the JSON property `technologyWatchlist`
        # @return [Google::Apis::ThreatintelligenceV1beta::TechnologyWatchListConfig]
        attr_accessor :technology_watchlist
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_discovery = args[:asset_discovery] if args.key?(:asset_discovery)
          @customer_profile = args[:customer_profile] if args.key?(:customer_profile)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
          @domain_monitoring = args[:domain_monitoring] if args.key?(:domain_monitoring)
          @initial_access_broker = args[:initial_access_broker] if args.key?(:initial_access_broker)
          @technology_watchlist = args[:technology_watchlist] if args.key?(:technology_watchlist)
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
      
        # Identifier. The name of the ConfigurationRevision Format: vaults//
        # configurations//revisions/ OR projects//configurations//revisions/
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
      
        # Required. Data Leak specific severity This will be the string representation
        # of the DataLeakFindingDetail.Severityenum. (e.g., "LOW", "MEDIUM", "HIGH", "
        # CRITICAL")
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
      
      # Any account-level configuration options will go here.
      class DomainMonitoringConfig
        include Google::Apis::Core::Hashable
      
        # The domains to use as "seeds" for Suspicious Domain Monitoring.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::DomainMonitoringDomain>]
        attr_accessor :domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
        end
      end
      
      # A Domain Monitoring "domain"
      class DomainMonitoringDomain
        include Google::Apis::Core::Hashable
      
        # The domain name to match against.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # EntityProfile represents the structured profile of a customer entity,
      # containing key identifiers and descriptive attributes optimized for contextual
      # matching against threat intelligence, particularly Initial Access Broker (IAB)
      # offerings.
      class EntityProfile
        include Google::Apis::Core::Hashable
      
        # Optional. List of specific countries of operation. Purpose: Essential for
        # matching geographically targeted threats (e.g., actor specifies victims in 'DE'
        # ). Use ISO 3166-1 alpha-2 codes (e.g., "US", "GB", "JP", "DE").
        # Corresponds to the JSON property `countries`
        # @return [Array<String>]
        attr_accessor :countries
      
        # Required. List of primary internet domain names associated with the entity.
        # Purpose: Crucial for explicit matching against domains mentioned in threat
        # intel and can inform semantic matching. Must contain at least one domain.
        # Example: ["acme.com", "acme.co.uk"]
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # Optional. List of primary industry sectors the entity operates within. Purpose:
        # Crucial for matching industry-specific threats and understanding attacker
        # motivation. Use standardized GTI Industry Classification values. Example: ["
        # Technology", "Financial Services", "Healthcare"]
        # Corresponds to the JSON property `industries`
        # @return [Array<String>]
        attr_accessor :industries
      
        # Required. Canonical name of the entity (e.g., the legal company name). Purpose:
        # Primary identifier for the customer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Specific geographic areas of *significant* operational concentration
        # or strategic importance below the country level, if clearly identifiable and
        # relevant. Purpose: Useful for highly localized threats, less commonly
        # populated than `countries`. Example: ["Silicon Valley", "Frankfurt am Main
        # Metropolitan Region"]
        # Corresponds to the JSON property `operationalAreas`
        # @return [Array<String>]
        attr_accessor :operational_areas
      
        # Required. A concise, machine-generated (e.g., LLM) or human-curated summary of
        # the entity. Purpose: Captures the semantic essence for embedding generation
        # and similarity matching. Should synthesize key aspects like core business,
        # scale, and market. Example: "Acme Corporation is a large, US-based
        # multinational conglomerate operating..."
        # Corresponds to the JSON property `profileSummary`
        # @return [String]
        attr_accessor :profile_summary
      
        # Optional. List of primary geopolitical regions where the entity has
        # significant operations. Purpose: Filters geographically relevant threats. Use
        # standardized names or codes where possible (e.g., "North America", "EMEA", "
        # APAC", UN M49 codes).
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        # Optional. List of more granular sub-industries, if applicable and known.
        # Purpose: Provides finer-grained context for more specific threat matching.
        # Should align with GTI classifications if possible. Example: ["Semiconductors",
        # "Cloud Computing Services", "Investment Banking"]
        # Corresponds to the JSON property `subIndustries`
        # @return [Array<String>]
        attr_accessor :sub_industries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @countries = args[:countries] if args.key?(:countries)
          @domains = args[:domains] if args.key?(:domains)
          @industries = args[:industries] if args.key?(:industries)
          @name = args[:name] if args.key?(:name)
          @operational_areas = args[:operational_areas] if args.key?(:operational_areas)
          @profile_summary = args[:profile_summary] if args.key?(:profile_summary)
          @regions = args[:regions] if args.key?(:regions)
          @sub_industries = args[:sub_industries] if args.key?(:sub_industries)
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
      
        # Optional. Optional - asset name if known. Format: vaults/`vault`/assets/`asset`
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
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
      
        # Optional. Optional - name of the issue that this finding is bound to. Format:
        # vaults/`vault`/issues/`issue`
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # Identifier. Server generated name for the finding (leave clear during creation)
        # . Format: vaults/`vault`/findings/`finding`
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
          @asset = args[:asset] if args.key?(:asset)
          @audit = args[:audit] if args.key?(:audit)
          @configurations = args[:configurations] if args.key?(:configurations)
          @detail = args[:detail] if args.key?(:detail)
          @display_name = args[:display_name] if args.key?(:display_name)
          @issue = args[:issue] if args.key?(:issue)
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
      
        # Sample compromised credential detail.
        # Corresponds to the JSON property `compromisedCredentials`
        # @return [Google::Apis::ThreatintelligenceV1beta::CompromisedCredentialsFindingDetail]
        attr_accessor :compromised_credentials
      
        # A detail object for a Data Leak finding.
        # Corresponds to the JSON property `dataLeak`
        # @return [Google::Apis::ThreatintelligenceV1beta::DataLeakFindingDetail]
        attr_accessor :data_leak
      
        # Output only. Name of the detail type. Will be set by the server during
        # creation to the name of the field that is set in the detail union.
        # Corresponds to the JSON property `detailType`
        # @return [String]
        attr_accessor :detail_type
      
        # This is a temporary detail type that will be used to support vulnerabilities
        # until the engines start using the full vulnerability objects. The "Inband"
        # refers to the fact that all vulnerability details are included with every
        # finding.
        # Corresponds to the JSON property `inbandVulnerability`
        # @return [Google::Apis::ThreatintelligenceV1beta::InbandVulnerabilityFindingDetail]
        attr_accessor :inband_vulnerability
      
        # A detail object for an Initial Access Broker (IAB) finding.
        # Corresponds to the JSON property `initialAccessBroker`
        # @return [Google::Apis::ThreatintelligenceV1beta::InitialAccessBrokerFindingDetail]
        attr_accessor :initial_access_broker
      
        # A detail object for a InsiderThreat finding.
        # Corresponds to the JSON property `insiderThreat`
        # @return [Google::Apis::ThreatintelligenceV1beta::InsiderThreatFindingDetail]
        attr_accessor :insider_threat
      
        # Misconfiguration finding detail.
        # Corresponds to the JSON property `misconfiguration`
        # @return [Google::Apis::ThreatintelligenceV1beta::MisconfigurationFindingDetail]
        attr_accessor :misconfiguration
      
        # A detailed object for a suspicious Domain finding.
        # Corresponds to the JSON property `suspiciousDomain`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainFindingDetail]
        attr_accessor :suspicious_domain
      
        # Contains details for a technology watchlist finding.
        # Corresponds to the JSON property `targetTechnology`
        # @return [Google::Apis::ThreatintelligenceV1beta::TargetTechnologyFindingDetail]
        attr_accessor :target_technology
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compromised_credentials = args[:compromised_credentials] if args.key?(:compromised_credentials)
          @data_leak = args[:data_leak] if args.key?(:data_leak)
          @detail_type = args[:detail_type] if args.key?(:detail_type)
          @inband_vulnerability = args[:inband_vulnerability] if args.key?(:inband_vulnerability)
          @initial_access_broker = args[:initial_access_broker] if args.key?(:initial_access_broker)
          @insider_threat = args[:insider_threat] if args.key?(:insider_threat)
          @misconfiguration = args[:misconfiguration] if args.key?(:misconfiguration)
          @suspicious_domain = args[:suspicious_domain] if args.key?(:suspicious_domain)
          @target_technology = args[:target_technology] if args.key?(:target_technology)
        end
      end
      
      # Fleshed out vulnerability object that includes enough details to fill out a
      # vulnerability specific view for an issue.
      class InbandVulnerability
        include Google::Apis::Core::Hashable
      
        # Optional. The software that is affected by the vulnerability.
        # Corresponds to the JSON property `affectedSoftware`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::AffectedSoftware>]
        attr_accessor :affected_software
      
        # Optional. The authors of the vulnerability detection.
        # Corresponds to the JSON property `authors`
        # @return [Array<String>]
        attr_accessor :authors
      
        # Required. The CVE ID of the vulnerability.
        # Corresponds to the JSON property `cveId`
        # @return [String]
        attr_accessor :cve_id
      
        # Required. The CVSS V3.1 score (Base score)for the vulnerability. ( )
        # Corresponds to the JSON property `cvssV31Score`
        # @return [Float]
        attr_accessor :cvss_v31_score
      
        # Optional. Temporal CVSS V3.1 score for the vulnerability.
        # Corresponds to the JSON property `cvssV31ScoreTemporal`
        # @return [Float]
        attr_accessor :cvss_v31_score_temporal
      
        # Optional. The human readable description. This can be basic HTML formatted
        # text.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The date the vulnerability was first disclosed.
        # Corresponds to the JSON property `disclosureTime`
        # @return [String]
        attr_accessor :disclosure_time
      
        # Optional. Exploitation state of the vulnerability, for example "Available".
        # Corresponds to the JSON property `exploitationState`
        # @return [String]
        attr_accessor :exploitation_state
      
        # Required. The external ID of the vulnerability.
        # Corresponds to the JSON property `externalVulnerabilityId`
        # @return [String]
        attr_accessor :external_vulnerability_id
      
        # Optional. Whether this is exploited in the wild.
        # Corresponds to the JSON property `isExploitedWild`
        # @return [Boolean]
        attr_accessor :is_exploited_wild
        alias_method :is_exploited_wild?, :is_exploited_wild
      
        # Optional. Reference URLs to the vulnerability.
        # Corresponds to the JSON property `referenceUrls`
        # @return [Array<String>]
        attr_accessor :reference_urls
      
        # Optional. The human readable remediation recommendation. This can be basic
        # HTML formatted text.
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Optional. Risk rating for the vulnerability, for example "High".
        # Corresponds to the JSON property `riskRating`
        # @return [String]
        attr_accessor :risk_rating
      
        # Optional. Human readable name for the vulnerability.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_software = args[:affected_software] if args.key?(:affected_software)
          @authors = args[:authors] if args.key?(:authors)
          @cve_id = args[:cve_id] if args.key?(:cve_id)
          @cvss_v31_score = args[:cvss_v31_score] if args.key?(:cvss_v31_score)
          @cvss_v31_score_temporal = args[:cvss_v31_score_temporal] if args.key?(:cvss_v31_score_temporal)
          @description = args[:description] if args.key?(:description)
          @disclosure_time = args[:disclosure_time] if args.key?(:disclosure_time)
          @exploitation_state = args[:exploitation_state] if args.key?(:exploitation_state)
          @external_vulnerability_id = args[:external_vulnerability_id] if args.key?(:external_vulnerability_id)
          @is_exploited_wild = args[:is_exploited_wild] if args.key?(:is_exploited_wild)
          @reference_urls = args[:reference_urls] if args.key?(:reference_urls)
          @remediation = args[:remediation] if args.key?(:remediation)
          @risk_rating = args[:risk_rating] if args.key?(:risk_rating)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # This is a temporary detail type that will be used to support vulnerabilities
      # until the engines start using the full vulnerability objects. The "Inband"
      # refers to the fact that all vulnerability details are included with every
      # finding.
      class InbandVulnerabilityFindingDetail
        include Google::Apis::Core::Hashable
      
        # Optional. A short description of the proof of the vulnerability.
        # Corresponds to the JSON property `formattedProofDetails`
        # @return [String]
        attr_accessor :formatted_proof_details
      
        # Optional. The URI that lead to this detection, if appropriate.
        # Corresponds to the JSON property `requestUri`
        # @return [String]
        attr_accessor :request_uri
      
        # Fleshed out vulnerability object that includes enough details to fill out a
        # vulnerability specific view for an issue.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::ThreatintelligenceV1beta::InbandVulnerability]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_proof_details = args[:formatted_proof_details] if args.key?(:formatted_proof_details)
          @request_uri = args[:request_uri] if args.key?(:request_uri)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # Captures the specific details of InitialAccessBroker (IAB) alert.
      class InitialAccessBrokerAlertDetail
        include Google::Apis::Core::Hashable
      
        # Required. Array of ids to accommodate multiple discovery documents
        # Corresponds to the JSON property `discoveryDocumentIds`
        # @return [Array<String>]
        attr_accessor :discovery_document_ids
      
        # Required. IAB specific severity
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
      
      # InitialAccessBrokerConfig is specific to Initial Access Broker (IAB) matching
      # scenarios.
      class InitialAccessBrokerConfig
        include Google::Apis::Core::Hashable
      
        # EntityProfile represents the structured profile of a customer entity,
        # containing key identifiers and descriptive attributes optimized for contextual
        # matching against threat intelligence, particularly Initial Access Broker (IAB)
        # offerings.
        # Corresponds to the JSON property `entityProfile`
        # @return [Google::Apis::ThreatintelligenceV1beta::EntityProfile]
        attr_accessor :entity_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_profile = args[:entity_profile] if args.key?(:entity_profile)
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
      
        # Required. InsiderThreat specific severity This will be the string
        # representation of the InsiderThreatFindingDetail.Severityenum. (e.g., "LOW", "
        # MEDIUM", "HIGH", "CRITICAL")
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
      
      # Misconfiguration finding detail.
      class MisconfigurationFindingDetail
        include Google::Apis::Core::Hashable
      
        # Misconfiguration metadata.
        # Corresponds to the JSON property `misconfigurationMetadata`
        # @return [Google::Apis::ThreatintelligenceV1beta::MisconfigurationMetadata]
        attr_accessor :misconfiguration_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @misconfiguration_metadata = args[:misconfiguration_metadata] if args.key?(:misconfiguration_metadata)
        end
      end
      
      # Misconfiguration metadata.
      class MisconfigurationMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the misconfiguration.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A user-friendly name for the misconfiguration.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The identifier for the misconfiguration. This is an internal name
        # generated by the finding provider.
        # Corresponds to the JSON property `misconfigurationId`
        # @return [String]
        attr_accessor :misconfiguration_id
      
        # Optional. References to external resources that provide more information about
        # the misconfiguration.
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::MisconfigurationReference>]
        attr_accessor :references
      
        # Optional. Recommended remediation steps for the misconfiguration.
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Optional. The endpoint which was found to have the vulnerability.
        # Corresponds to the JSON property `vulnerableUri`
        # @return [String]
        attr_accessor :vulnerable_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @misconfiguration_id = args[:misconfiguration_id] if args.key?(:misconfiguration_id)
          @references = args[:references] if args.key?(:references)
          @remediation = args[:remediation] if args.key?(:remediation)
          @vulnerable_uri = args[:vulnerable_uri] if args.key?(:vulnerable_uri)
        end
      end
      
      # A reference to an external resource that provides more information about a
      # misconfiguration.
      class MisconfigurationReference
        include Google::Apis::Core::Hashable
      
        # Required. The type of the reference (e.g., "description", "remediation").
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. The URI of the reference.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
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
      
      # Request message for FetchAlertUriStatus.
      class RefreshAlertUriStatusRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for FetchAlertUriStatus.
      class RefreshAlertUriStatusResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Status of the alert in WebRisk.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
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
      
      # Request message for ReportAlertUri.
      class ReportAlertUriRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for ReportAlertUri.
      class ReportAlertUriResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Status of the alert in WebRisk.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
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
      
      # The alert detail for a suspicious domain finding.
      class SuspiciousDomainAlertDetail
        include Google::Apis::Core::Hashable
      
        # The DNS details of the suspicious domain.
        # Corresponds to the JSON property `dns`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsDetails]
        attr_accessor :dns
      
        # Required. The suspicious domain name.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The GTI details of the suspicious domain.
        # Corresponds to the JSON property `gtiDetails`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainGtiDetails]
        attr_accessor :gti_details
      
        # Output only. Name of Web Risk submission operation.
        # Corresponds to the JSON property `webRiskOperation`
        # @return [String]
        attr_accessor :web_risk_operation
      
        # Output only. Status of the Web Risk submission.
        # Corresponds to the JSON property `webRiskState`
        # @return [String]
        attr_accessor :web_risk_state
      
        # The whois details of the suspicious domain.
        # Corresponds to the JSON property `whois`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainWhoIsDetails]
        attr_accessor :whois
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns = args[:dns] if args.key?(:dns)
          @domain = args[:domain] if args.key?(:domain)
          @gti_details = args[:gti_details] if args.key?(:gti_details)
          @web_risk_operation = args[:web_risk_operation] if args.key?(:web_risk_operation)
          @web_risk_state = args[:web_risk_state] if args.key?(:web_risk_state)
          @whois = args[:whois] if args.key?(:whois)
        end
      end
      
      # The DNS details of the suspicious domain.
      class SuspiciousDomainDnsDetails
        include Google::Apis::Core::Hashable
      
        # The DNS records of the suspicious domain.
        # Corresponds to the JSON property `dnsRecords`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsRecord>]
        attr_accessor :dns_records
      
        # The time the DNS details were retrieved.
        # Corresponds to the JSON property `retrievalTime`
        # @return [String]
        attr_accessor :retrieval_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_records = args[:dns_records] if args.key?(:dns_records)
          @retrieval_time = args[:retrieval_time] if args.key?(:retrieval_time)
        end
      end
      
      # The DNS record of the suspicious domain.
      class SuspiciousDomainDnsRecord
        include Google::Apis::Core::Hashable
      
        # The name of the DNS record.
        # Corresponds to the JSON property `record`
        # @return [String]
        attr_accessor :record
      
        # The TTL of the DNS record.
        # Corresponds to the JSON property `ttl`
        # @return [Fixnum]
        attr_accessor :ttl
      
        # The type of the DNS record.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value of the DNS record.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record = args[:record] if args.key?(:record)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A detailed object for a suspicious Domain finding.
      class SuspiciousDomainFindingDetail
        include Google::Apis::Core::Hashable
      
        # The DNS details of the suspicious domain.
        # Corresponds to the JSON property `dns`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainDnsDetails]
        attr_accessor :dns
      
        # Required. The suspicious domain name.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The GTI details of the suspicious domain.
        # Corresponds to the JSON property `gtiDetails`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainGtiDetails]
        attr_accessor :gti_details
      
        # Required. Reference to the match score of the finding. This is a float value
        # between 0 and 1 calculated by the matching engine.
        # Corresponds to the JSON property `matchScore`
        # @return [Float]
        attr_accessor :match_score
      
        # Required. The severity of the finding. This indicates the potential impact of
        # the threat.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The whois details of the suspicious domain.
        # Corresponds to the JSON property `whois`
        # @return [Google::Apis::ThreatintelligenceV1beta::SuspiciousDomainWhoIsDetails]
        attr_accessor :whois
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns = args[:dns] if args.key?(:dns)
          @domain = args[:domain] if args.key?(:domain)
          @gti_details = args[:gti_details] if args.key?(:gti_details)
          @match_score = args[:match_score] if args.key?(:match_score)
          @severity = args[:severity] if args.key?(:severity)
          @whois = args[:whois] if args.key?(:whois)
        end
      end
      
      # The GTI details of the suspicious domain.
      class SuspiciousDomainGtiDetails
        include Google::Apis::Core::Hashable
      
        # The threat score of the suspicious domain. The threat score is a number
        # between 0 and 100.
        # Corresponds to the JSON property `threatScore`
        # @return [Fixnum]
        attr_accessor :threat_score
      
        # Output only. The verdict of the suspicious domain.
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        # VirusTotal link for the domain
        # Corresponds to the JSON property `virustotalUri`
        # @return [String]
        attr_accessor :virustotal_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threat_score = args[:threat_score] if args.key?(:threat_score)
          @verdict = args[:verdict] if args.key?(:verdict)
          @virustotal_uri = args[:virustotal_uri] if args.key?(:virustotal_uri)
        end
      end
      
      # The whois details of the suspicious domain.
      class SuspiciousDomainWhoIsDetails
        include Google::Apis::Core::Hashable
      
        # The time the whois details were retrieved.
        # Corresponds to the JSON property `retrievalTime`
        # @return [String]
        attr_accessor :retrieval_time
      
        # The whois details of the suspicious domain.
        # Corresponds to the JSON property `whois`
        # @return [String]
        attr_accessor :whois
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retrieval_time = args[:retrieval_time] if args.key?(:retrieval_time)
          @whois = args[:whois] if args.key?(:whois)
        end
      end
      
      # Contains details for a technology watchlist alert.
      class TargetTechnologyAlertDetail
        include Google::Apis::Core::Hashable
      
        # Contains details about a vulnerability match.
        # Corresponds to the JSON property `vulnerabilityMatch`
        # @return [Google::Apis::ThreatintelligenceV1beta::VulnerabilityMatch]
        attr_accessor :vulnerability_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vulnerability_match = args[:vulnerability_match] if args.key?(:vulnerability_match)
        end
      end
      
      # Contains details for a technology watchlist finding.
      class TargetTechnologyFindingDetail
        include Google::Apis::Core::Hashable
      
        # Contains details about a vulnerability match.
        # Corresponds to the JSON property `vulnerabilityMatch`
        # @return [Google::Apis::ThreatintelligenceV1beta::VulnerabilityMatch]
        attr_accessor :vulnerability_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vulnerability_match = args[:vulnerability_match] if args.key?(:vulnerability_match)
        end
      end
      
      # TechnologyWatchListAlertThreshold contains the thresholds for alerting.
      class TechnologyWatchListAlertThreshold
        include Google::Apis::Core::Hashable
      
        # Optional. The minimum cvss V3 score for the alert. Ex: 7.0. Valid range is [0.
        # 0, 10.0].
        # Corresponds to the JSON property `cvssScoreMinimum`
        # @return [Float]
        attr_accessor :cvss_score_minimum
      
        # Optional. The minimum epss score for the alert. Ex: 0.8. Valid range is [0.0,
        # 1.0].
        # Corresponds to the JSON property `epssScoreMinimum`
        # @return [Float]
        attr_accessor :epss_score_minimum
      
        # Optional. The exploitation states of the alert.
        # Corresponds to the JSON property `exploitationStates`
        # @return [Array<String>]
        attr_accessor :exploitation_states
      
        # Optional. The minimum priority for the alert.
        # Corresponds to the JSON property `priorityMinimum`
        # @return [String]
        attr_accessor :priority_minimum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvss_score_minimum = args[:cvss_score_minimum] if args.key?(:cvss_score_minimum)
          @epss_score_minimum = args[:epss_score_minimum] if args.key?(:epss_score_minimum)
          @exploitation_states = args[:exploitation_states] if args.key?(:exploitation_states)
          @priority_minimum = args[:priority_minimum] if args.key?(:priority_minimum)
        end
      end
      
      # TechnologyWatchListConfig is the configuration for the technology watchlist.
      class TechnologyWatchListConfig
        include Google::Apis::Core::Hashable
      
        # TechnologyWatchListAlertThreshold contains the thresholds for alerting.
        # Corresponds to the JSON property `alertThreshold`
        # @return [Google::Apis::ThreatintelligenceV1beta::TechnologyWatchListAlertThreshold]
        attr_accessor :alert_threshold
      
        # Optional. List of vendor, technology or cpe fingerprint. example: Microsoft
        # office 360 Apache Server 3.5 cpe:2.3:a:microsoft:outlook:*:*:*:*:*:*:*:*
        # Corresponds to the JSON property `technologies`
        # @return [Array<String>]
        attr_accessor :technologies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_threshold = args[:alert_threshold] if args.key?(:alert_threshold)
          @technologies = args[:technologies] if args.key?(:technologies)
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
      
      # Contains details about a vulnerability match.
      class VulnerabilityMatch
        include Google::Apis::Core::Hashable
      
        # Optional. Associated threat actors, malware, etc. This is embedded as a
        # snapshot because the details of the association at the time of the
        # vulnerability match are important for context and reporting.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::ThreatintelligenceV1beta::Association>]
        attr_accessor :associations
      
        # Output only. The collection ID of the vulnerability. Ex: "vulnerability--cve-
        # 2025-9876".
        # Corresponds to the JSON property `collectionId`
        # @return [String]
        attr_accessor :collection_id
      
        # Output only. The CVE ID of the vulnerability. Ex: "CVE-2025-9876". See https://
        # www.cve.org/ for more information.
        # Corresponds to the JSON property `cveId`
        # @return [String]
        attr_accessor :cve_id
      
        # Output only. The CVSS v3 score of the vulnerability. Example: 6.4.
        # Corresponds to the JSON property `cvss3Score`
        # @return [Float]
        attr_accessor :cvss3_score
      
        # Output only. A description of the vulnerability.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The exploitation state of the vulnerability.
        # Corresponds to the JSON property `exploitationState`
        # @return [String]
        attr_accessor :exploitation_state
      
        # Output only. The risk rating of the vulnerability.
        # Corresponds to the JSON property `riskRating`
        # @return [String]
        attr_accessor :risk_rating
      
        # Output only. The affected technologies. Ex: "Apache Struts".
        # Corresponds to the JSON property `technologies`
        # @return [Array<String>]
        attr_accessor :technologies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associations = args[:associations] if args.key?(:associations)
          @collection_id = args[:collection_id] if args.key?(:collection_id)
          @cve_id = args[:cve_id] if args.key?(:cve_id)
          @cvss3_score = args[:cvss3_score] if args.key?(:cvss3_score)
          @description = args[:description] if args.key?(:description)
          @exploitation_state = args[:exploitation_state] if args.key?(:exploitation_state)
          @risk_rating = args[:risk_rating] if args.key?(:risk_rating)
          @technologies = args[:technologies] if args.key?(:technologies)
        end
      end
    end
  end
end
