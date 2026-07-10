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
    module SaasservicemgmtV1beta1
      
      class Aggregate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Allocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationSlot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blueprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComponentRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Decimal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dependency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deprovision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorBudget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Flag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagRelease
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagRevisionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagSetList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagVariant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FromMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFlagAttributesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFlagReleasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFlagRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFlagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReleasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRolloutKindsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRolloutsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSaasReleasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSaasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTenantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUnitGroupOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUnitGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUnitKindsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUnitOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUnitsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Provision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Release
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RolloutControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RolloutKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RolloutStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunRolloutActionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Saas
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SaasCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SaasRelease
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Unit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitDependency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitGroupOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitOperationCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitUpdatePacing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnitVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Upgrade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VariableMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Variant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aggregate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :group, as: 'group'
        end
      end
      
      class Allocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :randomized_on, as: 'randomizedOn'
          collection :slots, as: 'slots', class: Google::Apis::SaasservicemgmtV1beta1::AllocationSlot, decorator: Google::Apis::SaasservicemgmtV1beta1::AllocationSlot::Representation
      
        end
      end
      
      class AllocationSlot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant, as: 'variant'
          property :weight, as: 'weight'
        end
      end
      
      class AppParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
          property :scope, as: 'scope', class: Google::Apis::SaasservicemgmtV1beta1::Scope, decorator: Google::Apis::SaasservicemgmtV1beta1::Scope::Representation
      
        end
      end
      
      class Blueprint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :package, as: 'package'
          property :version, as: 'version'
        end
      end
      
      class ComponentRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component, as: 'component'
          property :composite_ref, as: 'compositeRef', class: Google::Apis::SaasservicemgmtV1beta1::CompositeRef, decorator: Google::Apis::SaasservicemgmtV1beta1::CompositeRef::Representation
      
          property :revision, as: 'revision'
        end
      end
      
      class CompositeRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_template, as: 'applicationTemplate'
          property :revision, as: 'revision'
          property :sync_operation, as: 'syncOperation'
        end
      end
      
      class Decimal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class Dependency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :unit_kind, as: 'unitKind'
        end
      end
      
      class Deprovision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ErrorBudget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_count, as: 'allowedCount'
          property :allowed_percentage, as: 'allowedPercentage'
        end
      end
      
      class EvaluationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocation_id, as: 'allocationId'
          property :condition, as: 'condition'
          property :id, as: 'id'
          property :target, as: 'target'
          property :variant_id, as: 'variantId'
        end
      end
      
      class EvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allocations, as: 'allocations', class: Google::Apis::SaasservicemgmtV1beta1::Allocation, decorator: Google::Apis::SaasservicemgmtV1beta1::Allocation::Representation
      
          collection :attributes, as: 'attributes'
          property :default_target, as: 'defaultTarget'
          collection :rules, as: 'rules', class: Google::Apis::SaasservicemgmtV1beta1::EvaluationRule, decorator: Google::Apis::SaasservicemgmtV1beta1::EvaluationRule::Representation
      
          collection :variants, as: 'variants', class: Google::Apis::SaasservicemgmtV1beta1::Variant, decorator: Google::Apis::SaasservicemgmtV1beta1::Variant::Representation
      
        end
      end
      
      class Flag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::SaasservicemgmtV1beta1::EvaluationSpec, decorator: Google::Apis::SaasservicemgmtV1beta1::EvaluationSpec::Representation
      
          property :flag_set, as: 'flagSet'
          property :flag_value_type, as: 'flagValueType'
          property :key, as: 'key'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :unit_kind, as: 'unitKind'
          property :update_time, as: 'updateTime'
          property :value_type, as: 'valueType'
          collection :variants, as: 'variants', class: Google::Apis::SaasservicemgmtV1beta1::FlagVariant, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagVariant::Representation
      
        end
      end
      
      class FlagAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :attribute_value_type, as: 'attributeValueType'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :key, as: 'key'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :value_type, as: 'valueType'
        end
      end
      
      class FlagRelease
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_flags, as: 'allFlags'
          property :all_flags_release, as: 'allFlagsRelease'
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          collection :effective_flag_revisions, as: 'effectiveFlagRevisions'
          property :etag, as: 'etag'
          collection :flag_revisions, as: 'flagRevisions'
          property :flag_revisions_release, as: 'flagRevisionsRelease', class: Google::Apis::SaasservicemgmtV1beta1::FlagRevisionList, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagRevisionList::Representation
      
          collection :flag_sets, as: 'flagSets'
          property :flag_sets_release, as: 'flagSetsRelease', class: Google::Apis::SaasservicemgmtV1beta1::FlagSetList, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagSetList::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :obsolete_flags, as: 'obsoleteFlags'
          property :uid, as: 'uid'
          property :unit_kind, as: 'unitKind'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FlagRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::SaasservicemgmtV1beta1::EvaluationSpec, decorator: Google::Apis::SaasservicemgmtV1beta1::EvaluationSpec::Representation
      
          property :flag, as: 'flag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :snapshot, as: 'snapshot', class: Google::Apis::SaasservicemgmtV1beta1::Flag, decorator: Google::Apis::SaasservicemgmtV1beta1::Flag::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FlagRevisionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :revisions, as: 'revisions'
        end
      end
      
      class FlagSetList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sets, as: 'sets'
        end
      end
      
      class FlagUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flag_release, as: 'flagRelease'
        end
      end
      
      class FlagVariant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :description, as: 'description'
          property :double_value, as: 'doubleValue'
          property :id, as: 'id'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :string_value, as: 'stringValue'
          property :tracking_id, as: 'trackingId'
        end
      end
      
      class FromMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency, as: 'dependency'
          property :output_variable, as: 'outputVariable'
        end
      end
      
      class GoogleCloudLocationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class ListFlagAttributesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flag_attributes, as: 'flagAttributes', class: Google::Apis::SaasservicemgmtV1beta1::FlagAttribute, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagAttribute::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFlagReleasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flag_releases, as: 'flagReleases', class: Google::Apis::SaasservicemgmtV1beta1::FlagRelease, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagRelease::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFlagRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flag_revisions, as: 'flagRevisions', class: Google::Apis::SaasservicemgmtV1beta1::FlagRevision, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagRevision::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFlagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flags, as: 'flags', class: Google::Apis::SaasservicemgmtV1beta1::Flag, decorator: Google::Apis::SaasservicemgmtV1beta1::Flag::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation, decorator: Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReleasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :releases, as: 'releases', class: Google::Apis::SaasservicemgmtV1beta1::Release, decorator: Google::Apis::SaasservicemgmtV1beta1::Release::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRolloutKindsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rollout_kinds, as: 'rolloutKinds', class: Google::Apis::SaasservicemgmtV1beta1::RolloutKind, decorator: Google::Apis::SaasservicemgmtV1beta1::RolloutKind::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRolloutsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rollouts, as: 'rollouts', class: Google::Apis::SaasservicemgmtV1beta1::Rollout, decorator: Google::Apis::SaasservicemgmtV1beta1::Rollout::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSaasReleasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :saas_releases, as: 'saasReleases', class: Google::Apis::SaasservicemgmtV1beta1::SaasRelease, decorator: Google::Apis::SaasservicemgmtV1beta1::SaasRelease::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSaasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :saas, as: 'saas', class: Google::Apis::SaasservicemgmtV1beta1::Saas, decorator: Google::Apis::SaasservicemgmtV1beta1::Saas::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTenantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tenants, as: 'tenants', class: Google::Apis::SaasservicemgmtV1beta1::Tenant, decorator: Google::Apis::SaasservicemgmtV1beta1::Tenant::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUnitGroupOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unit_group_operations, as: 'unitGroupOperations', class: Google::Apis::SaasservicemgmtV1beta1::UnitGroupOperation, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitGroupOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUnitGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unit_groups, as: 'unitGroups', class: Google::Apis::SaasservicemgmtV1beta1::UnitGroup, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitGroup::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUnitKindsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unit_kinds, as: 'unitKinds', class: Google::Apis::SaasservicemgmtV1beta1::UnitKind, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitKind::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUnitOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unit_operations, as: 'unitOperations', class: Google::Apis::SaasservicemgmtV1beta1::UnitOperation, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUnitsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :units, as: 'units', class: Google::Apis::SaasservicemgmtV1beta1::Unit, decorator: Google::Apis::SaasservicemgmtV1beta1::Unit::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pinned_until_time, as: 'pinnedUntilTime'
        end
      end
      
      class Provision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :input_variables, as: 'inputVariables', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          property :release, as: 'release'
        end
      end
      
      class Release
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :application_template_component, as: 'applicationTemplateComponent', class: Google::Apis::SaasservicemgmtV1beta1::ComponentRef, decorator: Google::Apis::SaasservicemgmtV1beta1::ComponentRef::Representation
      
          property :blueprint, as: 'blueprint', class: Google::Apis::SaasservicemgmtV1beta1::Blueprint, decorator: Google::Apis::SaasservicemgmtV1beta1::Blueprint::Representation
      
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          collection :input_variable_defaults, as: 'inputVariableDefaults', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          collection :input_variables, as: 'inputVariables', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :output_variables, as: 'outputVariables', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          property :release_requirements, as: 'releaseRequirements', class: Google::Apis::SaasservicemgmtV1beta1::ReleaseRequirements, decorator: Google::Apis::SaasservicemgmtV1beta1::ReleaseRequirements::Representation
      
          property :uid, as: 'uid'
          property :unit_kind, as: 'unitKind'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReleaseRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :upgradeable_from_releases, as: 'upgradeableFromReleases'
        end
      end
      
      class Rollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :control, as: 'control', class: Google::Apis::SaasservicemgmtV1beta1::RolloutControl, decorator: Google::Apis::SaasservicemgmtV1beta1::RolloutControl::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :effective_unit_filter, as: 'effectiveUnitFilter'
          property :end_time, as: 'endTime'
          property :etag, as: 'etag'
          property :flag_release, as: 'flagRelease'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent_rollout, as: 'parentRollout'
          property :release, as: 'release'
          property :rollout_kind, as: 'rolloutKind'
          property :rollout_orchestration_strategy, as: 'rolloutOrchestrationStrategy'
          property :root_rollout, as: 'rootRollout'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :state_transition_time, as: 'stateTransitionTime'
          property :stats, as: 'stats', class: Google::Apis::SaasservicemgmtV1beta1::RolloutStats, decorator: Google::Apis::SaasservicemgmtV1beta1::RolloutStats::Representation
      
          property :uid, as: 'uid'
          property :unit_filter, as: 'unitFilter'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RolloutControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :run_params, as: 'runParams', class: Google::Apis::SaasservicemgmtV1beta1::RunRolloutActionParams, decorator: Google::Apis::SaasservicemgmtV1beta1::RunRolloutActionParams::Representation
      
        end
      end
      
      class RolloutKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :error_budget, as: 'errorBudget', class: Google::Apis::SaasservicemgmtV1beta1::ErrorBudget, decorator: Google::Apis::SaasservicemgmtV1beta1::ErrorBudget::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :rollout_orchestration_strategy, as: 'rolloutOrchestrationStrategy'
          property :uid, as: 'uid'
          property :unit_filter, as: 'unitFilter'
          property :unit_kind, as: 'unitKind'
          property :unit_update_pacing, as: 'unitUpdatePacing', class: Google::Apis::SaasservicemgmtV1beta1::UnitUpdatePacing, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitUpdatePacing::Representation
      
          property :update_time, as: 'updateTime'
          property :update_unit_kind_strategy, as: 'updateUnitKindStrategy'
        end
      end
      
      class RolloutStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_total_unit_count, :numeric_string => true, as: 'estimatedTotalUnitCount'
          collection :operations_by_state, as: 'operationsByState', class: Google::Apis::SaasservicemgmtV1beta1::Aggregate, decorator: Google::Apis::SaasservicemgmtV1beta1::Aggregate::Representation
      
        end
      end
      
      class RunRolloutActionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retry_failed_operations, as: 'retryFailedOperations'
        end
      end
      
      class Saas
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :application_template, as: 'applicationTemplate', class: Google::Apis::SaasservicemgmtV1beta1::CompositeRef, decorator: Google::Apis::SaasservicemgmtV1beta1::CompositeRef::Representation
      
          property :blueprint_repo, as: 'blueprintRepo'
          collection :conditions, as: 'conditions', class: Google::Apis::SaasservicemgmtV1beta1::SaasCondition, decorator: Google::Apis::SaasservicemgmtV1beta1::SaasCondition::Representation
      
          property :create_time, as: 'createTime'
          property :error, as: 'error', class: Google::Apis::SaasservicemgmtV1beta1::Status, decorator: Google::Apis::SaasservicemgmtV1beta1::Status::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          collection :locations, as: 'locations', class: Google::Apis::SaasservicemgmtV1beta1::Location, decorator: Google::Apis::SaasservicemgmtV1beta1::Location::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SaasCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :status, as: 'status'
          property :type, as: 'type'
        end
      end
      
      class SaasRelease
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class Scope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
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
      
      class Tenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :consumer_resource, as: 'consumerResource'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :saas, as: 'saas'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ToMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency, as: 'dependency'
          property :ignore_for_lookup, as: 'ignoreForLookup'
          property :input_variable, as: 'inputVariable'
        end
      end
      
      class Unit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :application, as: 'application'
          collection :conditions, as: 'conditions', class: Google::Apis::SaasservicemgmtV1beta1::UnitCondition, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitCondition::Representation
      
          property :create_time, as: 'createTime'
          collection :dependencies, as: 'dependencies', class: Google::Apis::SaasservicemgmtV1beta1::UnitDependency, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitDependency::Representation
      
          collection :dependents, as: 'dependents', class: Google::Apis::SaasservicemgmtV1beta1::UnitDependency, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitDependency::Representation
      
          property :etag, as: 'etag'
          property :flag_config_name, as: 'flagConfigName'
          collection :flag_revisions, as: 'flagRevisions'
          collection :input_variables, as: 'inputVariables', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          hash :labels, as: 'labels'
          property :maintenance, as: 'maintenance', class: Google::Apis::SaasservicemgmtV1beta1::MaintenanceSettings, decorator: Google::Apis::SaasservicemgmtV1beta1::MaintenanceSettings::Representation
      
          property :management_mode, as: 'managementMode'
          property :name, as: 'name'
          collection :ongoing_operations, as: 'ongoingOperations'
          collection :output_variables, as: 'outputVariables', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          collection :pending_operations, as: 'pendingOperations'
          property :release, as: 'release'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          collection :scheduled_operations, as: 'scheduledOperations'
          property :state, as: 'state'
          property :system_cleanup_at, as: 'systemCleanupAt'
          property :system_managed_state, as: 'systemManagedState'
          property :tenant, as: 'tenant'
          property :uid, as: 'uid'
          property :unit_group, as: 'unitGroup'
          property :unit_kind, as: 'unitKind'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UnitCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :status, as: 'status'
          property :type, as: 'type'
        end
      end
      
      class UnitDependency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :unit, as: 'unit'
        end
      end
      
      class UnitGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UnitGroupOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UnitKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :app_params, as: 'appParams', class: Google::Apis::SaasservicemgmtV1beta1::AppParams, decorator: Google::Apis::SaasservicemgmtV1beta1::AppParams::Representation
      
          property :application_template_component, as: 'applicationTemplateComponent', class: Google::Apis::SaasservicemgmtV1beta1::ComponentRef, decorator: Google::Apis::SaasservicemgmtV1beta1::ComponentRef::Representation
      
          property :boundary_type, as: 'boundaryType'
          property :create_time, as: 'createTime'
          collection :default_flag_revisions, as: 'defaultFlagRevisions'
          property :default_release, as: 'defaultRelease'
          collection :dependencies, as: 'dependencies', class: Google::Apis::SaasservicemgmtV1beta1::Dependency, decorator: Google::Apis::SaasservicemgmtV1beta1::Dependency::Representation
      
          property :etag, as: 'etag'
          collection :input_variable_mappings, as: 'inputVariableMappings', class: Google::Apis::SaasservicemgmtV1beta1::VariableMapping, decorator: Google::Apis::SaasservicemgmtV1beta1::VariableMapping::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :output_variable_mappings, as: 'outputVariableMappings', class: Google::Apis::SaasservicemgmtV1beta1::VariableMapping, decorator: Google::Apis::SaasservicemgmtV1beta1::VariableMapping::Representation
      
          property :saas, as: 'saas'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UnitOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cancel, as: 'cancel'
          collection :conditions, as: 'conditions', class: Google::Apis::SaasservicemgmtV1beta1::UnitOperationCondition, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitOperationCondition::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :deprovision, as: 'deprovision', class: Google::Apis::SaasservicemgmtV1beta1::Deprovision, decorator: Google::Apis::SaasservicemgmtV1beta1::Deprovision::Representation
      
          property :engine_state, as: 'engineState'
          property :error_category, as: 'errorCategory'
          property :etag, as: 'etag'
          property :flag_update, as: 'flagUpdate', class: Google::Apis::SaasservicemgmtV1beta1::FlagUpdate, decorator: Google::Apis::SaasservicemgmtV1beta1::FlagUpdate::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent_unit_operation, as: 'parentUnitOperation'
          property :provision, as: 'provision', class: Google::Apis::SaasservicemgmtV1beta1::Provision, decorator: Google::Apis::SaasservicemgmtV1beta1::Provision::Representation
      
          property :rollout, as: 'rollout'
          property :schedule, as: 'schedule', class: Google::Apis::SaasservicemgmtV1beta1::Schedule, decorator: Google::Apis::SaasservicemgmtV1beta1::Schedule::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :unit, as: 'unit'
          property :update_time, as: 'updateTime'
          property :upgrade, as: 'upgrade', class: Google::Apis::SaasservicemgmtV1beta1::Upgrade, decorator: Google::Apis::SaasservicemgmtV1beta1::Upgrade::Representation
      
        end
      end
      
      class UnitOperationCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :status, as: 'status'
          property :type, as: 'type'
        end
      end
      
      class UnitUpdatePacing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_concurrent_operations_count, as: 'maxConcurrentOperationsCount'
          property :max_concurrent_operations_percent, as: 'maxConcurrentOperationsPercent', class: Google::Apis::SaasservicemgmtV1beta1::Decimal, decorator: Google::Apis::SaasservicemgmtV1beta1::Decimal::Representation
      
        end
      end
      
      class UnitVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
          property :variable, as: 'variable'
        end
      end
      
      class Upgrade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :input_variables, as: 'inputVariables', class: Google::Apis::SaasservicemgmtV1beta1::UnitVariable, decorator: Google::Apis::SaasservicemgmtV1beta1::UnitVariable::Representation
      
          property :release, as: 'release'
        end
      end
      
      class VariableMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from, as: 'from', class: Google::Apis::SaasservicemgmtV1beta1::FromMapping, decorator: Google::Apis::SaasservicemgmtV1beta1::FromMapping::Representation
      
          property :to, as: 'to', class: Google::Apis::SaasservicemgmtV1beta1::ToMapping, decorator: Google::Apis::SaasservicemgmtV1beta1::ToMapping::Representation
      
          property :variable, as: 'variable'
        end
      end
      
      class Variant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :double_value, as: 'doubleValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :name, as: 'name'
          property :string_value, as: 'stringValue'
        end
      end
    end
  end
end
