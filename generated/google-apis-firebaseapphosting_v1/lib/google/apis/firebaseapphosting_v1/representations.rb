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
    module FirebaseapphostingV1
      
      class ArchiveSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Codebase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CodebaseSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDomainOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDomainStatus
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
      
      class DomainOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackendsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBuildsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRolloutsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiveMigrationStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Redirect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RolloutPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServingBehavior
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceUserMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Traffic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArchiveSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::FirebaseapphostingV1::SourceUserMetadata, decorator: Google::Apis::FirebaseapphostingV1::SourceUserMetadata::Representation
      
          property :description, as: 'description'
          property :external_signed_uri, as: 'externalSignedUri'
          property :root_directory, as: 'rootDirectory'
          property :user_storage_uri, as: 'userStorageUri'
        end
      end
      
      class Backend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :app_id, as: 'appId'
          property :codebase, as: 'codebase', class: Google::Apis::FirebaseapphostingV1::Codebase, decorator: Google::Apis::FirebaseapphostingV1::Codebase::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :environment, as: 'environment'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          collection :managed_resources, as: 'managedResources', class: Google::Apis::FirebaseapphostingV1::ManagedResource, decorator: Google::Apis::FirebaseapphostingV1::ManagedResource::Representation
      
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :request_logs_disabled, as: 'requestLogsDisabled'
          property :service_account, as: 'serviceAccount'
          property :serving_locality, as: 'servingLocality'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :build_logs_uri, as: 'buildLogsUri'
          property :config, as: 'config', class: Google::Apis::FirebaseapphostingV1::Config, decorator: Google::Apis::FirebaseapphostingV1::Config::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :environment, as: 'environment'
          collection :errors, as: 'errors', class: Google::Apis::FirebaseapphostingV1::Error, decorator: Google::Apis::FirebaseapphostingV1::Error::Representation
      
          property :etag, as: 'etag'
          property :image, as: 'image'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :source, as: 'source', class: Google::Apis::FirebaseapphostingV1::BuildSource, decorator: Google::Apis::FirebaseapphostingV1::BuildSource::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BuildSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive, as: 'archive', class: Google::Apis::FirebaseapphostingV1::ArchiveSource, decorator: Google::Apis::FirebaseapphostingV1::ArchiveSource::Representation
      
          property :codebase, as: 'codebase', class: Google::Apis::FirebaseapphostingV1::CodebaseSource, decorator: Google::Apis::FirebaseapphostingV1::CodebaseSource::Representation
      
          property :container, as: 'container', class: Google::Apis::FirebaseapphostingV1::ContainerSource, decorator: Google::Apis::FirebaseapphostingV1::ContainerSource::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Codebase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :root_directory, as: 'rootDirectory'
        end
      end
      
      class CodebaseSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::FirebaseapphostingV1::UserMetadata, decorator: Google::Apis::FirebaseapphostingV1::UserMetadata::Representation
      
          property :branch, as: 'branch'
          property :commit, as: 'commit'
          property :commit_message, as: 'commitMessage'
          property :commit_time, as: 'commitTime'
          property :display_name, as: 'displayName'
          property :hash_prop, as: 'hash'
          property :uri, as: 'uri'
        end
      end
      
      class Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :effective_env, as: 'effectiveEnv', class: Google::Apis::FirebaseapphostingV1::EnvironmentVariable, decorator: Google::Apis::FirebaseapphostingV1::EnvironmentVariable::Representation
      
          collection :env, as: 'env', class: Google::Apis::FirebaseapphostingV1::EnvironmentVariable, decorator: Google::Apis::FirebaseapphostingV1::EnvironmentVariable::Representation
      
          property :run_config, as: 'runConfig', class: Google::Apis::FirebaseapphostingV1::RunConfig, decorator: Google::Apis::FirebaseapphostingV1::RunConfig::Representation
      
        end
      end
      
      class ContainerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image'
        end
      end
      
      class CustomDomainOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_state, as: 'certState'
          property :host_state, as: 'hostState'
          collection :issues, as: 'issues', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          collection :live_migration_steps, as: 'liveMigrationSteps', class: Google::Apis::FirebaseapphostingV1::LiveMigrationStep, decorator: Google::Apis::FirebaseapphostingV1::LiveMigrationStep::Representation
      
          property :ownership_state, as: 'ownershipState'
          collection :quick_setup_updates, as: 'quickSetupUpdates', class: Google::Apis::FirebaseapphostingV1::DnsUpdates, decorator: Google::Apis::FirebaseapphostingV1::DnsUpdates::Representation
      
        end
      end
      
      class CustomDomainStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_state, as: 'certState'
          property :host_state, as: 'hostState'
          collection :issues, as: 'issues', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          property :ownership_state, as: 'ownershipState'
          collection :required_dns_updates, as: 'requiredDnsUpdates', class: Google::Apis::FirebaseapphostingV1::DnsUpdates, decorator: Google::Apis::FirebaseapphostingV1::DnsUpdates::Representation
      
        end
      end
      
      class DnsRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :rdata, as: 'rdata'
          collection :relevant_state, as: 'relevantState'
          property :required_action, as: 'requiredAction'
          property :type, as: 'type'
        end
      end
      
      class DnsRecordSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_error, as: 'checkError', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          property :domain_name, as: 'domainName'
          collection :records, as: 'records', class: Google::Apis::FirebaseapphostingV1::DnsRecord, decorator: Google::Apis::FirebaseapphostingV1::DnsRecord::Representation
      
        end
      end
      
      class DnsUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_time, as: 'checkTime'
          collection :desired, as: 'desired', class: Google::Apis::FirebaseapphostingV1::DnsRecordSet, decorator: Google::Apis::FirebaseapphostingV1::DnsRecordSet::Representation
      
          collection :discovered, as: 'discovered', class: Google::Apis::FirebaseapphostingV1::DnsRecordSet, decorator: Google::Apis::FirebaseapphostingV1::DnsRecordSet::Representation
      
          property :domain_name, as: 'domainName'
        end
      end
      
      class Domain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :custom_domain_status, as: 'customDomainStatus', class: Google::Apis::FirebaseapphostingV1::CustomDomainStatus, decorator: Google::Apis::FirebaseapphostingV1::CustomDomainStatus::Representation
      
          property :delete_time, as: 'deleteTime'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :serve, as: 'serve', class: Google::Apis::FirebaseapphostingV1::ServingBehavior, decorator: Google::Apis::FirebaseapphostingV1::ServingBehavior::Representation
      
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DomainOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :custom_domain_operation_metadata, as: 'customDomainOperationMetadata', class: Google::Apis::FirebaseapphostingV1::CustomDomainOperationMetadata, decorator: Google::Apis::FirebaseapphostingV1::CustomDomainOperationMetadata::Representation
      
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :availability, as: 'availability'
          property :origin, as: 'origin'
          property :origin_file_name, as: 'originFileName'
          property :secret, as: 'secret'
          property :value, as: 'value'
          property :variable, as: 'variable'
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_resource, as: 'cloudResource'
          property :error, as: 'error', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          property :error_source, as: 'errorSource'
        end
      end
      
      class ListBackendsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backends, as: 'backends', class: Google::Apis::FirebaseapphostingV1::Backend, decorator: Google::Apis::FirebaseapphostingV1::Backend::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBuildsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :builds, as: 'builds', class: Google::Apis::FirebaseapphostingV1::Build, decorator: Google::Apis::FirebaseapphostingV1::Build::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::FirebaseapphostingV1::Domain, decorator: Google::Apis::FirebaseapphostingV1::Domain::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FirebaseapphostingV1::Location, decorator: Google::Apis::FirebaseapphostingV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FirebaseapphostingV1::Operation, decorator: Google::Apis::FirebaseapphostingV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRolloutsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rollouts, as: 'rollouts', class: Google::Apis::FirebaseapphostingV1::Rollout, decorator: Google::Apis::FirebaseapphostingV1::Rollout::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class LiveMigrationStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_updates, as: 'dnsUpdates', class: Google::Apis::FirebaseapphostingV1::DnsUpdates, decorator: Google::Apis::FirebaseapphostingV1::DnsUpdates::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          collection :relevant_domain_states, as: 'relevantDomainStates'
          property :step_state, as: 'stepState'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class ManagedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run_service, as: 'runService', class: Google::Apis::FirebaseapphostingV1::RunService, decorator: Google::Apis::FirebaseapphostingV1::RunService::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Redirect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, :numeric_string => true, as: 'status'
          property :uri, as: 'uri'
        end
      end
      
      class Rollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :build, as: 'build'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::FirebaseapphostingV1::Status, decorator: Google::Apis::FirebaseapphostingV1::Status::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RolloutPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :codebase_branch, as: 'codebaseBranch'
          property :disabled, as: 'disabled'
          property :disabled_time, as: 'disabledTime'
        end
      end
      
      class RunConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrency, as: 'concurrency'
          property :cpu, as: 'cpu'
          property :max_instances, as: 'maxInstances'
          property :memory_mib, as: 'memoryMib'
          property :min_instances, as: 'minInstances'
        end
      end
      
      class RunService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class ServingBehavior
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect, as: 'redirect', class: Google::Apis::FirebaseapphostingV1::Redirect, decorator: Google::Apis::FirebaseapphostingV1::Redirect::Representation
      
        end
      end
      
      class SourceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :image_uri, as: 'imageUri'
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
      
      class Traffic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :current, as: 'current', class: Google::Apis::FirebaseapphostingV1::TrafficSet, decorator: Google::Apis::FirebaseapphostingV1::TrafficSet::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :rollout_policy, as: 'rolloutPolicy', class: Google::Apis::FirebaseapphostingV1::RolloutPolicy, decorator: Google::Apis::FirebaseapphostingV1::RolloutPolicy::Representation
      
          property :target, as: 'target', class: Google::Apis::FirebaseapphostingV1::TrafficSet, decorator: Google::Apis::FirebaseapphostingV1::TrafficSet::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TrafficSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :splits, as: 'splits', class: Google::Apis::FirebaseapphostingV1::TrafficSplit, decorator: Google::Apis::FirebaseapphostingV1::TrafficSplit::Representation
      
        end
      end
      
      class TrafficSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build'
          property :percent, as: 'percent'
        end
      end
      
      class UserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :image_uri, as: 'imageUri'
        end
      end
    end
  end
end
