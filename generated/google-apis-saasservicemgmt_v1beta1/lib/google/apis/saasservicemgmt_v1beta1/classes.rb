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
      
      # Represents the aggregation of a set of population of like records by a certain
      # group. For example, a collection of unit counts can be aggregated and grouped
      # by their state.
      class Aggregate
        include Google::Apis::Core::Hashable
      
        # Required. Number of records in the group.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Required. Group by which to aggregate.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @group = args[:group] if args.key?(:group)
        end
      end
      
      # Blueprints are OCI Images that contain all of the artifacts needed to
      # provision a unit. Metadata such as, type of the engine used to actuate the
      # blueprint (e.g. terraform, helm etc) and version will come from the image
      # manifest. If the hostname is omitted, it will be assumed to be the regional
      # path to Artifact Registry (eg. us-east1-docker.pkg.dev).
      class Blueprint
        include Google::Apis::Core::Hashable
      
        # Output only. Type of the engine used to actuate the blueprint. e.g. terraform,
        # helm etc.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Optional. Immutable. URI to a blueprint used by the Unit (required unless
        # unitKind or release is set).
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Output only. Version metadata if present on the blueprint.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
          @package = args[:package] if args.key?(:package)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Dependency represent a single dependency with another unit kind by alias.
      class Dependency
        include Google::Apis::Core::Hashable
      
        # Required. An alias for the dependency. Used for input variable mapping.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Required. Immutable. The unit kind of the dependency.
        # Corresponds to the JSON property `unitKind`
        # @return [String]
        attr_accessor :unit_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @unit_kind = args[:unit_kind] if args.key?(:unit_kind)
        end
      end
      
      # Deprovision is the unit operation that deprovision the underlying resources
      # represented by a Unit. Can only execute if the Unit is currently provisioned.
      class Deprovision
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration for error budget. If the number of failed units exceeds max(
      # allowed_count, allowed_ratio * total_units), the rollout will be paused.
      class ErrorBudget
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of failed units allowed in a location without
        # pausing the rollout.
        # Corresponds to the JSON property `allowedCount`
        # @return [Fixnum]
        attr_accessor :allowed_count
      
        # Optional. The maximum percentage of units allowed to fail (0, 100] within a
        # location without pausing the rollout.
        # Corresponds to the JSON property `allowedPercentage`
        # @return [Fixnum]
        attr_accessor :allowed_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_count = args[:allowed_count] if args.key?(:allowed_count)
          @allowed_percentage = args[:allowed_percentage] if args.key?(:allowed_percentage)
        end
      end
      
      # Output variables whose values will be passed on to dependencies
      class FromMapping
        include Google::Apis::Core::Hashable
      
        # Required. Alias of the dependency that the outputVariable will pass its value
        # to
        # Corresponds to the JSON property `dependency`
        # @return [String]
        attr_accessor :dependency
      
        # Required. Name of the outputVariable on the dependency
        # Corresponds to the JSON property `outputVariable`
        # @return [String]
        attr_accessor :output_variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency = args[:dependency] if args.key?(:dependency)
          @output_variable = args[:output_variable] if args.key?(:output_variable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class GoogleCloudLocationLocation
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::GoogleCloudLocationLocation>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response structure for the ListReleases method.
      class ListReleasesResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent ListReleases
        # call to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting releases.
        # Corresponds to the JSON property `releases`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Release>]
        attr_accessor :releases
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @releases = args[:releases] if args.key?(:releases)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListRolloutKinds method.
      class ListRolloutKindsResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent
        # ListRolloutKinds call to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting rollout kinds.
        # Corresponds to the JSON property `rolloutKinds`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::RolloutKind>]
        attr_accessor :rollout_kinds
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rollout_kinds = args[:rollout_kinds] if args.key?(:rollout_kinds)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListRollouts method.
      class ListRolloutsResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent ListRollouts
        # call to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting rollouts.
        # Corresponds to the JSON property `rollouts`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Rollout>]
        attr_accessor :rollouts
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rollouts = args[:rollouts] if args.key?(:rollouts)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListSaas method.
      class ListSaasResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent ListSaas call
        # to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting saas.
        # Corresponds to the JSON property `saas`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Saas>]
        attr_accessor :saas
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @saas = args[:saas] if args.key?(:saas)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListTenants method.
      class ListTenantsResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent ListTenants
        # call to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting tenants.
        # Corresponds to the JSON property `tenants`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Tenant>]
        attr_accessor :tenants
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tenants = args[:tenants] if args.key?(:tenants)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListUnitKinds method.
      class ListUnitKindsResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent ListUnitKinds
        # call to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting unit kinds.
        # Corresponds to the JSON property `unitKinds`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitKind>]
        attr_accessor :unit_kinds
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unit_kinds = args[:unit_kinds] if args.key?(:unit_kinds)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListUnitOperations method.
      class ListUnitOperationsResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent
        # ListUnitOperations call to list the next page. If empty, there are no more
        # pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting unit operations.
        # Corresponds to the JSON property `unitOperations`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitOperation>]
        attr_accessor :unit_operations
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unit_operations = args[:unit_operations] if args.key?(:unit_operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response structure for the ListUnits method.
      class ListUnitsResponse
        include Google::Apis::Core::Hashable
      
        # If present, the next page token can be provided to a subsequent ListUnits call
        # to list the next page. If empty, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting units.
        # Corresponds to the JSON property `units`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Unit>]
        attr_accessor :units
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @units = args[:units] if args.key?(:units)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Location information that the service is available in.
      class Location
        include Google::Apis::Core::Hashable
      
        # Optional. Name of location.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Captures requested directives for performing future maintenance on the unit.
      # This includes a request for the unit to skip maintenance for a period of time
      # and remain pinned to its current release as well as controls for postponing
      # maintenance scheduled in future.
      class MaintenanceSettings
        include Google::Apis::Core::Hashable
      
        # Optional. If present, it fixes the release on the unit until the given time; i.
        # e. changes to the release field will be rejected. Rollouts should and will
        # also respect this by not requesting an upgrade in the first place.
        # Corresponds to the JSON property `pinnedUntilTime`
        # @return [String]
        attr_accessor :pinned_until_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pinned_until_time = args[:pinned_until_time] if args.key?(:pinned_until_time)
        end
      end
      
      # Provision is the unit operation that provision the underlying resources
      # represented by a Unit. Can only execute if the Unit is not currently
      # provisioned.
      class Provision
        include Google::Apis::Core::Hashable
      
        # Optional. Set of input variables. Maximum 100. (optional)
        # Corresponds to the JSON property `inputVariables`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :input_variables
      
        # Optional. Reference to the Release object to use for the Unit. (optional).
        # Corresponds to the JSON property `release`
        # @return [String]
        attr_accessor :release
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @release = args[:release] if args.key?(:release)
        end
      end
      
      # A new version to be propagated and deployed to units. This includes pointers
      # to packaged blueprints for actuation (e.g Helm or Terraform configuration
      # packages) via artifact registry.
      class Release
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Blueprints are OCI Images that contain all of the artifacts needed to
        # provision a unit. Metadata such as, type of the engine used to actuate the
        # blueprint (e.g. terraform, helm etc) and version will come from the image
        # manifest. If the hostname is omitted, it will be assumed to be the regional
        # path to Artifact Registry (eg. us-east1-docker.pkg.dev).
        # Corresponds to the JSON property `blueprint`
        # @return [Google::Apis::SaasservicemgmtV1beta1::Blueprint]
        attr_accessor :blueprint
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Mapping of input variables to default values. Maximum 100
        # Corresponds to the JSON property `inputVariableDefaults`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :input_variable_defaults
      
        # Optional. Output only. List of input variables declared on the blueprint and
        # can be present with their values on the unit spec
        # Corresponds to the JSON property `inputVariables`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :input_variables
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/releases/`
        # release`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Output only. List of output variables declared on the blueprint and
        # can be present with their values on the unit status
        # Corresponds to the JSON property `outputVariables`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :output_variables
      
        # Set of requirements to be fulfilled on the Unit when using this Release.
        # Corresponds to the JSON property `releaseRequirements`
        # @return [Google::Apis::SaasservicemgmtV1beta1::ReleaseRequirements]
        attr_accessor :release_requirements
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Required. Immutable. Reference to the UnitKind this Release corresponds to (
        # required and immutable once created).
        # Corresponds to the JSON property `unitKind`
        # @return [String]
        attr_accessor :unit_kind
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @blueprint = args[:blueprint] if args.key?(:blueprint)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @input_variable_defaults = args[:input_variable_defaults] if args.key?(:input_variable_defaults)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @output_variables = args[:output_variables] if args.key?(:output_variables)
          @release_requirements = args[:release_requirements] if args.key?(:release_requirements)
          @uid = args[:uid] if args.key?(:uid)
          @unit_kind = args[:unit_kind] if args.key?(:unit_kind)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Set of requirements to be fulfilled on the Unit when using this Release.
      class ReleaseRequirements
        include Google::Apis::Core::Hashable
      
        # Optional. A list of releases from which a unit can be upgraded to this one (
        # optional). If left empty no constraints will be applied. When provided, unit
        # upgrade requests to this release will check and enforce this constraint.
        # Corresponds to the JSON property `upgradeableFromReleases`
        # @return [Array<String>]
        attr_accessor :upgradeable_from_releases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upgradeable_from_releases = args[:upgradeable_from_releases] if args.key?(:upgradeable_from_releases)
        end
      end
      
      # Represents a single rollout execution and its results
      class Rollout
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # RolloutControl provides a way to request a change to the execution of a
        # Rollout by pausing or canceling it.
        # Corresponds to the JSON property `control`
        # @return [Google::Apis::SaasservicemgmtV1beta1::RolloutControl]
        attr_accessor :control
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Output only. Output only snapshot of the effective unit filter at
        # Rollout start time. Contains a CEL(https://github.com/google/cel-spec)
        # expression consisting of a conjunction of Rollout.unit_filter and RolloutKind.
        # unit_filter. This field captures the filter applied by the Rollout to
        # determine the Unit population. If the associated RolloutKind's unit_filter is
        # modified after the rollout is started, it will not be updated here.
        # Corresponds to the JSON property `effectiveUnitFilter`
        # @return [String]
        attr_accessor :effective_unit_filter
      
        # Optional. Output only. The time when the rollout finished execution (
        # regardless of success, failure, or cancellation). Will be empty if the rollout
        # hasn't finished yet. Once set, the rollout is in terminal state and all the
        # results are final.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/rollout/`
        # rollout_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Output only. The direct parent rollout that this rollout is stemming
        # from. The resource name (full URI of the resource) following the standard
        # naming scheme: "projects/`project`/locations/`location`/rollouts/`rollout_id`"
        # Corresponds to the JSON property `parentRollout`
        # @return [String]
        attr_accessor :parent_rollout
      
        # Optional. Immutable. Name of the Release that gets rolled out to target Units.
        # Required if no other type of release is specified.
        # Corresponds to the JSON property `release`
        # @return [String]
        attr_accessor :release
      
        # Optional. Immutable. Name of the RolloutKind this rollout is stemming from and
        # adhering to.
        # Corresponds to the JSON property `rolloutKind`
        # @return [String]
        attr_accessor :rollout_kind
      
        # Optional. The strategy used for executing this Rollout. This strategy will
        # override whatever strategy is specified in the RolloutKind. If not specified
        # on creation, the strategy from RolloutKind will be used. There are two
        # supported values strategies which are used to control - "Google.Cloud.Simple.
        # AllAtOnce" - "Google.Cloud.Simple.OneLocationAtATime" A rollout with one of
        # these simple strategies will rollout across all locations defined in the
        # targeted UnitKind's Saas Locations.
        # Corresponds to the JSON property `rolloutOrchestrationStrategy`
        # @return [String]
        attr_accessor :rollout_orchestration_strategy
      
        # Optional. Output only. The root rollout that this rollout is stemming from.
        # The resource name (full URI of the resource) following the standard naming
        # scheme: "projects/`project`/locations/`location`/rollouts/`rollout_id`"
        # Corresponds to the JSON property `rootRollout`
        # @return [String]
        attr_accessor :root_rollout
      
        # Optional. Output only. The time when the rollout started executing. Will be
        # empty if the rollout hasn't started yet.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Current state of the rollout.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Human readable message indicating details about the last state
        # transition.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Optional. Output only. The time when the rollout transitioned into its current
        # state.
        # Corresponds to the JSON property `stateTransitionTime`
        # @return [String]
        attr_accessor :state_transition_time
      
        # RolloutStats contains information about the progress of a rollout.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::SaasservicemgmtV1beta1::RolloutStats]
        attr_accessor :stats
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Optional. CEL(https://github.com/google/cel-spec) formatted filter string
        # against Unit. The filter will be applied to determine the eligible unit
        # population. This filter can only reduce, but not expand the scope of the
        # rollout. If not provided, the unit_filter from the RolloutKind will be used.
        # Corresponds to the JSON property `unitFilter`
        # @return [String]
        attr_accessor :unit_filter
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @control = args[:control] if args.key?(:control)
          @create_time = args[:create_time] if args.key?(:create_time)
          @effective_unit_filter = args[:effective_unit_filter] if args.key?(:effective_unit_filter)
          @end_time = args[:end_time] if args.key?(:end_time)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent_rollout = args[:parent_rollout] if args.key?(:parent_rollout)
          @release = args[:release] if args.key?(:release)
          @rollout_kind = args[:rollout_kind] if args.key?(:rollout_kind)
          @rollout_orchestration_strategy = args[:rollout_orchestration_strategy] if args.key?(:rollout_orchestration_strategy)
          @root_rollout = args[:root_rollout] if args.key?(:root_rollout)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @state_transition_time = args[:state_transition_time] if args.key?(:state_transition_time)
          @stats = args[:stats] if args.key?(:stats)
          @uid = args[:uid] if args.key?(:uid)
          @unit_filter = args[:unit_filter] if args.key?(:unit_filter)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # RolloutControl provides a way to request a change to the execution of a
      # Rollout by pausing or canceling it.
      class RolloutControl
        include Google::Apis::Core::Hashable
      
        # Required. Action to be performed on the Rollout. The default behavior is to
        # run the rollout until it naturally reaches a terminal state.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Parameters for the RUN action controlling the behavior of the rollout when it
        # is resumed from a PAUSED state.
        # Corresponds to the JSON property `runParams`
        # @return [Google::Apis::SaasservicemgmtV1beta1::RunRolloutActionParams]
        attr_accessor :run_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @run_params = args[:run_params] if args.key?(:run_params)
        end
      end
      
      # An object that describes various settings of Rollout execution. Includes built-
      # in policies across GCP and GDC, and customizable policies.
      class RolloutKind
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The configuration for error budget. If the number of failed units exceeds max(
        # allowed_count, allowed_ratio * total_units), the rollout will be paused.
        # Corresponds to the JSON property `errorBudget`
        # @return [Google::Apis::SaasservicemgmtV1beta1::ErrorBudget]
        attr_accessor :error_budget
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Value among strict (enforcing maintenance policy and only looking at
        # Units with maintenance policy), ignore (ignoring maintenance policy) and skip (
        # skipping Units with maintenance policy)
        # Corresponds to the JSON property `maintenancePolicyEnforcement`
        # @return [String]
        attr_accessor :maintenance_policy_enforcement
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/rolloutKinds/`
        # rollout_kind_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The strategy used for executing a Rollout. This is a required field.
        # There are two supported values strategies which are used to control - "Google.
        # Cloud.Simple.AllAtOnce" - "Google.Cloud.Simple.OneLocationAtATime" A rollout
        # with one of these simple strategies will rollout across all locations defined
        # in the associated UnitKind's Saas Locations.
        # Corresponds to the JSON property `rolloutOrchestrationStrategy`
        # @return [String]
        attr_accessor :rollout_orchestration_strategy
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Optional. CEL(https://github.com/google/cel-spec) formatted filter string
        # against Unit. The filter will be applied to determine the eligible unit
        # population. This filter can only reduce, but not expand the scope of the
        # rollout.
        # Corresponds to the JSON property `unitFilter`
        # @return [String]
        attr_accessor :unit_filter
      
        # Required. Immutable. UnitKind that this rollout kind corresponds to. Rollouts
        # stemming from this rollout kind will target the units of this unit kind. In
        # other words, this defines the population of target units to be upgraded by
        # rollouts.
        # Corresponds to the JSON property `unitKind`
        # @return [String]
        attr_accessor :unit_kind
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The config for updating the unit kind. By default, the unit kind
        # will be updated on the rollout start.
        # Corresponds to the JSON property `updateUnitKindStrategy`
        # @return [String]
        attr_accessor :update_unit_kind_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error_budget = args[:error_budget] if args.key?(:error_budget)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_policy_enforcement = args[:maintenance_policy_enforcement] if args.key?(:maintenance_policy_enforcement)
          @name = args[:name] if args.key?(:name)
          @rollout_orchestration_strategy = args[:rollout_orchestration_strategy] if args.key?(:rollout_orchestration_strategy)
          @uid = args[:uid] if args.key?(:uid)
          @unit_filter = args[:unit_filter] if args.key?(:unit_filter)
          @unit_kind = args[:unit_kind] if args.key?(:unit_kind)
          @update_time = args[:update_time] if args.key?(:update_time)
          @update_unit_kind_strategy = args[:update_unit_kind_strategy] if args.key?(:update_unit_kind_strategy)
        end
      end
      
      # RolloutStats contains information about the progress of a rollout.
      class RolloutStats
        include Google::Apis::Core::Hashable
      
        # Output only. A breakdown of the progress of operations triggered by the
        # rollout. Provides a count of Operations by their state. This can be used to
        # determine the number of units which have been updated, or are scheduled to be
        # updated. There will be at most one entry per group. Possible values for
        # operation groups are: - "SCHEDULED" - "PENDING" - "RUNNING" - "SUCCEEDED" - "
        # FAILED" - "CANCELLED"
        # Corresponds to the JSON property `operationsByState`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Aggregate>]
        attr_accessor :operations_by_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations_by_state = args[:operations_by_state] if args.key?(:operations_by_state)
        end
      end
      
      # Parameters for the RUN action controlling the behavior of the rollout when it
      # is resumed from a PAUSED state.
      class RunRolloutActionParams
        include Google::Apis::Core::Hashable
      
        # Required. If true, the rollout will retry failed operations when resumed. This
        # is applicable only the current state of the Rollout is PAUSED and the
        # requested action is RUN.
        # Corresponds to the JSON property `retryFailedOperations`
        # @return [Boolean]
        attr_accessor :retry_failed_operations
        alias_method :retry_failed_operations?, :retry_failed_operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retry_failed_operations = args[:retry_failed_operations] if args.key?(:retry_failed_operations)
        end
      end
      
      # Saas is a representation of a SaaS service managed by the Producer.
      class Saas
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. List of locations that the service is available in. Rollout refers
        # to the list to generate a rollout plan.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Location>]
        attr_accessor :locations
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/saas/`saas`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A time specification to schedule the maintenance.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Optional. Start of operation. If not set, will be set to the start of the next
        # window. (optional)
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Tenant represents the service producer side of an instance of the service
      # created based on a request from a consumer. In a typical scenario a Tenant has
      # a one-to-one mapping with a resource given out to a service consumer. Example:
      # tenant: name: "projects/svc1/locations/loc/tenants/inst-068afff8"
      # consumer_resource: "projects/gshoe/locations/loc/shoes/black-shoe"
      class Tenant
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Optional. Immutable. A reference to the consumer resource this SaaS Tenant is
        # representing. The relationship with a consumer resource can be used by SaaS
        # Runtime for retrieving consumer-defined settings and policies such as
        # maintenance policies (using Unified Maintenance Policy API).
        # Corresponds to the JSON property `consumerResource`
        # @return [String]
        attr_accessor :consumer_resource
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/tenants/`
        # tenant`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. A reference to the Saas that defines the product (managed
        # service) that the producer wants to manage with SaaS Runtime. Part of the SaaS
        # Runtime common data model.
        # Corresponds to the JSON property `saas`
        # @return [String]
        attr_accessor :saas
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @consumer_resource = args[:consumer_resource] if args.key?(:consumer_resource)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @saas = args[:saas] if args.key?(:saas)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Input variables whose values will be passed on to dependencies
      class ToMapping
        include Google::Apis::Core::Hashable
      
        # Required. Alias of the dependency that the inputVariable will pass its value
        # to
        # Corresponds to the JSON property `dependency`
        # @return [String]
        attr_accessor :dependency
      
        # Optional. Tells SaaS Runtime if this mapping should be used during lookup or
        # not
        # Corresponds to the JSON property `ignoreForLookup`
        # @return [Boolean]
        attr_accessor :ignore_for_lookup
        alias_method :ignore_for_lookup?, :ignore_for_lookup
      
        # Required. Name of the inputVariable on the dependency
        # Corresponds to the JSON property `inputVariable`
        # @return [String]
        attr_accessor :input_variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency = args[:dependency] if args.key?(:dependency)
          @ignore_for_lookup = args[:ignore_for_lookup] if args.key?(:ignore_for_lookup)
          @input_variable = args[:input_variable] if args.key?(:input_variable)
        end
      end
      
      # A unit of deployment that has its lifecycle via a CRUD API using an actuation
      # engine under the hood (e.g. based on Terraform, Helm or a custom
      # implementation provided by a service producer). A building block of a SaaS
      # Tenant.
      class Unit
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Optional. Output only. A set of conditions which indicate the various
        # conditions this resource can have.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitCondition>]
        attr_accessor :conditions
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Output only. Set of dependencies for this unit. Maximum 10.
        # Corresponds to the JSON property `dependencies`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitDependency>]
        attr_accessor :dependencies
      
        # Optional. Output only. List of Units that depend on this unit. Unit can only
        # be deprovisioned if this list is empty. Maximum 1000.
        # Corresponds to the JSON property `dependents`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitDependency>]
        attr_accessor :dependents
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Output only. Indicates the current input variables deployed by the
        # unit
        # Corresponds to the JSON property `inputVariables`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :input_variables
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Captures requested directives for performing future maintenance on the unit.
        # This includes a request for the unit to skip maintenance for a period of time
        # and remain pinned to its current release as well as controls for postponing
        # maintenance scheduled in future.
        # Corresponds to the JSON property `maintenance`
        # @return [Google::Apis::SaasservicemgmtV1beta1::MaintenanceSettings]
        attr_accessor :maintenance
      
        # Optional. Immutable. Indicates whether the Unit life cycle is controlled by
        # the user or by the system. Immutable once created.
        # Corresponds to the JSON property `managementMode`
        # @return [String]
        attr_accessor :management_mode
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/units/`unit`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Output only. List of concurrent UnitOperations that are operating on
        # this Unit.
        # Corresponds to the JSON property `ongoingOperations`
        # @return [Array<String>]
        attr_accessor :ongoing_operations
      
        # Optional. Output only. Set of key/value pairs corresponding to output
        # variables from execution of actuation templates. The variables are declared in
        # actuation configs (e.g in helm chart or terraform) and the values are fetched
        # and returned by the actuation engine upon completion of execution.
        # Corresponds to the JSON property `outputVariables`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :output_variables
      
        # Optional. Output only. List of pending (wait to be executed) UnitOperations
        # for this unit.
        # Corresponds to the JSON property `pendingOperations`
        # @return [Array<String>]
        attr_accessor :pending_operations
      
        # Optional. Output only. The current Release object for this Unit.
        # Corresponds to the JSON property `release`
        # @return [String]
        attr_accessor :release
      
        # Optional. Output only. List of scheduled UnitOperations for this unit.
        # Corresponds to the JSON property `scheduledOperations`
        # @return [Array<String>]
        attr_accessor :scheduled_operations
      
        # Optional. Output only. Current lifecycle state of the resource (e.g. if it's
        # being created or ready to use).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Output only. If set, indicates the time when the system will start
        # removing the unit.
        # Corresponds to the JSON property `systemCleanupAt`
        # @return [String]
        attr_accessor :system_cleanup_at
      
        # Optional. Output only. Indicates the system managed state of the unit.
        # Corresponds to the JSON property `systemManagedState`
        # @return [String]
        attr_accessor :system_managed_state
      
        # Optional. Reference to the Saas Tenant resource this unit belongs to. This for
        # example informs the maintenance policies to use for scheduling future updates
        # on a unit. (optional and immutable once created)
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Optional. Reference to the UnitKind this Unit belongs to. Immutable once set.
        # Corresponds to the JSON property `unitKind`
        # @return [String]
        attr_accessor :unit_kind
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dependencies = args[:dependencies] if args.key?(:dependencies)
          @dependents = args[:dependents] if args.key?(:dependents)
          @etag = args[:etag] if args.key?(:etag)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance = args[:maintenance] if args.key?(:maintenance)
          @management_mode = args[:management_mode] if args.key?(:management_mode)
          @name = args[:name] if args.key?(:name)
          @ongoing_operations = args[:ongoing_operations] if args.key?(:ongoing_operations)
          @output_variables = args[:output_variables] if args.key?(:output_variables)
          @pending_operations = args[:pending_operations] if args.key?(:pending_operations)
          @release = args[:release] if args.key?(:release)
          @scheduled_operations = args[:scheduled_operations] if args.key?(:scheduled_operations)
          @state = args[:state] if args.key?(:state)
          @system_cleanup_at = args[:system_cleanup_at] if args.key?(:system_cleanup_at)
          @system_managed_state = args[:system_managed_state] if args.key?(:system_managed_state)
          @tenant = args[:tenant] if args.key?(:tenant)
          @uid = args[:uid] if args.key?(:uid)
          @unit_kind = args[:unit_kind] if args.key?(:unit_kind)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # UnitCondition describes the status of an Unit. UnitCondition is individual
      # components that contribute to an overall state.
      class UnitCondition
        include Google::Apis::Core::Hashable
      
        # Required. Last time the condition transited from one status to another.
        # Corresponds to the JSON property `lastTransitionTime`
        # @return [String]
        attr_accessor :last_transition_time
      
        # Required. Human readable message indicating details about the last transition.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Required. Brief reason for the condition's last transition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Required. Status of the condition.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Required. Type of the condition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Set of dependencies for this unit. Maximum 10.
      class UnitDependency
        include Google::Apis::Core::Hashable
      
        # Output only. Alias for the name of the dependency.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Output only. A reference to the Unit object.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Definition of a Unit. Units belonging to the same UnitKind are managed
      # together; for example they follow the same release model (blueprints, versions
      # etc.) and are typically rolled out together.
      class UnitKind
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A reference to the Release object to use as default for creating new
        # units of this UnitKind (optional). If not specified, a new unit must
        # explicitly reference which release to use for its creation.
        # Corresponds to the JSON property `defaultRelease`
        # @return [String]
        attr_accessor :default_release
      
        # Optional. Immutable. List of other unit kinds that this release will depend on.
        # Dependencies will be automatically provisioned if not found. Maximum 10.
        # Corresponds to the JSON property `dependencies`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::Dependency>]
        attr_accessor :dependencies
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. List of inputVariables for this release that will either be
        # retrieved from a dependency’s outputVariables, or will be passed on to a
        # dependency’s inputVariables. Maximum 100.
        # Corresponds to the JSON property `inputVariableMappings`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::VariableMapping>]
        attr_accessor :input_variable_mappings
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/unitKinds/`
        # unitKind`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. List of outputVariables for this unit kind will be passed to this
        # unit's outputVariables. Maximum 100.
        # Corresponds to the JSON property `outputVariableMappings`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::VariableMapping>]
        attr_accessor :output_variable_mappings
      
        # Required. Immutable. A reference to the Saas that defines the product (managed
        # service) that the producer wants to manage with SaaS Runtime. Part of the SaaS
        # Runtime common data model. Immutable once set.
        # Corresponds to the JSON property `saas`
        # @return [String]
        attr_accessor :saas
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_release = args[:default_release] if args.key?(:default_release)
          @dependencies = args[:dependencies] if args.key?(:dependencies)
          @etag = args[:etag] if args.key?(:etag)
          @input_variable_mappings = args[:input_variable_mappings] if args.key?(:input_variable_mappings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @output_variable_mappings = args[:output_variable_mappings] if args.key?(:output_variable_mappings)
          @saas = args[:saas] if args.key?(:saas)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # UnitOperation encapsulates the intent of changing/interacting with the service
      # component represented by the specific Unit. Multiple UnitOperations can be
      # created (requested) and scheduled in the future, however only one will be
      # allowed to execute at a time (that can change in the future for non-mutating
      # operations). UnitOperations allow different actors interacting with the same
      # unit to focus only on the change they have requested. This is a base object
      # that contains the common fields in all unit operations. Next: 19
      class UnitOperation
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations is an unstructured key-value map stored with a resource
        # that may be set by external tools to store and retrieve arbitrary metadata.
        # They are not queryable and should be preserved when modifying objects. More
        # info: https://kubernetes.io/docs/user-guide/annotations
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Optional. When true, attempt to cancel the operation. Cancellation may fail if
        # the operation is already executing. (Optional)
        # Corresponds to the JSON property `cancel`
        # @return [Boolean]
        attr_accessor :cancel
        alias_method :cancel?, :cancel
      
        # Optional. Output only. A set of conditions which indicate the various
        # conditions this resource can have.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitOperationCondition>]
        attr_accessor :conditions
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Deprovision is the unit operation that deprovision the underlying resources
        # represented by a Unit. Can only execute if the Unit is currently provisioned.
        # Corresponds to the JSON property `deprovision`
        # @return [Google::Apis::SaasservicemgmtV1beta1::Deprovision]
        attr_accessor :deprovision
      
        # Optional. Output only. The engine state for on-going deployment engine
        # operation(s). This field is opaque for external usage.
        # Corresponds to the JSON property `engineState`
        # @return [String]
        attr_accessor :engine_state
      
        # Optional. Output only. UnitOperationErrorCategory describe the error category.
        # Corresponds to the JSON property `errorCategory`
        # @return [String]
        attr_accessor :error_category
      
        # Output only. An opaque value that uniquely identifies a version or generation
        # of a resource. It can be used to confirm that the client and server agree on
        # the ordering of a resource being written.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The labels on the resource, which can be used for categorization.
        # similar to Kubernetes resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name (full URI of the resource) following the
        # standard naming scheme: "projects/`project`/locations/`location`/
        # unitOperations/`unitOperation`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Reference to parent resource: UnitOperation. If an operation needs
        # to create other operations as part of its workflow, each of the child
        # operations should have this field set to the parent. This can be used for
        # tracing. (Optional)
        # Corresponds to the JSON property `parentUnitOperation`
        # @return [String]
        attr_accessor :parent_unit_operation
      
        # Provision is the unit operation that provision the underlying resources
        # represented by a Unit. Can only execute if the Unit is not currently
        # provisioned.
        # Corresponds to the JSON property `provision`
        # @return [Google::Apis::SaasservicemgmtV1beta1::Provision]
        attr_accessor :provision
      
        # Optional. Specifies which rollout created this Unit Operation. This cannot be
        # modified and is used for filtering purposes only. If a dependent unit and unit
        # operation are created as part of another unit operation, they will use the
        # same rolloutId.
        # Corresponds to the JSON property `rollout`
        # @return [String]
        attr_accessor :rollout
      
        # A time specification to schedule the maintenance.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::SaasservicemgmtV1beta1::Schedule]
        attr_accessor :schedule
      
        # Optional. Output only. UnitOperationState describes the current state of the
        # unit operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The unique identifier of the resource. UID is unique in the time
        # and space for this resource within the scope of the service. It is typically
        # generated by the server on successful creation of a resource and must not be
        # changed. UID is used to uniquely identify resources with resource name reuses.
        # This should be a UUID4.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Required. Immutable. The Unit a given UnitOperation will act upon.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Output only. The timestamp when the resource was last updated. Any change to
        # the resource made by users must refresh this value. Changes to a resource made
        # by the service should refresh this value.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Upgrade is the unit operation that upgrades a provisioned unit, which may also
        # include the underlying resources represented by a Unit. Can only execute if
        # the Unit is currently provisioned.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::SaasservicemgmtV1beta1::Upgrade]
        attr_accessor :upgrade
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cancel = args[:cancel] if args.key?(:cancel)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deprovision = args[:deprovision] if args.key?(:deprovision)
          @engine_state = args[:engine_state] if args.key?(:engine_state)
          @error_category = args[:error_category] if args.key?(:error_category)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent_unit_operation = args[:parent_unit_operation] if args.key?(:parent_unit_operation)
          @provision = args[:provision] if args.key?(:provision)
          @rollout = args[:rollout] if args.key?(:rollout)
          @schedule = args[:schedule] if args.key?(:schedule)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @unit = args[:unit] if args.key?(:unit)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
        end
      end
      
      # UnitOperationCondition describes the status of an Unit Operation.
      # UnitOperationCondition is individual components that contribute to an overall
      # state.
      class UnitOperationCondition
        include Google::Apis::Core::Hashable
      
        # Required. Last time the condition transited from one status to another.
        # Corresponds to the JSON property `lastTransitionTime`
        # @return [String]
        attr_accessor :last_transition_time
      
        # Required. Human readable message indicating details about the last transition.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Required. Brief reason for the condition's last transition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Required. Status of the condition.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Required. Type of the condition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # UnitVariable describes a parameter for a Unit.
      class UnitVariable
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Name of a supported variable type. Supported types are
        # string, int, bool.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. String encoded value for the variable.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Required. Immutable. Name of the variable from actuation configs.
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # Upgrade is the unit operation that upgrades a provisioned unit, which may also
      # include the underlying resources represented by a Unit. Can only execute if
      # the Unit is currently provisioned.
      class Upgrade
        include Google::Apis::Core::Hashable
      
        # Optional. Set of input variables. Maximum 100. (optional)
        # Corresponds to the JSON property `inputVariables`
        # @return [Array<Google::Apis::SaasservicemgmtV1beta1::UnitVariable>]
        attr_accessor :input_variables
      
        # Optional. Reference to the Release object to use for the Unit. (optional).
        # Corresponds to the JSON property `release`
        # @return [String]
        attr_accessor :release
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @release = args[:release] if args.key?(:release)
        end
      end
      
      # Mapping of input variables to their respective output variable for
      # depedenencies
      class VariableMapping
        include Google::Apis::Core::Hashable
      
        # Output variables whose values will be passed on to dependencies
        # Corresponds to the JSON property `from`
        # @return [Google::Apis::SaasservicemgmtV1beta1::FromMapping]
        attr_accessor :from
      
        # Input variables whose values will be passed on to dependencies
        # Corresponds to the JSON property `to`
        # @return [Google::Apis::SaasservicemgmtV1beta1::ToMapping]
        attr_accessor :to
      
        # Required. name of the variable
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from = args[:from] if args.key?(:from)
          @to = args[:to] if args.key?(:to)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
    end
  end
end
