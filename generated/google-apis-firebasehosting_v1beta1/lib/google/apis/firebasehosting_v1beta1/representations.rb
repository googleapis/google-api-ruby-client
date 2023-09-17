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
    module FirebasehostingV1beta1
      
      class ActingUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertDnsChallenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertHttpChallenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertVerification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunRewrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDomain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDomainMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsRecordSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Domain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainProvisioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainRedirect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Header
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class I18nConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReleasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVersionFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiveMigrationStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PopulateVersionFilesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PopulateVersionFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Redirect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Release
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rewrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Site
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SiteConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteCustomDomainRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VersionFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActingUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :image_url, as: 'imageUrl'
        end
      end
      
      class CertDnsChallenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :token, as: 'token'
        end
      end
      
      class CertHttpChallenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :token, as: 'token'
        end
      end
      
      class CertVerification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns, as: 'dns', class: Google::Apis::FirebasehostingV1beta1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1beta1::DnsUpdates::Representation
      
          property :http, as: 'http', class: Google::Apis::FirebasehostingV1beta1::HttpUpdate, decorator: Google::Apis::FirebasehostingV1beta1::HttpUpdate::Representation
      
        end
      end
      
      class Certificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :expire_time, as: 'expireTime'
          collection :issues, as: 'issues', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
          property :verification, as: 'verification', class: Google::Apis::FirebasehostingV1beta1::CertVerification, decorator: Google::Apis::FirebasehostingV1beta1::CertVerification::Representation
      
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :release, as: 'release', class: Google::Apis::FirebasehostingV1beta1::Release, decorator: Google::Apis::FirebasehostingV1beta1::Release::Representation
      
          property :retained_release_count, as: 'retainedReleaseCount'
          property :ttl, as: 'ttl'
          property :update_time, as: 'updateTime'
          property :url, as: 'url'
        end
      end
      
      class CloneVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude', class: Google::Apis::FirebasehostingV1beta1::PathFilter, decorator: Google::Apis::FirebasehostingV1beta1::PathFilter::Representation
      
          property :finalize, as: 'finalize'
          property :include, as: 'include', class: Google::Apis::FirebasehostingV1beta1::PathFilter, decorator: Google::Apis::FirebasehostingV1beta1::PathFilter::Representation
      
          property :source_version, as: 'sourceVersion'
        end
      end
      
      class CloudRunRewrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
          property :service_id, as: 'serviceId'
          property :tag, as: 'tag'
        end
      end
      
      class CustomDomain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cert, as: 'cert', class: Google::Apis::FirebasehostingV1beta1::Certificate, decorator: Google::Apis::FirebasehostingV1beta1::Certificate::Representation
      
          property :cert_preference, as: 'certPreference'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :host_state, as: 'hostState'
          collection :issues, as: 'issues', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :ownership_state, as: 'ownershipState'
          property :reconciling, as: 'reconciling'
          property :redirect_target, as: 'redirectTarget'
          property :required_dns_updates, as: 'requiredDnsUpdates', class: Google::Apis::FirebasehostingV1beta1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1beta1::DnsUpdates::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class CustomDomainMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_state, as: 'certState'
          property :host_state, as: 'hostState'
          collection :issues, as: 'issues', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          collection :live_migration_steps, as: 'liveMigrationSteps', class: Google::Apis::FirebasehostingV1beta1::LiveMigrationStep, decorator: Google::Apis::FirebasehostingV1beta1::LiveMigrationStep::Representation
      
          property :ownership_state, as: 'ownershipState'
          property :quick_setup_updates, as: 'quickSetupUpdates', class: Google::Apis::FirebasehostingV1beta1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1beta1::DnsUpdates::Representation
      
        end
      end
      
      class DnsRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :rdata, as: 'rdata'
          property :required_action, as: 'requiredAction'
          property :type, as: 'type'
        end
      end
      
      class DnsRecordSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_error, as: 'checkError', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          property :domain_name, as: 'domainName'
          collection :records, as: 'records', class: Google::Apis::FirebasehostingV1beta1::DnsRecord, decorator: Google::Apis::FirebasehostingV1beta1::DnsRecord::Representation
      
        end
      end
      
      class DnsUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_time, as: 'checkTime'
          collection :desired, as: 'desired', class: Google::Apis::FirebasehostingV1beta1::DnsRecordSet, decorator: Google::Apis::FirebasehostingV1beta1::DnsRecordSet::Representation
      
          collection :discovered, as: 'discovered', class: Google::Apis::FirebasehostingV1beta1::DnsRecordSet, decorator: Google::Apis::FirebasehostingV1beta1::DnsRecordSet::Representation
      
        end
      end
      
      class Domain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :domain_redirect, as: 'domainRedirect', class: Google::Apis::FirebasehostingV1beta1::DomainRedirect, decorator: Google::Apis::FirebasehostingV1beta1::DomainRedirect::Representation
      
          property :provisioning, as: 'provisioning', class: Google::Apis::FirebasehostingV1beta1::DomainProvisioning, decorator: Google::Apis::FirebasehostingV1beta1::DomainProvisioning::Representation
      
          property :site, as: 'site'
          property :status, as: 'status'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DomainProvisioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cert_challenge_discovered_txt, as: 'certChallengeDiscoveredTxt'
          property :cert_challenge_dns, as: 'certChallengeDns', class: Google::Apis::FirebasehostingV1beta1::CertDnsChallenge, decorator: Google::Apis::FirebasehostingV1beta1::CertDnsChallenge::Representation
      
          property :cert_challenge_http, as: 'certChallengeHttp', class: Google::Apis::FirebasehostingV1beta1::CertHttpChallenge, decorator: Google::Apis::FirebasehostingV1beta1::CertHttpChallenge::Representation
      
          property :cert_status, as: 'certStatus'
          collection :discovered_ips, as: 'discoveredIps'
          property :dns_fetch_time, as: 'dnsFetchTime'
          property :dns_status, as: 'dnsStatus'
          collection :expected_ips, as: 'expectedIps'
        end
      end
      
      class DomainRedirect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :type, as: 'type'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Header
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :glob, as: 'glob'
          hash :headers, as: 'headers'
          property :regex, as: 'regex'
        end
      end
      
      class HttpUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_error, as: 'checkError', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          property :desired, as: 'desired'
          property :discovered, as: 'discovered'
          property :last_check_time, as: 'lastCheckTime'
          property :path, as: 'path'
        end
      end
      
      class I18nConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :root, as: 'root'
        end
      end
      
      class ListChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::FirebasehostingV1beta1::Channel, decorator: Google::Apis::FirebasehostingV1beta1::Channel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCustomDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_domains, as: 'customDomains', class: Google::Apis::FirebasehostingV1beta1::CustomDomain, decorator: Google::Apis::FirebasehostingV1beta1::CustomDomain::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::FirebasehostingV1beta1::Domain, decorator: Google::Apis::FirebasehostingV1beta1::Domain::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FirebasehostingV1beta1::Operation, decorator: Google::Apis::FirebasehostingV1beta1::Operation::Representation
      
        end
      end
      
      class ListReleasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :releases, as: 'releases', class: Google::Apis::FirebasehostingV1beta1::Release, decorator: Google::Apis::FirebasehostingV1beta1::Release::Representation
      
        end
      end
      
      class ListSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sites, as: 'sites', class: Google::Apis::FirebasehostingV1beta1::Site, decorator: Google::Apis::FirebasehostingV1beta1::Site::Representation
      
        end
      end
      
      class ListVersionFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :files, as: 'files', class: Google::Apis::FirebasehostingV1beta1::VersionFile, decorator: Google::Apis::FirebasehostingV1beta1::VersionFile::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::FirebasehostingV1beta1::Version, decorator: Google::Apis::FirebasehostingV1beta1::Version::Representation
      
        end
      end
      
      class LiveMigrationStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_verification, as: 'certVerification', class: Google::Apis::FirebasehostingV1beta1::CertVerification, decorator: Google::Apis::FirebasehostingV1beta1::CertVerification::Representation
      
          property :dns_updates, as: 'dnsUpdates', class: Google::Apis::FirebasehostingV1beta1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1beta1::DnsUpdates::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FirebasehostingV1beta1::Status, decorator: Google::Apis::FirebasehostingV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PathFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :regexes, as: 'regexes'
        end
      end
      
      class PopulateVersionFilesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :files, as: 'files'
        end
      end
      
      class PopulateVersionFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :upload_required_hashes, as: 'uploadRequiredHashes'
          property :upload_url, as: 'uploadUrl'
        end
      end
      
      class Redirect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :glob, as: 'glob'
          property :location, as: 'location'
          property :regex, as: 'regex'
          property :status_code, as: 'statusCode'
        end
      end
      
      class Release
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :release_time, as: 'releaseTime'
          property :release_user, as: 'releaseUser', class: Google::Apis::FirebasehostingV1beta1::ActingUser, decorator: Google::Apis::FirebasehostingV1beta1::ActingUser::Representation
      
          property :type, as: 'type'
          property :version, as: 'version', class: Google::Apis::FirebasehostingV1beta1::Version, decorator: Google::Apis::FirebasehostingV1beta1::Version::Representation
      
        end
      end
      
      class Rewrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_links, as: 'dynamicLinks'
          property :function, as: 'function'
          property :function_region, as: 'functionRegion'
          property :glob, as: 'glob'
          property :path, as: 'path'
          property :regex, as: 'regex'
          property :run, as: 'run', class: Google::Apis::FirebasehostingV1beta1::CloudRunRewrite, decorator: Google::Apis::FirebasehostingV1beta1::CloudRunRewrite::Representation
      
        end
      end
      
      class ServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_association, as: 'appAssociation'
          property :clean_urls, as: 'cleanUrls'
          collection :headers, as: 'headers', class: Google::Apis::FirebasehostingV1beta1::Header, decorator: Google::Apis::FirebasehostingV1beta1::Header::Representation
      
          property :i18n, as: 'i18n', class: Google::Apis::FirebasehostingV1beta1::I18nConfig, decorator: Google::Apis::FirebasehostingV1beta1::I18nConfig::Representation
      
          collection :redirects, as: 'redirects', class: Google::Apis::FirebasehostingV1beta1::Redirect, decorator: Google::Apis::FirebasehostingV1beta1::Redirect::Representation
      
          collection :rewrites, as: 'rewrites', class: Google::Apis::FirebasehostingV1beta1::Rewrite, decorator: Google::Apis::FirebasehostingV1beta1::Rewrite::Representation
      
          property :trailing_slash_behavior, as: 'trailingSlashBehavior'
        end
      end
      
      class Site
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :default_url, as: 'defaultUrl'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class SiteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_enabled, as: 'cloudLoggingEnabled'
          property :max_versions, :numeric_string => true, as: 'maxVersions'
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
      
      class UndeleteCustomDomainRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::FirebasehostingV1beta1::ServingConfig, decorator: Google::Apis::FirebasehostingV1beta1::ServingConfig::Representation
      
          property :create_time, as: 'createTime'
          property :create_user, as: 'createUser', class: Google::Apis::FirebasehostingV1beta1::ActingUser, decorator: Google::Apis::FirebasehostingV1beta1::ActingUser::Representation
      
          property :delete_time, as: 'deleteTime'
          property :delete_user, as: 'deleteUser', class: Google::Apis::FirebasehostingV1beta1::ActingUser, decorator: Google::Apis::FirebasehostingV1beta1::ActingUser::Representation
      
          property :file_count, :numeric_string => true, as: 'fileCount'
          property :finalize_time, as: 'finalizeTime'
          property :finalize_user, as: 'finalizeUser', class: Google::Apis::FirebasehostingV1beta1::ActingUser, decorator: Google::Apis::FirebasehostingV1beta1::ActingUser::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :status, as: 'status'
          property :version_bytes, :numeric_string => true, as: 'versionBytes'
        end
      end
      
      class VersionFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hash_prop, as: 'hash'
          property :path, as: 'path'
          property :status, as: 'status'
        end
      end
    end
  end
end
