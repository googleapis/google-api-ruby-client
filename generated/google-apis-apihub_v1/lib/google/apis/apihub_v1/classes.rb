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
    module ApihubV1
      
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
      
      # The API metadata.
      class GoogleCloudApihubV1ApiMetadata
        include Google::Apis::Core::Hashable
      
        # An API resource in the API Hub.
        # Corresponds to the JSON property `api`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        attr_accessor :api
      
        # Optional. Timestamp indicating when the API was created at the source.
        # Corresponds to the JSON property `originalCreateTime`
        # @return [String]
        attr_accessor :original_create_time
      
        # Optional. The unique identifier of the API in the system where it was
        # originally created.
        # Corresponds to the JSON property `originalId`
        # @return [String]
        attr_accessor :original_id
      
        # Required. Timestamp indicating when the API was last updated at the source.
        # Corresponds to the JSON property `originalUpdateTime`
        # @return [String]
        attr_accessor :original_update_time
      
        # Optional. The list of versions present in an API resource.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1VersionMetadata>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @original_create_time = args[:original_create_time] if args.key?(:original_create_time)
          @original_id = args[:original_id] if args.key?(:original_id)
          @original_update_time = args[:original_update_time] if args.key?(:original_update_time)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # The details for the action to execute.
      class GoogleCloudApihubV1ActionExecutionDetail
        include Google::Apis::Core::Hashable
      
        # Required. The action id of the plugin to execute.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
        end
      end
      
      # The additional spec content for the spec. This contains the metadata and the
      # last update time for the additional spec content.
      class GoogleCloudApihubV1AdditionalSpecContent
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the spec content was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The labels of the spec content e.g. specboost addon version.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The type of the spec content.
        # Corresponds to the JSON property `specContentType`
        # @return [String]
        attr_accessor :spec_content_type
      
        # The spec contents.
        # Corresponds to the JSON property `specContents`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SpecContents]
        attr_accessor :spec_contents
      
        # Output only. The time at which the spec content was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @spec_content_type = args[:spec_content_type] if args.key?(:spec_content_type)
          @spec_contents = args[:spec_contents] if args.key?(:spec_contents)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Addon resource.
      class GoogleCloudApihubV1Addon
        include Google::Apis::Core::Hashable
      
        # Configuration for the addon.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AddonConfig]
        attr_accessor :config
      
        # Output only. The time at which the addon was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The data source on which the addon operates. This determines which
        # field in the `config` oneof is used.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # Optional. The description of the addon.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the addon.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The name of the addon to enable. Format: `projects/`project`/
        # locations/`location`/addons/`addon``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the addon.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the addon was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_source = args[:data_source] if args.key?(:data_source)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for the addon.
      class GoogleCloudApihubV1AddonConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for addons which act on all data in the API hub. This is used to
        # specify if the addon is enabled for all data in the API hub.
        # Corresponds to the JSON property `allDataAddonConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AllDataAddonConfig]
        attr_accessor :all_data_addon_config
      
        # Configuration for gateway plugin addons. This is used to specify the list of
        # gateway plugin configs for which the addon is enabled.
        # Corresponds to the JSON property `gatewayPluginAddonConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1GatewayPluginAddonConfig]
        attr_accessor :gateway_plugin_addon_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_data_addon_config = args[:all_data_addon_config] if args.key?(:all_data_addon_config)
          @gateway_plugin_addon_config = args[:gateway_plugin_addon_config] if args.key?(:gateway_plugin_addon_config)
        end
      end
      
      # Configuration for addons which act on all data in the API hub. This is used to
      # specify if the addon is enabled for all data in the API hub.
      class GoogleCloudApihubV1AllDataAddonConfig
        include Google::Apis::Core::Hashable
      
        # Required. If true, the addon is enabled for all data in the API hub.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # The value that can be assigned to the attribute when the data type is enum.
      class GoogleCloudApihubV1AllowedValue
        include Google::Apis::Core::Hashable
      
        # Optional. The detailed description of the allowed value.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the allowed value.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The ID of the allowed value. * If provided, the same will be used.
        # The service will throw an error if the specified id is already used by another
        # allowed value in the same attribute resource. * If not provided, a system
        # generated id derived from the display name will be used. In this case, the
        # service will handle conflict resolution by adding a system generated suffix in
        # case of duplicates. This value should be 4-63 characters, and valid characters
        # are /a-z-/.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. When set to true, the allowed value cannot be updated or deleted by
        # the user. It can only be true for System defined attributes.
        # Corresponds to the JSON property `immutable`
        # @return [Boolean]
        attr_accessor :immutable
        alias_method :immutable?, :immutable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @immutable = args[:immutable] if args.key?(:immutable)
        end
      end
      
      # An API resource in the API Hub.
      class GoogleCloudApihubV1Api
        include Google::Apis::Core::Hashable
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `apiFunctionalRequirements`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :api_functional_requirements
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `apiRequirements`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :api_requirements
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `apiStyle`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :api_style
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `apiTechnicalRequirements`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :api_technical_requirements
      
        # Optional. The list of user defined attributes associated with the API resource.
        # The key is the attribute name. It will be of the format: `projects/`project`/
        # locations/`location`/attributes/`attribute``. The value is the attribute
        # values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `businessUnit`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :business_unit
      
        # Output only. The time at which the API resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the API resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the API resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # Optional. Fingerprint of the API resource. This must be unique for each API
        # resource. It can neither be unset nor be updated to an existing fingerprint of
        # another API resource.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `maturityLevel`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :maturity_level
      
        # Identifier. The name of the API resource in the API Hub. Format: `projects/`
        # project`/locations/`location`/apis/`api``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Owner details.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Owner]
        attr_accessor :owner
      
        # Optional. The selected version for an API resource. This can be used when
        # special handling is needed on client side for particular version of the API.
        # Format is `projects/`project`/locations/`location`/apis/`api`/versions/`
        # version``
        # Corresponds to the JSON property `selectedVersion`
        # @return [String]
        attr_accessor :selected_version
      
        # Output only. The list of sources and metadata from the sources of the API
        # resource.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata>]
        attr_accessor :source_metadata
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `targetUser`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :target_user
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `team`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :team
      
        # Output only. The time at which the API resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The list of versions present in an API resource. Note: An API
        # resource can be associated with more than 1 version. Format is `projects/`
        # project`/locations/`location`/apis/`api`/versions/`version``
        # Corresponds to the JSON property `versions`
        # @return [Array<String>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_functional_requirements = args[:api_functional_requirements] if args.key?(:api_functional_requirements)
          @api_requirements = args[:api_requirements] if args.key?(:api_requirements)
          @api_style = args[:api_style] if args.key?(:api_style)
          @api_technical_requirements = args[:api_technical_requirements] if args.key?(:api_technical_requirements)
          @attributes = args[:attributes] if args.key?(:attributes)
          @business_unit = args[:business_unit] if args.key?(:business_unit)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @maturity_level = args[:maturity_level] if args.key?(:maturity_level)
          @name = args[:name] if args.key?(:name)
          @owner = args[:owner] if args.key?(:owner)
          @selected_version = args[:selected_version] if args.key?(:selected_version)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @target_user = args[:target_user] if args.key?(:target_user)
          @team = args[:team] if args.key?(:team)
          @update_time = args[:update_time] if args.key?(:update_time)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # The API data to be collected.
      class GoogleCloudApihubV1ApiData
        include Google::Apis::Core::Hashable
      
        # The message to hold repeated API metadata.
        # Corresponds to the JSON property `apiMetadataList`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiMetadataList]
        attr_accessor :api_metadata_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_metadata_list = args[:api_metadata_list] if args.key?(:api_metadata_list)
        end
      end
      
      # An ApiHubInstance represents the instance resources of the API Hub. Currently,
      # only one ApiHub instance is allowed for each project.
      class GoogleCloudApihubV1ApiHubInstance
        include Google::Apis::Core::Hashable
      
        # Available configurations to provision an ApiHub Instance.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Config]
        attr_accessor :config
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the ApiHub instance.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Instance labels to represent user-provided metadata. Refer to cloud
        # documentation on labels for more details. https://cloud.google.com/compute/
        # docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Format: `projects/`project`/locations/`location`/apiHubInstances/`
        # apiHubInstance``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the ApiHub instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Extra information about ApiHub instance state. Currently the
        # message would be populated when state is `FAILED`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. Last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ApiHubResource is one of the resources such as Api, Operation, Deployment,
      # Definition, Spec and Version resources stored in API-Hub.
      class GoogleCloudApihubV1ApiHubResource
        include Google::Apis::Core::Hashable
      
        # An API resource in the API Hub.
        # Corresponds to the JSON property `api`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        attr_accessor :api
      
        # Represents a definition for example schema, request, response definitions
        # contained in an API version. A definition is added/updated/deleted in an API
        # version when a new spec is added or an existing spec is updated/deleted in a
        # version. Currently, definition will be created only corresponding to OpenAPI
        # spec as parsing is supported for OpenAPI spec. Also, within OpenAPI spec, only
        # `schema` object is supported.
        # Corresponds to the JSON property `definition`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Definition]
        attr_accessor :definition
      
        # Details of the deployment where APIs are hosted. A deployment could represent
        # an Apigee proxy, API gateway, other Google Cloud services or non-Google Cloud
        # services as well. A deployment entity is a root level entity in the API hub
        # and exists independent of any API.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        attr_accessor :deployment
      
        # Represents an operation contained in an API version in the API Hub. An
        # operation is added/updated/deleted in an API version when a new spec is added
        # or an existing spec is updated/deleted in a version. Currently, an operation
        # will be created only corresponding to OpenAPI spec as parsing is supported for
        # OpenAPI spec. Alternatively operations can be managed via create,update and
        # delete APIs, creation of apiOperation can be possible only for version with no
        # parsed operations and update/delete can be possible only for operations
        # created via create API.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation]
        attr_accessor :operation
      
        # Represents a spec associated with an API version in the API Hub. Note that
        # specs of various types can be uploaded, however parsing of details is
        # supported for OpenAPI spec currently.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec]
        attr_accessor :spec
      
        # Represents a version of the API resource in API hub. This is also referred to
        # as the API version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @definition = args[:definition] if args.key?(:definition)
          @deployment = args[:deployment] if args.key?(:deployment)
          @operation = args[:operation] if args.key?(:operation)
          @spec = args[:spec] if args.key?(:spec)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Config for authentication with API key.
      class GoogleCloudApihubV1ApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `apiKey`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Secret]
        attr_accessor :api_key
      
        # Required. The location of the API key. The default value is QUERY.
        # Corresponds to the JSON property `httpElementLocation`
        # @return [String]
        attr_accessor :http_element_location
      
        # Required. The parameter name of the API key. E.g. If the API request is "https:
        # //example.com/act?api_key=", "api_key" would be the parameter name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
          @http_element_location = args[:http_element_location] if args.key?(:http_element_location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The message to hold repeated API metadata.
      class GoogleCloudApihubV1ApiMetadataList
        include Google::Apis::Core::Hashable
      
        # Required. The list of API metadata.
        # Corresponds to the JSON property `apiMetadata`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ApiMetadata>]
        attr_accessor :api_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_metadata = args[:api_metadata] if args.key?(:api_metadata)
        end
      end
      
      # Represents an operation contained in an API version in the API Hub. An
      # operation is added/updated/deleted in an API version when a new spec is added
      # or an existing spec is updated/deleted in a version. Currently, an operation
      # will be created only corresponding to OpenAPI spec as parsing is supported for
      # OpenAPI spec. Alternatively operations can be managed via create,update and
      # delete APIs, creation of apiOperation can be possible only for version with no
      # parsed operations and update/delete can be possible only for operations
      # created via create API.
      class GoogleCloudApihubV1ApiOperation
        include Google::Apis::Core::Hashable
      
        # Optional. The list of user defined attributes associated with the API
        # operation resource. The key is the attribute name. It will be of the format: `
        # projects/`project`/locations/`location`/attributes/`attribute``. The value is
        # the attribute values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # Output only. The time at which the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The operation details parsed from the spec.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1OperationDetails]
        attr_accessor :details
      
        # Identifier. The name of the operation. Format: `projects/`project`/locations/`
        # location`/apis/`api`/versions/`version`/operations/`operation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of sources and metadata from the sources of the API
        # operation.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata>]
        attr_accessor :source_metadata
      
        # Output only. The name of the spec will be of the format: `projects/`project`/
        # locations/`location`/apis/`api`/versions/`version`/specs/`spec`` Note:The name
        # of the spec will be empty if the operation is created via CreateApiOperation
        # API.
        # Corresponds to the JSON property `spec`
        # @return [String]
        attr_accessor :spec
      
        # Output only. The time at which the operation was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @details = args[:details] if args.key?(:details)
          @name = args[:name] if args.key?(:name)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @spec = args[:spec] if args.key?(:spec)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The view of an API.
      class GoogleCloudApihubV1ApiView
        include Google::Apis::Core::Hashable
      
        # A flattened view of an API, its version and one of the linked deployments.
        # Corresponds to the JSON property `mcpServerView`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1FlattenedApiVersionDeploymentView]
        attr_accessor :mcp_server_view
      
        # A flattened view of an API, its version, one of its operations and one of the
        # linked deployments. If there are no deployments linked to the operation then
        # the result will be empty.
        # Corresponds to the JSON property `mcpToolView`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1FlattenedApiVersionOperationDeploymentView]
        attr_accessor :mcp_tool_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mcp_server_view = args[:mcp_server_view] if args.key?(:mcp_server_view)
          @mcp_tool_view = args[:mcp_tool_view] if args.key?(:mcp_tool_view)
        end
      end
      
      # Configuration for Apigee Edge gateways. Applicability of a filter is
      # determined by the filter being provided. If none of the filters are provided
      # the addon will be enabled for all data brought in by the gateway plugin
      # instance.
      class GoogleCloudApihubV1ApigeeEdgeConfig
        include Google::Apis::Core::Hashable
      
        # Filter for environments.
        # Corresponds to the JSON property `environmentFilter`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1EnvironmentFilter]
        attr_accessor :environment_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_filter = args[:environment_filter] if args.key?(:environment_filter)
        end
      end
      
      # Configuration for Apigee OPDK gateways. Applicability of a filter is
      # determined by the filter being provided. If none of the filters are provided
      # the addon will be enabled for all data brought in by the gateway plugin
      # instance.
      class GoogleCloudApihubV1ApigeeOpdkConfig
        include Google::Apis::Core::Hashable
      
        # Filter for environments.
        # Corresponds to the JSON property `environmentFilter`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1EnvironmentFilter]
        attr_accessor :environment_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_filter = args[:environment_filter] if args.key?(:environment_filter)
        end
      end
      
      # Configuration for Apigee X and Apigee Hybrid gateways. Applicability of a
      # filter is determined by the filter being provided. If none of the filters are
      # provided the addon will be enabled for all data brought in by the gateway
      # plugin instance.
      class GoogleCloudApihubV1ApigeeXHybridConfig
        include Google::Apis::Core::Hashable
      
        # Filter for environments.
        # Corresponds to the JSON property `environmentFilter`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1EnvironmentFilter]
        attr_accessor :environment_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment_filter = args[:environment_filter] if args.key?(:environment_filter)
        end
      end
      
      # The details of the Application Integration endpoint to be triggered for
      # curation.
      class GoogleCloudApihubV1ApplicationIntegrationEndpointDetails
        include Google::Apis::Core::Hashable
      
        # Required. The API trigger ID of the Application Integration workflow.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Required. The endpoint URI should be a valid REST URI for triggering an
        # Application Integration. Format: `https://integrations.googleapis.com/v1/`name=
        # projects/*/locations/*/integrations/*`:execute` or `https://`location`-
        # integrations.googleapis.com/v1/`name=projects/*/locations/*/integrations/*`:
        # execute`
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An attribute in the API Hub. An attribute is a name value pair which can be
      # attached to different resources in the API hub based on the scope of the
      # attribute. Attributes can either be pre-defined by the API Hub or created by
      # users.
      class GoogleCloudApihubV1Attribute
        include Google::Apis::Core::Hashable
      
        # Optional. The list of allowed values when the attribute value is of type enum.
        # This is required when the data_type of the attribute is ENUM. The maximum
        # number of allowed values of an attribute will be 1000.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1AllowedValue>]
        attr_accessor :allowed_values
      
        # Optional. The maximum number of values that the attribute can have when
        # associated with an API Hub resource. Cardinality 1 would represent a single-
        # valued attribute. It must not be less than 1 or greater than 20. If not
        # specified, the cardinality would be set to 1 by default and represent a single-
        # valued attribute.
        # Corresponds to the JSON property `cardinality`
        # @return [Fixnum]
        attr_accessor :cardinality
      
        # Output only. The time at which the attribute was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The type of the data of the attribute.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Output only. The definition type of the attribute.
        # Corresponds to the JSON property `definitionType`
        # @return [String]
        attr_accessor :definition_type
      
        # Optional. The description of the attribute.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the attribute.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. When mandatory is true, the attribute is mandatory for the
        # resource specified in the scope. Only System defined attributes can be
        # mandatory.
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # Identifier. The name of the attribute in the API Hub. Format: `projects/`
        # project`/locations/`location`/attributes/`attribute``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The scope of the attribute. It represents the resource in the API
        # Hub to which the attribute can be linked.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Output only. The time at which the attribute was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_type = args[:data_type] if args.key?(:data_type)
          @definition_type = args[:definition_type] if args.key?(:definition_type)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @mandatory = args[:mandatory] if args.key?(:mandatory)
          @name = args[:name] if args.key?(:name)
          @scope = args[:scope] if args.key?(:scope)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The attribute values associated with resource.
      class GoogleCloudApihubV1AttributeValues
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the attribute. Format: projects/`project`/locations/`
        # location`/attributes/`attribute`
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # The attribute values of data type enum.
        # Corresponds to the JSON property `enumValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1EnumAttributeValues]
        attr_accessor :enum_values
      
        # The attribute values of data type string or JSON.
        # Corresponds to the JSON property `jsonValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StringAttributeValues]
        attr_accessor :json_values
      
        # The attribute values of data type string or JSON.
        # Corresponds to the JSON property `stringValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StringAttributeValues]
        attr_accessor :string_values
      
        # The attribute values of data type string or JSON.
        # Corresponds to the JSON property `uriValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StringAttributeValues]
        attr_accessor :uri_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @json_values = args[:json_values] if args.key?(:json_values)
          @string_values = args[:string_values] if args.key?(:string_values)
          @uri_values = args[:uri_values] if args.key?(:uri_values)
        end
      end
      
      # AuthConfig represents the authentication information.
      class GoogleCloudApihubV1AuthConfig
        include Google::Apis::Core::Hashable
      
        # Config for authentication with API key.
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiKeyConfig]
        attr_accessor :api_key_config
      
        # Required. The authentication type.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Config for Google service account authentication.
        # Corresponds to the JSON property `googleServiceAccountConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1GoogleServiceAccountConfig]
        attr_accessor :google_service_account_config
      
        # Parameters to support Oauth 2.0 client credentials grant authentication. See
        # https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
        # Corresponds to the JSON property `oauth2ClientCredentialsConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Oauth2ClientCredentialsConfig]
        attr_accessor :oauth2_client_credentials_config
      
        # Parameters to support Username and Password Authentication.
        # Corresponds to the JSON property `userPasswordConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1UserPasswordConfig]
        attr_accessor :user_password_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @google_service_account_config = args[:google_service_account_config] if args.key?(:google_service_account_config)
          @oauth2_client_credentials_config = args[:oauth2_client_credentials_config] if args.key?(:oauth2_client_credentials_config)
          @user_password_config = args[:user_password_config] if args.key?(:user_password_config)
        end
      end
      
      # AuthConfigTemplate represents the authentication template for a plugin.
      class GoogleCloudApihubV1AuthConfigTemplate
        include Google::Apis::Core::Hashable
      
        # Config for Google service account authentication.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1GoogleServiceAccountConfig]
        attr_accessor :service_account
      
        # Required. The list of authentication types supported by the plugin.
        # Corresponds to the JSON property `supportedAuthTypes`
        # @return [Array<String>]
        attr_accessor :supported_auth_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
          @supported_auth_types = args[:supported_auth_types] if args.key?(:supported_auth_types)
        end
      end
      
      # The CollectApiData method's request.
      class GoogleCloudApihubV1CollectApiDataRequest
        include Google::Apis::Core::Hashable
      
        # Required. The action ID to be used for collecting the API data. This should
        # map to one of the action IDs specified in action configs in the plugin.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # The API data to be collected.
        # Corresponds to the JSON property `apiData`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiData]
        attr_accessor :api_data
      
        # Required. The type of collection. Applies to all entries in api_data.
        # Corresponds to the JSON property `collectionType`
        # @return [String]
        attr_accessor :collection_type
      
        # Required. The plugin instance collecting the API data. Format: `projects/`
        # project`/locations/`location`/plugins/`plugin`/instances/`instance``.
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @api_data = args[:api_data] if args.key?(:api_data)
          @collection_type = args[:collection_type] if args.key?(:collection_type)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
        end
      end
      
      # Available configurations to provision an ApiHub Instance.
      class GoogleCloudApihubV1Config
        include Google::Apis::Core::Hashable
      
        # Optional. The Customer Managed Encryption Key (CMEK) used for data encryption.
        # The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/
        # keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the location must match the
        # instance location. If the CMEK is not provided, a GMEK will be created for the
        # instance.
        # Corresponds to the JSON property `cmekKeyName`
        # @return [String]
        attr_accessor :cmek_key_name
      
        # Optional. If true, the search will be disabled for the instance. The default
        # value is false.
        # Corresponds to the JSON property `disableSearch`
        # @return [Boolean]
        attr_accessor :disable_search
        alias_method :disable_search?, :disable_search
      
        # Optional. Encryption type for the region. If the encryption type is CMEK, the
        # cmek_key_name must be provided. If no encryption type is provided, GMEK will
        # be used.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Optional. The name of the Vertex AI location where the data store is stored.
        # Corresponds to the JSON property `vertexLocation`
        # @return [String]
        attr_accessor :vertex_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cmek_key_name = args[:cmek_key_name] if args.key?(:cmek_key_name)
          @disable_search = args[:disable_search] if args.key?(:disable_search)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @vertex_location = args[:vertex_location] if args.key?(:vertex_location)
        end
      end
      
      # ConfigTemplate represents the configuration template for a plugin.
      class GoogleCloudApihubV1ConfigTemplate
        include Google::Apis::Core::Hashable
      
        # Optional. The list of additional configuration variables for the plugin's
        # configuration.
        # Corresponds to the JSON property `additionalConfigTemplate`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigVariableTemplate>]
        attr_accessor :additional_config_template
      
        # AuthConfigTemplate represents the authentication template for a plugin.
        # Corresponds to the JSON property `authConfigTemplate`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AuthConfigTemplate]
        attr_accessor :auth_config_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_config_template = args[:additional_config_template] if args.key?(:additional_config_template)
          @auth_config_template = args[:auth_config_template] if args.key?(:auth_config_template)
        end
      end
      
      # ConfigValueOption represents an option for a config variable of type enum or
      # multi select.
      class GoogleCloudApihubV1ConfigValueOption
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the option.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the option.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Id of the option.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # ConfigVariable represents a additional configuration variable present in a
      # PluginInstance Config or AuthConfig, based on a ConfigVariableTemplate.
      class GoogleCloudApihubV1ConfigVariable
        include Google::Apis::Core::Hashable
      
        # Optional. The config variable value in case of config variable of type boolean.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # ConfigValueOption represents an option for a config variable of type enum or
        # multi select.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigValueOption]
        attr_accessor :enum_value
      
        # Optional. The config variable value in case of config variable of type integer.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Output only. Key will be the id to uniquely identify the config variable.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The config variable value of data type multi int.
        # Corresponds to the JSON property `multiIntValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1MultiIntValues]
        attr_accessor :multi_int_values
      
        # The config variable value of data type multi select.
        # Corresponds to the JSON property `multiSelectValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1MultiSelectValues]
        attr_accessor :multi_select_values
      
        # The config variable value of data type multi string.
        # Corresponds to the JSON property `multiStringValues`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1MultiStringValues]
        attr_accessor :multi_string_values
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `secretValue`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Secret]
        attr_accessor :secret_value
      
        # Optional. The config variable value in case of config variable of type string.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @key = args[:key] if args.key?(:key)
          @multi_int_values = args[:multi_int_values] if args.key?(:multi_int_values)
          @multi_select_values = args[:multi_select_values] if args.key?(:multi_select_values)
          @multi_string_values = args[:multi_string_values] if args.key?(:multi_string_values)
          @secret_value = args[:secret_value] if args.key?(:secret_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # ConfigVariableTemplate represents a configuration variable template present in
      # a Plugin Config.
      class GoogleCloudApihubV1ConfigVariableTemplate
        include Google::Apis::Core::Hashable
      
        # Optional. Description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Enum options. To be populated if `ValueType` is `ENUM`.
        # Corresponds to the JSON property `enumOptions`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigValueOption>]
        attr_accessor :enum_options
      
        # Required. ID of the config variable. Must be unique within the configuration.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Multi select options. To be populated if `ValueType` is `
        # MULTI_SELECT`.
        # Corresponds to the JSON property `multiSelectOptions`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigValueOption>]
        attr_accessor :multi_select_options
      
        # Optional. Flag represents that this `ConfigVariable` must be provided for a
        # PluginInstance.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Optional. Regular expression in RE2 syntax used for validating the `value` of
        # a `ConfigVariable`.
        # Corresponds to the JSON property `validationRegex`
        # @return [String]
        attr_accessor :validation_regex
      
        # Required. Type of the parameter: string, int, bool etc.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @enum_options = args[:enum_options] if args.key?(:enum_options)
          @id = args[:id] if args.key?(:id)
          @multi_select_options = args[:multi_select_options] if args.key?(:multi_select_options)
          @required = args[:required] if args.key?(:required)
          @validation_regex = args[:validation_regex] if args.key?(:validation_regex)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # A curation resource in the API Hub.
      class GoogleCloudApihubV1Curation
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the curation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the curation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the curation.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The endpoint to be triggered for curation. The endpoint will be invoked with a
        # request payload containing ApiMetadata. Response should contain curated data
        # in the form of ApiMetadata.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Endpoint]
        attr_accessor :endpoint
      
        # Output only. The error code of the last execution of the curation. The error
        # code is populated only when the last execution state is failed.
        # Corresponds to the JSON property `lastExecutionErrorCode`
        # @return [String]
        attr_accessor :last_execution_error_code
      
        # Output only. Error message describing the failure, if any, during the last
        # execution of the curation.
        # Corresponds to the JSON property `lastExecutionErrorMessage`
        # @return [String]
        attr_accessor :last_execution_error_message
      
        # Output only. The last execution state of the curation.
        # Corresponds to the JSON property `lastExecutionState`
        # @return [String]
        attr_accessor :last_execution_state
      
        # Identifier. The name of the curation. Format: `projects/`project`/locations/`
        # location`/curations/`curation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The plugin instances and associated actions that are using the
        # curation. Note: A particular curation could be used by multiple plugin
        # instances or multiple actions in a plugin instance.
        # Corresponds to the JSON property `pluginInstanceActions`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstanceActionId>]
        attr_accessor :plugin_instance_actions
      
        # Output only. The time at which the curation was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @last_execution_error_code = args[:last_execution_error_code] if args.key?(:last_execution_error_code)
          @last_execution_error_message = args[:last_execution_error_message] if args.key?(:last_execution_error_message)
          @last_execution_state = args[:last_execution_state] if args.key?(:last_execution_state)
          @name = args[:name] if args.key?(:name)
          @plugin_instance_actions = args[:plugin_instance_actions] if args.key?(:plugin_instance_actions)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The curation information for this plugin instance.
      class GoogleCloudApihubV1CurationConfig
        include Google::Apis::Core::Hashable
      
        # Required. The curation type for this plugin instance.
        # Corresponds to the JSON property `curationType`
        # @return [String]
        attr_accessor :curation_type
      
        # Custom curation information for this plugin instance.
        # Corresponds to the JSON property `customCuration`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1CustomCuration]
        attr_accessor :custom_curation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @curation_type = args[:curation_type] if args.key?(:curation_type)
          @custom_curation = args[:custom_curation] if args.key?(:custom_curation)
        end
      end
      
      # Custom curation information for this plugin instance.
      class GoogleCloudApihubV1CustomCuration
        include Google::Apis::Core::Hashable
      
        # Required. The unique name of the curation resource. This will be the name of
        # the curation resource in the format: `projects/`project`/locations/`location`/
        # curations/`curation``
        # Corresponds to the JSON property `curation`
        # @return [String]
        attr_accessor :curation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @curation = args[:curation] if args.key?(:curation)
        end
      end
      
      # Represents a definition for example schema, request, response definitions
      # contained in an API version. A definition is added/updated/deleted in an API
      # version when a new spec is added or an existing spec is updated/deleted in a
      # version. Currently, definition will be created only corresponding to OpenAPI
      # spec as parsing is supported for OpenAPI spec. Also, within OpenAPI spec, only
      # `schema` object is supported.
      class GoogleCloudApihubV1Definition
        include Google::Apis::Core::Hashable
      
        # Optional. The list of user defined attributes associated with the definition
        # resource. The key is the attribute name. It will be of the format: `projects/`
        # project`/locations/`location`/attributes/`attribute``. The value is the
        # attribute values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # Output only. The time at which the definition was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The name of the definition. Format: `projects/`project`/locations/`
        # location`/apis/`api`/versions/`version`/definitions/`definition``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The schema details derived from the spec. Currently, this entity is supported
        # for OpenAPI spec only. For OpenAPI spec, this maps to the schema defined in
        # the `definitions` section for OpenAPI 2.0 version and in `components.schemas`
        # section for OpenAPI 3.0 and 3.1 version.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Schema]
        attr_accessor :schema
      
        # Output only. The name of the spec from where the definition was parsed. Format
        # is `projects/`project`/locations/`location`/apis/`api`/versions/`version`/
        # specs/`spec``
        # Corresponds to the JSON property `spec`
        # @return [String]
        attr_accessor :spec
      
        # Output only. The type of the definition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time at which the definition was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
          @spec = args[:spec] if args.key?(:spec)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A dependency resource defined in the API hub describes a dependency directed
      # from a consumer to a supplier entity. A dependency can be defined between two
      # Operations or between an Operation and External API.
      class GoogleCloudApihubV1Dependency
        include Google::Apis::Core::Hashable
      
        # Optional. The list of user defined attributes associated with the dependency
        # resource. The key is the attribute name. It will be of the format: `projects/`
        # project`/locations/`location`/attributes/`attribute``. The value is the
        # attribute values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # Reference to an entity participating in a dependency.
        # Corresponds to the JSON property `consumer`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1DependencyEntityReference]
        attr_accessor :consumer
      
        # Output only. The time at which the dependency was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Human readable description corresponding of the dependency.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Discovery mode of the dependency.
        # Corresponds to the JSON property `discoveryMode`
        # @return [String]
        attr_accessor :discovery_mode
      
        # Details describing error condition of a dependency.
        # Corresponds to the JSON property `errorDetail`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1DependencyErrorDetail]
        attr_accessor :error_detail
      
        # Identifier. The name of the dependency in the API Hub. Format: `projects/`
        # project`/locations/`location`/dependencies/`dependency``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the dependency.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Reference to an entity participating in a dependency.
        # Corresponds to the JSON property `supplier`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1DependencyEntityReference]
        attr_accessor :supplier
      
        # Output only. The time at which the dependency was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @consumer = args[:consumer] if args.key?(:consumer)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @discovery_mode = args[:discovery_mode] if args.key?(:discovery_mode)
          @error_detail = args[:error_detail] if args.key?(:error_detail)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @supplier = args[:supplier] if args.key?(:supplier)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Reference to an entity participating in a dependency.
      class GoogleCloudApihubV1DependencyEntityReference
        include Google::Apis::Core::Hashable
      
        # Output only. Display name of the entity.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of an external API in the API Hub. Format: `projects/`
        # project`/locations/`location`/externalApis/`external_api``
        # Corresponds to the JSON property `externalApiResourceName`
        # @return [String]
        attr_accessor :external_api_resource_name
      
        # The resource name of an operation in the API Hub. Format: `projects/`project`/
        # locations/`location`/apis/`api`/versions/`version`/operations/`operation``
        # Corresponds to the JSON property `operationResourceName`
        # @return [String]
        attr_accessor :operation_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @external_api_resource_name = args[:external_api_resource_name] if args.key?(:external_api_resource_name)
          @operation_resource_name = args[:operation_resource_name] if args.key?(:operation_resource_name)
        end
      end
      
      # Details describing error condition of a dependency.
      class GoogleCloudApihubV1DependencyErrorDetail
        include Google::Apis::Core::Hashable
      
        # Optional. Error in the dependency.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Optional. Timestamp at which the error was found.
        # Corresponds to the JSON property `errorTime`
        # @return [String]
        attr_accessor :error_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @error_time = args[:error_time] if args.key?(:error_time)
        end
      end
      
      # Details of the deployment where APIs are hosted. A deployment could represent
      # an Apigee proxy, API gateway, other Google Cloud services or non-Google Cloud
      # services as well. A deployment entity is a root level entity in the API hub
      # and exists independent of any API.
      class GoogleCloudApihubV1Deployment
        include Google::Apis::Core::Hashable
      
        # Output only. The API versions linked to this deployment. Note: A particular
        # deployment could be linked to multiple different API versions (of same or
        # different APIs).
        # Corresponds to the JSON property `apiVersions`
        # @return [Array<String>]
        attr_accessor :api_versions
      
        # Optional. The list of user defined attributes associated with the deployment
        # resource. The key is the attribute name. It will be of the format: `projects/`
        # project`/locations/`location`/attributes/`attribute``. The value is the
        # attribute values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # Output only. The time at which the deployment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `deploymentType`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :deployment_type
      
        # Optional. The description of the deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the deployment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # Required. The endpoints at which this deployment resource is listening for API
        # requests. This could be a list of complete URIs, hostnames or an IP addresses.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<String>]
        attr_accessor :endpoints
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :environment
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `managementUrl`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :management_url
      
        # Identifier. The name of the deployment. Format: `projects/`project`/locations/`
        # location`/deployments/`deployment``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource URI identifies the deployment within its gateway. For
        # Apigee gateways, its recommended to use the format: organizations/`org`/
        # environments/`env`/apis/`api`. For ex: if a proxy with name `orders` is
        # deployed in `staging` environment of `cymbal` organization, the resource URI
        # would be: `organizations/cymbal/environments/staging/apis/orders`.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `slo`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :slo
      
        # Optional. The environment at source for the deployment. For example: prod, dev,
        # staging, etc.
        # Corresponds to the JSON property `sourceEnvironment`
        # @return [String]
        attr_accessor :source_environment
      
        # Output only. The list of sources and metadata from the sources of the
        # deployment.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata>]
        attr_accessor :source_metadata
      
        # Optional. The project to which the deployment belongs. For GCP gateways, this
        # will refer to the project identifier. For others like Edge/OPDK, this will
        # refer to the org identifier.
        # Corresponds to the JSON property `sourceProject`
        # @return [String]
        attr_accessor :source_project
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `sourceUri`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :source_uri
      
        # Output only. The time at which the deployment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_versions = args[:api_versions] if args.key?(:api_versions)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment_type = args[:deployment_type] if args.key?(:deployment_type)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @environment = args[:environment] if args.key?(:environment)
          @management_url = args[:management_url] if args.key?(:management_url)
          @name = args[:name] if args.key?(:name)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @slo = args[:slo] if args.key?(:slo)
          @source_environment = args[:source_environment] if args.key?(:source_environment)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @source_project = args[:source_project] if args.key?(:source_project)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The metadata associated with a deployment.
      class GoogleCloudApihubV1DeploymentMetadata
        include Google::Apis::Core::Hashable
      
        # Details of the deployment where APIs are hosted. A deployment could represent
        # an Apigee proxy, API gateway, other Google Cloud services or non-Google Cloud
        # services as well. A deployment entity is a root level entity in the API hub
        # and exists independent of any API.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        attr_accessor :deployment
      
        # Optional. Timestamp indicating when the deployment was created at the source.
        # Corresponds to the JSON property `originalCreateTime`
        # @return [String]
        attr_accessor :original_create_time
      
        # Optional. The unique identifier of the deployment in the system where it was
        # originally created.
        # Corresponds to the JSON property `originalId`
        # @return [String]
        attr_accessor :original_id
      
        # Required. Timestamp indicating when the deployment was last updated at the
        # source.
        # Corresponds to the JSON property `originalUpdateTime`
        # @return [String]
        attr_accessor :original_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @original_create_time = args[:original_create_time] if args.key?(:original_create_time)
          @original_id = args[:original_id] if args.key?(:original_id)
          @original_update_time = args[:original_update_time] if args.key?(:original_update_time)
        end
      end
      
      # The DisablePluginInstanceAction method's request.
      class GoogleCloudApihubV1DisablePluginInstanceActionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The action id to disable.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
        end
      end
      
      # The DisablePlugin method's request.
      class GoogleCloudApihubV1DisablePluginRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Respresents an API Observation observed in one of the sources.
      class GoogleCloudApihubV1DiscoveredApiObservation
        include Google::Apis::Core::Hashable
      
        # Optional. The number of observed API Operations.
        # Corresponds to the JSON property `apiOperationCount`
        # @return [Fixnum]
        attr_accessor :api_operation_count
      
        # Output only. Create time stamp of the observation in API Hub.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The hostname of requests processed for this Observation.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Output only. The number of known API Operations.
        # Corresponds to the JSON property `knownOperationsCount`
        # @return [Fixnum]
        attr_accessor :known_operations_count
      
        # Optional. Last event detected time stamp
        # Corresponds to the JSON property `lastEventDetectedTime`
        # @return [String]
        attr_accessor :last_event_detected_time
      
        # Identifier. The name of the discovered API Observation. Format: `projects/`
        # project`/locations/`location`/discoveredApiObservations/`
        # discovered_api_observation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. For an observation pushed from a gcp resource, this would be the gcp
        # project id.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # Optional. The IP address (IPv4 or IPv6) of the origin server that the request
        # was sent to. This field can include port information. Examples: `"192.168.1.1"`
        # , `"10.0.0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
        # Corresponds to the JSON property `serverIps`
        # @return [Array<String>]
        attr_accessor :server_ips
      
        # Optional. The location of the observation source.
        # Corresponds to the JSON property `sourceLocations`
        # @return [Array<String>]
        attr_accessor :source_locations
      
        # SourceMetadata represents the metadata for a resource at the source.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata]
        attr_accessor :source_metadata
      
        # Optional. The type of the source from which the observation was collected.
        # Corresponds to the JSON property `sourceTypes`
        # @return [Array<String>]
        attr_accessor :source_types
      
        # Optional. Style of ApiObservation
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
        # Output only. The number of unknown API Operations.
        # Corresponds to the JSON property `unknownOperationsCount`
        # @return [Fixnum]
        attr_accessor :unknown_operations_count
      
        # Output only. Update time stamp of the observation in API Hub.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_operation_count = args[:api_operation_count] if args.key?(:api_operation_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hostname = args[:hostname] if args.key?(:hostname)
          @known_operations_count = args[:known_operations_count] if args.key?(:known_operations_count)
          @last_event_detected_time = args[:last_event_detected_time] if args.key?(:last_event_detected_time)
          @name = args[:name] if args.key?(:name)
          @origin = args[:origin] if args.key?(:origin)
          @server_ips = args[:server_ips] if args.key?(:server_ips)
          @source_locations = args[:source_locations] if args.key?(:source_locations)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @source_types = args[:source_types] if args.key?(:source_types)
          @style = args[:style] if args.key?(:style)
          @unknown_operations_count = args[:unknown_operations_count] if args.key?(:unknown_operations_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # DiscoveredApiOperation represents an API Operation observed in one of the
      # sources.
      class GoogleCloudApihubV1DiscoveredApiOperation
        include Google::Apis::Core::Hashable
      
        # Output only. The classification of the discovered API operation.
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # Optional. The number of occurrences of this API Operation.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. Create time stamp of the discovered API operation in API Hub.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. First seen time stamp
        # Corresponds to the JSON property `firstSeenTime`
        # @return [String]
        attr_accessor :first_seen_time
      
        # An HTTP-based API Operation, sometimes called a "REST" Operation.
        # Corresponds to the JSON property `httpOperation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HttpOperationDetails]
        attr_accessor :http_operation
      
        # Optional. Last seen time stamp
        # Corresponds to the JSON property `lastSeenTime`
        # @return [String]
        attr_accessor :last_seen_time
      
        # Output only. The list of matched results for the discovered API operation.
        # This will be populated only if the classification is known. The current
        # usecase is for a single match. Keeping it repeated to support multiple matches
        # in future.
        # Corresponds to the JSON property `matchResults`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1MatchResult>]
        attr_accessor :match_results
      
        # Identifier. The name of the discovered API Operation. Format: `projects/`
        # project`/locations/`location`/discoveredApiObservations/`
        # discovered_api_observation`/discoveredApiOperations/`discovered_api_operation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # SourceMetadata represents the metadata for a resource at the source.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata]
        attr_accessor :source_metadata
      
        # Output only. Update time stamp of the discovered API operation in API Hub.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @count = args[:count] if args.key?(:count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @first_seen_time = args[:first_seen_time] if args.key?(:first_seen_time)
          @http_operation = args[:http_operation] if args.key?(:http_operation)
          @last_seen_time = args[:last_seen_time] if args.key?(:last_seen_time)
          @match_results = args[:match_results] if args.key?(:match_results)
          @name = args[:name] if args.key?(:name)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Documentation details.
      class GoogleCloudApihubV1Documentation
        include Google::Apis::Core::Hashable
      
        # Optional. The uri of the externally hosted documentation.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
        end
      end
      
      # The EnablePluginInstanceAction method's request.
      class GoogleCloudApihubV1EnablePluginInstanceActionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The action id to enable.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
        end
      end
      
      # The EnablePlugin method's request.
      class GoogleCloudApihubV1EnablePluginRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The endpoint to be triggered for curation. The endpoint will be invoked with a
      # request payload containing ApiMetadata. Response should contain curated data
      # in the form of ApiMetadata.
      class GoogleCloudApihubV1Endpoint
        include Google::Apis::Core::Hashable
      
        # The details of the Application Integration endpoint to be triggered for
        # curation.
        # Corresponds to the JSON property `applicationIntegrationEndpointDetails`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApplicationIntegrationEndpointDetails]
        attr_accessor :application_integration_endpoint_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_integration_endpoint_details = args[:application_integration_endpoint_details] if args.key?(:application_integration_endpoint_details)
        end
      end
      
      # The attribute values of data type enum.
      class GoogleCloudApihubV1EnumAttributeValues
        include Google::Apis::Core::Hashable
      
        # Required. The attribute values in case attribute data type is enum.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1AllowedValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Filter for environments.
      class GoogleCloudApihubV1EnvironmentFilter
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates if this filter should match all environments or only a
        # subset of environments. If set to true, all environments are matched.
        # Corresponds to the JSON property `allEnvironments`
        # @return [Boolean]
        attr_accessor :all_environments
        alias_method :all_environments?, :all_environments
      
        # Optional. If provided, only environments in this list are matched. This field
        # is ignored if `all_environments` is true.
        # Corresponds to the JSON property `environments`
        # @return [Array<String>]
        attr_accessor :environments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_environments = args[:all_environments] if args.key?(:all_environments)
          @environments = args[:environments] if args.key?(:environments)
        end
      end
      
      # The ExecutePluginInstanceAction method's request.
      class GoogleCloudApihubV1ExecutePluginInstanceActionRequest
        include Google::Apis::Core::Hashable
      
        # The details for the action to execute.
        # Corresponds to the JSON property `actionExecutionDetail`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ActionExecutionDetail]
        attr_accessor :action_execution_detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_execution_detail = args[:action_execution_detail] if args.key?(:action_execution_detail)
        end
      end
      
      # The execution status for the plugin instance.
      class GoogleCloudApihubV1ExecutionStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the execution.
        # Corresponds to the JSON property `currentExecutionState`
        # @return [String]
        attr_accessor :current_execution_state
      
        # The result of the last execution of the plugin instance.
        # Corresponds to the JSON property `lastExecution`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1LastExecution]
        attr_accessor :last_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_execution_state = args[:current_execution_state] if args.key?(:current_execution_state)
          @last_execution = args[:last_execution] if args.key?(:last_execution)
        end
      end
      
      # An external API represents an API being provided by external sources. This can
      # be used to model third-party APIs and can be used to define dependencies.
      class GoogleCloudApihubV1ExternalApi
        include Google::Apis::Core::Hashable
      
        # Optional. The list of user defined attributes associated with the Version
        # resource. The key is the attribute name. It will be of the format: `projects/`
        # project`/locations/`location`/attributes/`attribute``. The value is the
        # attribute values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the external API. Max length is 2000 characters (
        # Unicode Code Points).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the external API. Max length is 63 characters (
        # Unicode Code Points).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # Optional. List of endpoints on which this API is accessible.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<String>]
        attr_accessor :endpoints
      
        # Identifier. Format: `projects/`project`/locations/`location`/externalApi/`
        # externalApi``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. List of paths served by this API.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # Output only. Last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @name = args[:name] if args.key?(:name)
          @paths = args[:paths] if args.key?(:paths)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The FetchAdditionalSpecContent method's response.
      class GoogleCloudApihubV1FetchAdditionalSpecContentResponse
        include Google::Apis::Core::Hashable
      
        # The additional spec content for the spec. This contains the metadata and the
        # last update time for the additional spec content.
        # Corresponds to the JSON property `additionalSpecContent`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AdditionalSpecContent]
        attr_accessor :additional_spec_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_spec_content = args[:additional_spec_content] if args.key?(:additional_spec_content)
        end
      end
      
      # A flattened view of an API, its version and one of the linked deployments.
      class GoogleCloudApihubV1FlattenedApiVersionDeploymentView
        include Google::Apis::Core::Hashable
      
        # An API resource in the API Hub.
        # Corresponds to the JSON property `api`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        attr_accessor :api
      
        # Details of the deployment where APIs are hosted. A deployment could represent
        # an Apigee proxy, API gateway, other Google Cloud services or non-Google Cloud
        # services as well. A deployment entity is a root level entity in the API hub
        # and exists independent of any API.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        attr_accessor :deployment
      
        # Represents a version of the API resource in API hub. This is also referred to
        # as the API version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @deployment = args[:deployment] if args.key?(:deployment)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A flattened view of an API, its version, one of its operations and one of the
      # linked deployments. If there are no deployments linked to the operation then
      # the result will be empty.
      class GoogleCloudApihubV1FlattenedApiVersionOperationDeploymentView
        include Google::Apis::Core::Hashable
      
        # An API resource in the API Hub.
        # Corresponds to the JSON property `api`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        attr_accessor :api
      
        # Represents an operation contained in an API version in the API Hub. An
        # operation is added/updated/deleted in an API version when a new spec is added
        # or an existing spec is updated/deleted in a version. Currently, an operation
        # will be created only corresponding to OpenAPI spec as parsing is supported for
        # OpenAPI spec. Alternatively operations can be managed via create,update and
        # delete APIs, creation of apiOperation can be possible only for version with no
        # parsed operations and update/delete can be possible only for operations
        # created via create API.
        # Corresponds to the JSON property `apiOperation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation]
        attr_accessor :api_operation
      
        # Details of the deployment where APIs are hosted. A deployment could represent
        # an Apigee proxy, API gateway, other Google Cloud services or non-Google Cloud
        # services as well. A deployment entity is a root level entity in the API hub
        # and exists independent of any API.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        attr_accessor :deployment
      
        # Represents a version of the API resource in API hub. This is also referred to
        # as the API version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api = args[:api] if args.key?(:api)
          @api_operation = args[:api_operation] if args.key?(:api_operation)
          @deployment = args[:deployment] if args.key?(:deployment)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for gateway plugin addons. This is used to specify the list of
      # gateway plugin configs for which the addon is enabled.
      class GoogleCloudApihubV1GatewayPluginAddonConfig
        include Google::Apis::Core::Hashable
      
        # Required. The list of gateway plugin configs for which the addon is enabled.
        # Each gateway plugin config should have a unique plugin instance.
        # Corresponds to the JSON property `gatewayPluginConfigs`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1GatewayPluginConfig>]
        attr_accessor :gateway_plugin_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gateway_plugin_configs = args[:gateway_plugin_configs] if args.key?(:gateway_plugin_configs)
        end
      end
      
      # Configuration for a gateway plugin. This is used to specify configs for
      # different gateways.
      class GoogleCloudApihubV1GatewayPluginConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for Apigee Edge gateways. Applicability of a filter is
        # determined by the filter being provided. If none of the filters are provided
        # the addon will be enabled for all data brought in by the gateway plugin
        # instance.
        # Corresponds to the JSON property `apigeeEdgeConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApigeeEdgeConfig]
        attr_accessor :apigee_edge_config
      
        # Configuration for Apigee OPDK gateways. Applicability of a filter is
        # determined by the filter being provided. If none of the filters are provided
        # the addon will be enabled for all data brought in by the gateway plugin
        # instance.
        # Corresponds to the JSON property `apigeeOpdkConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApigeeOpdkConfig]
        attr_accessor :apigee_opdk_config
      
        # Configuration for Apigee X and Apigee Hybrid gateways. Applicability of a
        # filter is determined by the filter being provided. If none of the filters are
        # provided the addon will be enabled for all data brought in by the gateway
        # plugin instance.
        # Corresponds to the JSON property `apigeeXHybridConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApigeeXHybridConfig]
        attr_accessor :apigee_x_hybrid_config
      
        # Required. The name of the gateway plugin instance for which the config is to
        # be specified. Format: projects/`project`/locations/`location`/plugins/`plugin`/
        # pluginInstances/`plugin_instance`
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apigee_edge_config = args[:apigee_edge_config] if args.key?(:apigee_edge_config)
          @apigee_opdk_config = args[:apigee_opdk_config] if args.key?(:apigee_opdk_config)
          @apigee_x_hybrid_config = args[:apigee_x_hybrid_config] if args.key?(:apigee_x_hybrid_config)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
        end
      end
      
      # Config for Google service account authentication.
      class GoogleCloudApihubV1GoogleServiceAccountConfig
        include Google::Apis::Core::Hashable
      
        # Required. The service account to be used for authenticating request. The `iam.
        # serviceAccounts.getAccessToken` permission should be granted on this service
        # account to the impersonator service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # An aggregation of HTTP header occurrences.
      class GoogleCloudApihubV1Header
        include Google::Apis::Core::Hashable
      
        # The number of occurrences of this Header across transactions.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Data type of header
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Header name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @data_type = args[:data_type] if args.key?(:data_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Host project registration refers to the registration of a Google cloud project
      # with Api Hub as a host project. This is the project where Api Hub is
      # provisioned. It acts as the consumer project for the Api Hub instance
      # provisioned. Multiple runtime projects can be attached to the host project and
      # these attachments define the scope of Api Hub.
      class GoogleCloudApihubV1HostProjectRegistration
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the host project registration was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Immutable. Google cloud project name in the format: "projects/abc"
        # or "projects/123". As input, project name with either project id or number are
        # accepted. As output, this field will contain project number.
        # Corresponds to the JSON property `gcpProject`
        # @return [String]
        attr_accessor :gcp_project
      
        # Identifier. The name of the host project registration. Format: "projects/`
        # project`/locations/`location`/hostProjectRegistrations/`
        # host_project_registration`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gcp_project = args[:gcp_project] if args.key?(:gcp_project)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The information related to the service implemented by the plugin developer,
      # used to invoke the plugin's functionality.
      class GoogleCloudApihubV1HostingService
        include Google::Apis::Core::Hashable
      
        # Optional. The URI of the service implemented by the plugin developer, used to
        # invoke the plugin's functionality. This information is only required for user
        # defined plugins.
        # Corresponds to the JSON property `serviceUri`
        # @return [String]
        attr_accessor :service_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_uri = args[:service_uri] if args.key?(:service_uri)
        end
      end
      
      # The HTTP Operation.
      class GoogleCloudApihubV1HttpOperation
        include Google::Apis::Core::Hashable
      
        # Optional. Operation method Note: Even though this field is optional, it is
        # required for CreateApiOperation API and we will fail the request if not
        # provided.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The path details derived from the spec.
        # Corresponds to the JSON property `path`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Path]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # An HTTP-based API Operation, sometimes called a "REST" Operation.
      class GoogleCloudApihubV1HttpOperationDetails
        include Google::Apis::Core::Hashable
      
        # The HTTP Operation.
        # Corresponds to the JSON property `httpOperation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HttpOperation]
        attr_accessor :http_operation
      
        # Optional. Path params of HttpOperation
        # Corresponds to the JSON property `pathParams`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1PathParam>]
        attr_accessor :path_params
      
        # Optional. Query params of HttpOperation
        # Corresponds to the JSON property `queryParams`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1QueryParam>]
        attr_accessor :query_params
      
        # An aggregation of HTTP requests.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HttpRequest]
        attr_accessor :request
      
        # An aggregation of HTTP responses.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HttpResponse]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_operation = args[:http_operation] if args.key?(:http_operation)
          @path_params = args[:path_params] if args.key?(:path_params)
          @query_params = args[:query_params] if args.key?(:query_params)
          @request = args[:request] if args.key?(:request)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # An aggregation of HTTP requests.
      class GoogleCloudApihubV1HttpRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Unordered map from header name to header metadata
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1Header>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # An aggregation of HTTP responses.
      class GoogleCloudApihubV1HttpResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Unordered map from header name to header metadata
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1Header>]
        attr_accessor :headers
      
        # Optional. Map of status code to observed count
        # Corresponds to the JSON property `responseCodes`
        # @return [Hash<String,Fixnum>]
        attr_accessor :response_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @response_codes = args[:response_codes] if args.key?(:response_codes)
        end
      end
      
      # Issue contains the details of a single issue found by the linter.
      class GoogleCloudApihubV1Issue
        include Google::Apis::Core::Hashable
      
        # Required. Rule code unique to each rule defined in linter.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Required. Human-readable message describing the issue found by the linter.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Required. An array of strings indicating the location in the analyzed document
        # where the rule was triggered.
        # Corresponds to the JSON property `path`
        # @return [Array<String>]
        attr_accessor :path
      
        # Object describing where in the file the issue was found.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Range]
        attr_accessor :range
      
        # Required. Severity level of the rule violation.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @path = args[:path] if args.key?(:path)
          @range = args[:range] if args.key?(:range)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # The result of the last execution of the plugin instance.
      class GoogleCloudApihubV1LastExecution
        include Google::Apis::Core::Hashable
      
        # Output only. The last execution end time of the plugin instance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Error message describing the failure, if any, during the last
        # execution.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Output only. The result of the last execution of the plugin instance.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Output only. The result metadata of the last execution of the plugin instance.
        # This will be a string representation of a JSON object and will be available on
        # successful execution.
        # Corresponds to the JSON property `resultMetadata`
        # @return [String]
        attr_accessor :result_metadata
      
        # Output only. The last execution start time of the plugin instance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_message = args[:error_message] if args.key?(:error_message)
          @result = args[:result] if args.key?(:result)
          @result_metadata = args[:result_metadata] if args.key?(:result_metadata)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # LintResponse contains the response from the linter.
      class GoogleCloudApihubV1LintResponse
        include Google::Apis::Core::Hashable
      
        # Required. Timestamp when the linting response was generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Array of issues found in the analyzed document.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Issue>]
        attr_accessor :issues
      
        # Required. Name of the linter used.
        # Corresponds to the JSON property `linter`
        # @return [String]
        attr_accessor :linter
      
        # Required. Name of the linting application.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Required. Lint state represents success or failure for linting.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Summary of all issue types and counts for each severity level.
        # Corresponds to the JSON property `summary`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SummaryEntry>]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @issues = args[:issues] if args.key?(:issues)
          @linter = args[:linter] if args.key?(:linter)
          @source = args[:source] if args.key?(:source)
          @state = args[:state] if args.key?(:state)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # The LintSpec method's request.
      class GoogleCloudApihubV1LintSpecRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The ListAddons method's response.
      class GoogleCloudApihubV1ListAddonsResponse
        include Google::Apis::Core::Hashable
      
        # The list of addons.
        # Corresponds to the JSON property `addons`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Addon>]
        attr_accessor :addons
      
        # A token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons = args[:addons] if args.key?(:addons)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListApiOperations method's response.
      class GoogleCloudApihubV1ListApiOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The operations corresponding to an API version.
        # Corresponds to the JSON property `apiOperations`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation>]
        attr_accessor :api_operations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_operations = args[:api_operations] if args.key?(:api_operations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListApis method's response.
      class GoogleCloudApihubV1ListApisResponse
        include Google::Apis::Core::Hashable
      
        # The API resources present in the API hub.
        # Corresponds to the JSON property `apis`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Api>]
        attr_accessor :apis
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apis = args[:apis] if args.key?(:apis)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListAttributes method's response.
      class GoogleCloudApihubV1ListAttributesResponse
        include Google::Apis::Core::Hashable
      
        # The list of all attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute>]
        attr_accessor :attributes
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListCurations method's response.
      class GoogleCloudApihubV1ListCurationsResponse
        include Google::Apis::Core::Hashable
      
        # The curation resources present in the API hub.
        # Corresponds to the JSON property `curations`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Curation>]
        attr_accessor :curations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @curations = args[:curations] if args.key?(:curations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListDependencies method's response.
      class GoogleCloudApihubV1ListDependenciesResponse
        include Google::Apis::Core::Hashable
      
        # The dependency resources present in the API hub.
        # Corresponds to the JSON property `dependencies`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency>]
        attr_accessor :dependencies
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependencies = args[:dependencies] if args.key?(:dependencies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListDeployments method's response.
      class GoogleCloudApihubV1ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The deployment resources present in the API hub.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment>]
        attr_accessor :deployments
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] if args.key?(:deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing DiscoveredApiObservations
      class GoogleCloudApihubV1ListDiscoveredApiObservationsResponse
        include Google::Apis::Core::Hashable
      
        # The DiscoveredApiObservation from the specified project and location.
        # Corresponds to the JSON property `discoveredApiObservations`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiObservation>]
        attr_accessor :discovered_api_observations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovered_api_observations = args[:discovered_api_observations] if args.key?(:discovered_api_observations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing DiscoveredApiOperations
      class GoogleCloudApihubV1ListDiscoveredApiOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The DiscoveredApiOperations from the specified project, location and
        # DiscoveredApiObservation.
        # Corresponds to the JSON property `discoveredApiOperations`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiOperation>]
        attr_accessor :discovered_api_operations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovered_api_operations = args[:discovered_api_operations] if args.key?(:discovered_api_operations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListExternalApis method's response.
      class GoogleCloudApihubV1ListExternalApisResponse
        include Google::Apis::Core::Hashable
      
        # The External API resources present in the API hub.
        # Corresponds to the JSON property `externalApis`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi>]
        attr_accessor :external_apis
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_apis = args[:external_apis] if args.key?(:external_apis)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListHostProjectRegistrations method's response.
      class GoogleCloudApihubV1ListHostProjectRegistrationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of host project registrations.
        # Corresponds to the JSON property `hostProjectRegistrations`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration>]
        attr_accessor :host_project_registrations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_project_registrations = args[:host_project_registrations] if args.key?(:host_project_registrations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListPluginInstances method's response.
      class GoogleCloudApihubV1ListPluginInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The plugin instances from the specified parent resource.
        # Corresponds to the JSON property `pluginInstances`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance>]
        attr_accessor :plugin_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @plugin_instances = args[:plugin_instances] if args.key?(:plugin_instances)
        end
      end
      
      # The ListPlugins method's response.
      class GoogleCloudApihubV1ListPluginsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The plugins from the specified parent resource.
        # Corresponds to the JSON property `plugins`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin>]
        attr_accessor :plugins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @plugins = args[:plugins] if args.key?(:plugins)
        end
      end
      
      # The ListRuntimeProjectAttachments method's response.
      class GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of runtime project attachments.
        # Corresponds to the JSON property `runtimeProjectAttachments`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment>]
        attr_accessor :runtime_project_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtime_project_attachments = args[:runtime_project_attachments] if args.key?(:runtime_project_attachments)
        end
      end
      
      # The ListSpecs method's response.
      class GoogleCloudApihubV1ListSpecsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The specs corresponding to an API Version.
        # Corresponds to the JSON property `specs`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Spec>]
        attr_accessor :specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @specs = args[:specs] if args.key?(:specs)
        end
      end
      
      # The ListVersions method's response.
      class GoogleCloudApihubV1ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The versions corresponding to an API.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # The LookupApiHubInstance method's response.`
      class GoogleCloudApihubV1LookupApiHubInstanceResponse
        include Google::Apis::Core::Hashable
      
        # An ApiHubInstance represents the instance resources of the API Hub. Currently,
        # only one ApiHub instance is allowed for each project.
        # Corresponds to the JSON property `apiHubInstance`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance]
        attr_accessor :api_hub_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_hub_instance = args[:api_hub_instance] if args.key?(:api_hub_instance)
        end
      end
      
      # The ListRuntimeProjectAttachments method's response.
      class GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse
        include Google::Apis::Core::Hashable
      
        # Runtime project attachment represents an attachment from the runtime project
        # to the host project. Api Hub looks for deployments in the attached runtime
        # projects and creates corresponding resources in Api Hub for the discovered
        # deployments.
        # Corresponds to the JSON property `runtimeProjectAttachment`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment]
        attr_accessor :runtime_project_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @runtime_project_attachment = args[:runtime_project_attachment] if args.key?(:runtime_project_attachment)
        end
      end
      
      # The ManageAddonConfig method's request.
      class GoogleCloudApihubV1ManageAddonConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for the addon.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AddonConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # The ManagePluginInstanceSourceData method's request.
      class GoogleCloudApihubV1ManagePluginInstanceSourceDataRequest
        include Google::Apis::Core::Hashable
      
        # Required. Action to be performed.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Required. Data to be managed.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Required. Type of data to be managed.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Required. Relative path of data being managed for a given plugin instance.
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @data = args[:data] if args.key?(:data)
          @data_type = args[:data_type] if args.key?(:data_type)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
        end
      end
      
      # The ManagePluginInstanceSourceData method's response.
      class GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # MatchResult represents the result of matching a discovered API operation with
      # a catalog API operation.
      class GoogleCloudApihubV1MatchResult
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the matched API Operation. Format: `projects/`project`
        # /locations/`location`/apis/`api`/versions/`version`/operations/`operation``
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
      
      # Details describing an MCP Tool.
      class GoogleCloudApihubV1McpTool
        include Google::Apis::Core::Hashable
      
        # Annotations for a Tool.
        # Corresponds to the JSON property `annotations`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ToolAnnotations]
        attr_accessor :annotations
      
        # Optional. Description of what the tool does.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The operation schema needed for an operation.
        # Corresponds to the JSON property `inputSchema`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1OperationSchema]
        attr_accessor :input_schema
      
        # Required. The name of the tool, unique within its parent scope (version).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The operation schema needed for an operation.
        # Corresponds to the JSON property `outputSchema`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1OperationSchema]
        attr_accessor :output_schema
      
        # Optional. Optional title for the tool.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @description = args[:description] if args.key?(:description)
          @input_schema = args[:input_schema] if args.key?(:input_schema)
          @name = args[:name] if args.key?(:name)
          @output_schema = args[:output_schema] if args.key?(:output_schema)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The config variable value of data type multi int.
      class GoogleCloudApihubV1MultiIntValues
        include Google::Apis::Core::Hashable
      
        # Optional. The config variable value of data type multi int.
        # Corresponds to the JSON property `values`
        # @return [Array<Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The config variable value of data type multi select.
      class GoogleCloudApihubV1MultiSelectValues
        include Google::Apis::Core::Hashable
      
        # Optional. The config variable value of data type multi select.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigValueOption>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The config variable value of data type multi string.
      class GoogleCloudApihubV1MultiStringValues
        include Google::Apis::Core::Hashable
      
        # Optional. The config variable value of data type multi string.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Parameters to support Oauth 2.0 client credentials grant authentication. See
      # https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
      class GoogleCloudApihubV1Oauth2ClientCredentialsConfig
        include Google::Apis::Core::Hashable
      
        # Required. The client identifier.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientSecret`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Secret]
        attr_accessor :client_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
        end
      end
      
      # OpenApiSpecDetails contains the details parsed from an OpenAPI spec in
      # addition to the fields mentioned in SpecDetails.
      class GoogleCloudApihubV1OpenApiSpecDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The format of the spec.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Owner details.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Owner]
        attr_accessor :owner
      
        # Output only. The version in the spec. This maps to `info.version` in OpenAPI
        # spec.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @owner = args[:owner] if args.key?(:owner)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The operation details parsed from the spec.
      class GoogleCloudApihubV1OperationDetails
        include Google::Apis::Core::Hashable
      
        # Optional. For OpenAPI spec, this will be set if `operation.deprecated`is
        # marked as `true` in the spec.
        # Corresponds to the JSON property `deprecated`
        # @return [Boolean]
        attr_accessor :deprecated
        alias_method :deprecated?, :deprecated
      
        # Optional. Description of the operation behavior. For OpenAPI spec, this will
        # map to `operation.description` in the spec, in case description is empty, `
        # operation.summary` will be used.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # The HTTP Operation.
        # Corresponds to the JSON property `httpOperation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HttpOperation]
        attr_accessor :http_operation
      
        # Details describing an MCP Tool.
        # Corresponds to the JSON property `mcpTool`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1McpTool]
        attr_accessor :mcp_tool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @documentation = args[:documentation] if args.key?(:documentation)
          @http_operation = args[:http_operation] if args.key?(:http_operation)
          @mcp_tool = args[:mcp_tool] if args.key?(:mcp_tool)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudApihubV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # The operation schema needed for an operation.
      class GoogleCloudApihubV1OperationSchema
        include Google::Apis::Core::Hashable
      
        # The JSON schema. Only valid JSON is accepted but semantic validation of schema
        # is not supported right now.
        # Corresponds to the JSON property `jsonSchema`
        # @return [Hash<String,Object>]
        attr_accessor :json_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
        end
      end
      
      # Owner details.
      class GoogleCloudApihubV1Owner
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the owner.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The email of the owner.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # The path details derived from the spec.
      class GoogleCloudApihubV1Path
        include Google::Apis::Core::Hashable
      
        # Optional. A short description for the path applicable to all operations.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Complete path relative to server endpoint. Note: Even though this
        # field is optional, it is required for CreateApiOperation API and we will fail
        # the request if not provided.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # HTTP Path parameter.
      class GoogleCloudApihubV1PathParam
        include Google::Apis::Core::Hashable
      
        # Optional. Data type of path param
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Optional. Segment location in the path, 1-indexed
        # Corresponds to the JSON property `position`
        # @return [Fixnum]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @position = args[:position] if args.key?(:position)
        end
      end
      
      # A plugin resource in the API Hub.
      class GoogleCloudApihubV1Plugin
        include Google::Apis::Core::Hashable
      
        # Optional. The configuration of actions supported by the plugin. **REQUIRED**:
        # This field must be provided when creating or updating a Plugin. The server
        # will reject requests if this field is missing.
        # Corresponds to the JSON property `actionsConfig`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1PluginActionConfig>]
        attr_accessor :actions_config
      
        # ConfigTemplate represents the configuration template for a plugin.
        # Corresponds to the JSON property `configTemplate`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigTemplate]
        attr_accessor :config_template
      
        # Output only. Timestamp indicating when the plugin was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The plugin description. Max length is 2000 characters (Unicode code
        # points).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the plugin. Max length is 50 characters (Unicode
        # code points).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # Optional. The type of the gateway.
        # Corresponds to the JSON property `gatewayType`
        # @return [String]
        attr_accessor :gateway_type
      
        # The information related to the service implemented by the plugin developer,
        # used to invoke the plugin's functionality.
        # Corresponds to the JSON property `hostingService`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HostingService]
        attr_accessor :hosting_service
      
        # Identifier. The name of the plugin. Format: `projects/`project`/locations/`
        # location`/plugins/`plugin``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The type of the plugin, indicating whether it is 'SYSTEM_OWNED'
        # or 'USER_OWNED'.
        # Corresponds to the JSON property `ownershipType`
        # @return [String]
        attr_accessor :ownership_type
      
        # Optional. The category of the plugin, identifying its primary category or
        # purpose. This field is required for all plugins.
        # Corresponds to the JSON property `pluginCategory`
        # @return [String]
        attr_accessor :plugin_category
      
        # Output only. Represents the state of the plugin. Note this field will not be
        # set for plugins developed via plugin framework as the state will be managed at
        # plugin instance level.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :type
      
        # Output only. Timestamp indicating when the plugin was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions_config = args[:actions_config] if args.key?(:actions_config)
          @config_template = args[:config_template] if args.key?(:config_template)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @gateway_type = args[:gateway_type] if args.key?(:gateway_type)
          @hosting_service = args[:hosting_service] if args.key?(:hosting_service)
          @name = args[:name] if args.key?(:name)
          @ownership_type = args[:ownership_type] if args.key?(:ownership_type)
          @plugin_category = args[:plugin_category] if args.key?(:plugin_category)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # PluginActionConfig represents the configuration of an action supported by a
      # plugin.
      class GoogleCloudApihubV1PluginActionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The description of the operation performed by the action.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the action.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The id of the action.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The trigger mode supported by the action.
        # Corresponds to the JSON property `triggerMode`
        # @return [String]
        attr_accessor :trigger_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @trigger_mode = args[:trigger_mode] if args.key?(:trigger_mode)
        end
      end
      
      # Represents a plugin instance resource in the API Hub. A PluginInstance is a
      # specific instance of a hub plugin with its own configuration, state, and
      # execution details.
      class GoogleCloudApihubV1PluginInstance
        include Google::Apis::Core::Hashable
      
        # Required. The action status for the plugin instance.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstanceAction>]
        attr_accessor :actions
      
        # Optional. The additional information for this plugin instance corresponding to
        # the additional config template of the plugin. This information will be sent to
        # plugin hosting service on each call to plugin hosted service. The key will be
        # the config_variable_template.display_name to uniquely identify the config
        # variable.
        # Corresponds to the JSON property `additionalConfig`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1ConfigVariable>]
        attr_accessor :additional_config
      
        # AuthConfig represents the authentication information.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AuthConfig]
        attr_accessor :auth_config
      
        # Output only. Timestamp indicating when the plugin instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The display name for this plugin instance. Max length is 255
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Error message describing the failure, if any, during Create,
        # Delete or ApplyConfig operation corresponding to the plugin instance.This
        # field will only be populated if the plugin instance is in the ERROR or FAILED
        # state.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Identifier. The unique name of the plugin instance resource. Format: `projects/
        # `project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The source environment's config present in the gateway instance
        # linked to the plugin instance. The key is the `source_environment` name from
        # the SourceEnvironment message.
        # Corresponds to the JSON property `sourceEnvironmentsConfig`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1SourceEnvironment>]
        attr_accessor :source_environments_config
      
        # Optional. The source project id of the plugin instance. This will be the id of
        # runtime project in case of gcp based plugins and org id in case of non gcp
        # based plugins. This field will be a required field for Google provided on-ramp
        # plugins.
        # Corresponds to the JSON property `sourceProjectId`
        # @return [String]
        attr_accessor :source_project_id
      
        # Output only. The current state of the plugin instance (e.g., enabled, disabled,
        # provisioning).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Timestamp indicating when the plugin instance was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @additional_config = args[:additional_config] if args.key?(:additional_config)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error_message = args[:error_message] if args.key?(:error_message)
          @name = args[:name] if args.key?(:name)
          @source_environments_config = args[:source_environments_config] if args.key?(:source_environments_config)
          @source_project_id = args[:source_project_id] if args.key?(:source_project_id)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # PluginInstanceAction represents an action which can be executed in the plugin
      # instance.
      class GoogleCloudApihubV1PluginInstanceAction
        include Google::Apis::Core::Hashable
      
        # Required. This should map to one of the action id specified in actions_config
        # in the plugin.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # The curation information for this plugin instance.
        # Corresponds to the JSON property `curationConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1CurationConfig]
        attr_accessor :curation_config
      
        # The execution status for the plugin instance.
        # Corresponds to the JSON property `hubInstanceAction`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ExecutionStatus]
        attr_accessor :hub_instance_action
      
        # The configuration of resources created for a given plugin instance action.
        # Corresponds to the JSON property `resourceConfig`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ResourceConfig]
        attr_accessor :resource_config
      
        # Optional. The schedule for this plugin instance action. This can only be set
        # if the plugin supports API_HUB_SCHEDULE_TRIGGER mode for this action.
        # Corresponds to the JSON property `scheduleCronExpression`
        # @return [String]
        attr_accessor :schedule_cron_expression
      
        # Optional. The time zone for the schedule cron expression. If not provided, UTC
        # will be used.
        # Corresponds to the JSON property `scheduleTimeZone`
        # @return [String]
        attr_accessor :schedule_time_zone
      
        # Optional. The service account used to publish data. Note, the service account
        # will only be accepted for non GCP plugins like OPDK.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. The current state of the plugin action in the plugin instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @curation_config = args[:curation_config] if args.key?(:curation_config)
          @hub_instance_action = args[:hub_instance_action] if args.key?(:hub_instance_action)
          @resource_config = args[:resource_config] if args.key?(:resource_config)
          @schedule_cron_expression = args[:schedule_cron_expression] if args.key?(:schedule_cron_expression)
          @schedule_time_zone = args[:schedule_time_zone] if args.key?(:schedule_time_zone)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The plugin instance and associated action that is using the curation.
      class GoogleCloudApihubV1PluginInstanceActionId
        include Google::Apis::Core::Hashable
      
        # Output only. The action ID that is using the curation. This should map to one
        # of the action IDs specified in action configs in the plugin.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # Output only. Plugin instance that is using the curation. Format is `projects/`
        # project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
        end
      end
      
      # PluginInstanceActionSource represents the plugin instance action source.
      class GoogleCloudApihubV1PluginInstanceActionSource
        include Google::Apis::Core::Hashable
      
        # Output only. The id of the plugin instance action.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # Output only. The resource name of the source plugin instance. Format is `
        # projects/`project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
        end
      end
      
      # Point within the file (line and character).
      class GoogleCloudApihubV1Point
        include Google::Apis::Core::Hashable
      
        # Required. Character position within the line (zero-indexed).
        # Corresponds to the JSON property `character`
        # @return [Fixnum]
        attr_accessor :character
      
        # Required. Line number (zero-indexed).
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @character = args[:character] if args.key?(:character)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # An aggregation of HTTP query parameter occurrences.
      class GoogleCloudApihubV1QueryParam
        include Google::Apis::Core::Hashable
      
        # Optional. The number of occurrences of this query parameter across
        # transactions.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. Data type of path param
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Required. Name of query param
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @data_type = args[:data_type] if args.key?(:data_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Object describing where in the file the issue was found.
      class GoogleCloudApihubV1Range
        include Google::Apis::Core::Hashable
      
        # Point within the file (line and character).
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Point]
        attr_accessor :end
      
        # Point within the file (line and character).
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Point]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # The configuration of resources created for a given plugin instance action.
      class GoogleCloudApihubV1ResourceConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The type of the action.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # Output only. The pubsub topic to publish the data to. Format is projects/`
        # project`/topics/`topic`
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # The RetrieveApiViews method's response.
      class GoogleCloudApihubV1RetrieveApiViewsResponse
        include Google::Apis::Core::Hashable
      
        # The list of API views.
        # Corresponds to the JSON property `apiViews`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1ApiView>]
        attr_accessor :api_views
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_views = args[:api_views] if args.key?(:api_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Runtime project attachment represents an attachment from the runtime project
      # to the host project. Api Hub looks for deployments in the attached runtime
      # projects and creates corresponding resources in Api Hub for the discovered
      # deployments.
      class GoogleCloudApihubV1RuntimeProjectAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The resource name of a runtime project attachment. Format: "
        # projects/`project`/locations/`location`/runtimeProjectAttachments/`
        # runtime_project_attachment`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Google cloud project name in the format: "projects/abc"
        # or "projects/123". As input, project name with either project id or number are
        # accepted. As output, this field will contain project number.
        # Corresponds to the JSON property `runtimeProject`
        # @return [String]
        attr_accessor :runtime_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @runtime_project = args[:runtime_project] if args.key?(:runtime_project)
        end
      end
      
      # The schema details derived from the spec. Currently, this entity is supported
      # for OpenAPI spec only. For OpenAPI spec, this maps to the schema defined in
      # the `definitions` section for OpenAPI 2.0 version and in `components.schemas`
      # section for OpenAPI 3.0 and 3.1 version.
      class GoogleCloudApihubV1Schema
        include Google::Apis::Core::Hashable
      
        # Output only. The display name of the schema. This will map to the name of the
        # schema in the spec.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The raw value of the schema definition corresponding to the
        # schema name in the spec.
        # Corresponds to the JSON property `rawValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @raw_value = args[:raw_value] if args.key?(:raw_value)
        end
      end
      
      # The SearchResources method's request.
      class GoogleCloudApihubV1SearchResourcesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An expression that filters the list of search results. A filter
        # expression consists of a field name, a comparison operator, and a value for
        # filtering. The value must be a string, a number, or a boolean. The comparison
        # operator must be `=`. Filters are not case sensitive. The following field
        # names are eligible for filtering: * `resource_type` - The type of resource in
        # the search results. Must be one of the following: `Api`, `ApiOperation`, `
        # Deployment`, `Definition`, `Spec` or `Version`. This field can only be
        # specified once in the filter. Here are is an example: * `resource_type = Api` -
        # The resource_type is _Api_.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The maximum number of search results to return. The service may
        # return fewer than this value. If unspecified at most 10 search results will be
        # returned. If value is negative then `INVALID_ARGUMENT` error is returned. The
        # maximum value is 25; values above 25 will be coerced to 25. While paginating,
        # you can specify a new page size parameter for each page of search results to
        # be listed.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous SearchResources call. Specify
        # this parameter to retrieve the next page of transactions. When paginating, you
        # must specify the `page_token` parameter and all the other parameters except
        # page_size should be specified with the same value which was used in the
        # previous call. If the other fields are set with a different value than the
        # previous call then `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The free text search query. This query can contain keywords which
        # could be related to any detail of the API-Hub resources such display names,
        # descriptions, attributes etc.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response for the SearchResources method.
      class GoogleCloudApihubV1SearchResourcesResponse
        include Google::Apis::Core::Hashable
      
        # Pass this token in the SearchResourcesRequest to continue to list results. If
        # all results have been returned, this field is an empty string or not present
        # in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of search results according to the filter and search query specified. The
        # order of search results represents the ranking.
        # Corresponds to the JSON property `searchResults`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResult>]
        attr_accessor :search_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @search_results = args[:search_results] if args.key?(:search_results)
        end
      end
      
      # Represents the search results.
      class GoogleCloudApihubV1SearchResult
        include Google::Apis::Core::Hashable
      
        # ApiHubResource is one of the resources such as Api, Operation, Deployment,
        # Definition, Spec and Version resources stored in API-Hub.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Secret provides a reference to entries in Secret Manager.
      class GoogleCloudApihubV1Secret
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the secret version in the format, format as: `
        # projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `secretVersion`
        # @return [String]
        attr_accessor :secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_version = args[:secret_version] if args.key?(:secret_version)
        end
      end
      
      # Message representing the source environment details.
      class GoogleCloudApihubV1SourceEnvironment
        include Google::Apis::Core::Hashable
      
        # Optional. The time at which the environment was created at the source.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The name of the environment at the source. This should map to
        # Deployment.
        # Corresponds to the JSON property `sourceEnvironment`
        # @return [String]
        attr_accessor :source_environment
      
        # The location where additional information about source environments can be
        # found. The location should be relative path of the environment manifest with
        # respect to a plugin instance.
        # Corresponds to the JSON property `sourceEnvironmentUri`
        # @return [String]
        attr_accessor :source_environment_uri
      
        # Optional. The time at which the environment was last updated at the source.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @source_environment = args[:source_environment] if args.key?(:source_environment)
          @source_environment_uri = args[:source_environment_uri] if args.key?(:source_environment_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # SourceMetadata represents the metadata for a resource at the source.
      class GoogleCloudApihubV1SourceMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the resource was created at the source.
        # Corresponds to the JSON property `originalResourceCreateTime`
        # @return [String]
        attr_accessor :original_resource_create_time
      
        # Output only. The unique identifier of the resource at the source.
        # Corresponds to the JSON property `originalResourceId`
        # @return [String]
        attr_accessor :original_resource_id
      
        # Output only. The time at which the resource was last updated at the source.
        # Corresponds to the JSON property `originalResourceUpdateTime`
        # @return [String]
        attr_accessor :original_resource_update_time
      
        # PluginInstanceActionSource represents the plugin instance action source.
        # Corresponds to the JSON property `pluginInstanceActionSource`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstanceActionSource]
        attr_accessor :plugin_instance_action_source
      
        # Output only. The type of the source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_resource_create_time = args[:original_resource_create_time] if args.key?(:original_resource_create_time)
          @original_resource_id = args[:original_resource_id] if args.key?(:original_resource_id)
          @original_resource_update_time = args[:original_resource_update_time] if args.key?(:original_resource_update_time)
          @plugin_instance_action_source = args[:plugin_instance_action_source] if args.key?(:plugin_instance_action_source)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Represents a spec associated with an API version in the API Hub. Note that
      # specs of various types can be uploaded, however parsing of details is
      # supported for OpenAPI spec currently.
      class GoogleCloudApihubV1Spec
        include Google::Apis::Core::Hashable
      
        # Output only. The additional spec contents for the spec.
        # Corresponds to the JSON property `additionalSpecContents`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1AdditionalSpecContent>]
        attr_accessor :additional_spec_contents
      
        # Optional. The list of user defined attributes associated with the spec. The
        # key is the attribute name. It will be of the format: `projects/`project`/
        # locations/`location`/attributes/`attribute``. The value is the attribute
        # values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # The spec contents.
        # Corresponds to the JSON property `contents`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SpecContents]
        attr_accessor :contents
      
        # Output only. The time at which the spec was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # SpecDetails contains the details parsed from supported spec types.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SpecDetails]
        attr_accessor :details
      
        # Required. The display name of the spec. This can contain the file name of the
        # spec.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # LintResponse contains the response from the linter.
        # Corresponds to the JSON property `lintResponse`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1LintResponse]
        attr_accessor :lint_response
      
        # Identifier. The name of the spec. Format: `projects/`project`/locations/`
        # location`/apis/`api`/versions/`version`/specs/`spec``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Input only. Enum specifying the parsing mode for OpenAPI
        # Specification (OAS) parsing.
        # Corresponds to the JSON property `parsingMode`
        # @return [String]
        attr_accessor :parsing_mode
      
        # Output only. The list of sources and metadata from the sources of the spec.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata>]
        attr_accessor :source_metadata
      
        # Optional. The URI of the spec source in case file is uploaded from an external
        # version control system.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `specType`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :spec_type
      
        # Output only. The time at which the spec was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_spec_contents = args[:additional_spec_contents] if args.key?(:additional_spec_contents)
          @attributes = args[:attributes] if args.key?(:attributes)
          @contents = args[:contents] if args.key?(:contents)
          @create_time = args[:create_time] if args.key?(:create_time)
          @details = args[:details] if args.key?(:details)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @lint_response = args[:lint_response] if args.key?(:lint_response)
          @name = args[:name] if args.key?(:name)
          @parsing_mode = args[:parsing_mode] if args.key?(:parsing_mode)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
          @spec_type = args[:spec_type] if args.key?(:spec_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The spec contents.
      class GoogleCloudApihubV1SpecContents
        include Google::Apis::Core::Hashable
      
        # Required. The contents of the spec.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # Required. The mime type of the content for example application/json,
        # application/yaml, application/wsdl etc.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # SpecDetails contains the details parsed from supported spec types.
      class GoogleCloudApihubV1SpecDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The description of the spec.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # OpenApiSpecDetails contains the details parsed from an OpenAPI spec in
        # addition to the fields mentioned in SpecDetails.
        # Corresponds to the JSON property `openApiSpecDetails`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1OpenApiSpecDetails]
        attr_accessor :open_api_spec_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @open_api_spec_details = args[:open_api_spec_details] if args.key?(:open_api_spec_details)
        end
      end
      
      # The metadata associated with a spec of the API version.
      class GoogleCloudApihubV1SpecMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Timestamp indicating when the spec was created at the source.
        # Corresponds to the JSON property `originalCreateTime`
        # @return [String]
        attr_accessor :original_create_time
      
        # Optional. The unique identifier of the spec in the system where it was
        # originally created.
        # Corresponds to the JSON property `originalId`
        # @return [String]
        attr_accessor :original_id
      
        # Required. Timestamp indicating when the spec was last updated at the source.
        # Corresponds to the JSON property `originalUpdateTime`
        # @return [String]
        attr_accessor :original_update_time
      
        # Represents a spec associated with an API version in the API Hub. Note that
        # specs of various types can be uploaded, however parsing of details is
        # supported for OpenAPI spec currently.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_create_time = args[:original_create_time] if args.key?(:original_create_time)
          @original_id = args[:original_id] if args.key?(:original_id)
          @original_update_time = args[:original_update_time] if args.key?(:original_update_time)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # The attribute values of data type string or JSON.
      class GoogleCloudApihubV1StringAttributeValues
        include Google::Apis::Core::Hashable
      
        # Required. The attribute values in case attribute data type is string or JSON.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Represents a singleton style guide resource to be used for linting Open API
      # specs.
      class GoogleCloudApihubV1StyleGuide
        include Google::Apis::Core::Hashable
      
        # The style guide contents.
        # Corresponds to the JSON property `contents`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuideContents]
        attr_accessor :contents
      
        # Required. Target linter for the style guide.
        # Corresponds to the JSON property `linter`
        # @return [String]
        attr_accessor :linter
      
        # Identifier. The name of the style guide. Format: `projects/`project`/locations/
        # `location`/plugins/`plugin`/styleGuide`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @linter = args[:linter] if args.key?(:linter)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The style guide contents.
      class GoogleCloudApihubV1StyleGuideContents
        include Google::Apis::Core::Hashable
      
        # Required. The contents of the style guide.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # Required. The mime type of the content.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Count of issues with a given severity.
      class GoogleCloudApihubV1SummaryEntry
        include Google::Apis::Core::Hashable
      
        # Required. Count of issues with the given severity.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Required. Severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Annotations for a Tool.
      class GoogleCloudApihubV1ToolAnnotations
        include Google::Apis::Core::Hashable
      
        # Optional. Additional hints which may help tools and not covered in defaults.
        # Corresponds to the JSON property `additionalHints`
        # @return [Hash<String,String>]
        attr_accessor :additional_hints
      
        # Optional. Hint indicating if the tool may have destructive side effects.
        # Corresponds to the JSON property `destructiveHint`
        # @return [Boolean]
        attr_accessor :destructive_hint
        alias_method :destructive_hint?, :destructive_hint
      
        # Optional. Hint indicating if the tool is idempotent.
        # Corresponds to the JSON property `idempotentHint`
        # @return [Boolean]
        attr_accessor :idempotent_hint
        alias_method :idempotent_hint?, :idempotent_hint
      
        # Optional. Hint indicating if the tool interacts with the open world (e.g.,
        # internet).
        # Corresponds to the JSON property `openWorldHint`
        # @return [Boolean]
        attr_accessor :open_world_hint
        alias_method :open_world_hint?, :open_world_hint
      
        # Optional. Hint indicating if the tool is read-only.
        # Corresponds to the JSON property `readOnlyHint`
        # @return [Boolean]
        attr_accessor :read_only_hint
        alias_method :read_only_hint?, :read_only_hint
      
        # Optional. A human-readable title for the tool (if different from Tool.title).
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_hints = args[:additional_hints] if args.key?(:additional_hints)
          @destructive_hint = args[:destructive_hint] if args.key?(:destructive_hint)
          @idempotent_hint = args[:idempotent_hint] if args.key?(:idempotent_hint)
          @open_world_hint = args[:open_world_hint] if args.key?(:open_world_hint)
          @read_only_hint = args[:read_only_hint] if args.key?(:read_only_hint)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Parameters to support Username and Password Authentication.
      class GoogleCloudApihubV1UserPasswordConfig
        include Google::Apis::Core::Hashable
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Secret]
        attr_accessor :password
      
        # Required. Username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Represents a version of the API resource in API hub. This is also referred to
      # as the API version.
      class GoogleCloudApihubV1Version
        include Google::Apis::Core::Hashable
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `accreditation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :accreditation
      
        # Output only. The operations contained in the API version. These operations
        # will be added to the version when a new spec is added or when an existing spec
        # is updated. Format is `projects/`project`/locations/`location`/apis/`api`/
        # versions/`version`/operations/`operation``
        # Corresponds to the JSON property `apiOperations`
        # @return [Array<String>]
        attr_accessor :api_operations
      
        # Optional. The list of user defined attributes associated with the Version
        # resource. The key is the attribute name. It will be of the format: `projects/`
        # project`/locations/`location`/attributes/`attribute``. The value is the
        # attribute values associated with the resource.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues>]
        attr_accessor :attributes
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `compliance`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :compliance
      
        # Output only. The time at which the version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The definitions contained in the API version. These definitions
        # will be added to the version when a new spec is added or when an existing spec
        # is updated. Format is `projects/`project`/locations/`location`/apis/`api`/
        # versions/`version`/definitions/`definition``
        # Corresponds to the JSON property `definitions`
        # @return [Array<String>]
        attr_accessor :definitions
      
        # Optional. The deployments linked to this API version. Note: A particular API
        # version could be deployed to multiple deployments (for dev deployment, UAT
        # deployment, etc) Format is `projects/`project`/locations/`location`/
        # deployments/`deployment``
        # Corresponds to the JSON property `deployments`
        # @return [Array<String>]
        attr_accessor :deployments
      
        # Optional. The description of the version.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the version.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation details.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Documentation]
        attr_accessor :documentation
      
        # The attribute values associated with resource.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1AttributeValues]
        attr_accessor :lifecycle
      
        # Identifier. The name of the version. Format: `projects/`project`/locations/`
        # location`/apis/`api`/versions/`version``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The selected deployment for a Version resource. This can be used
        # when special handling is needed on client side for a particular deployment
        # linked to the version. Format is `projects/`project`/locations/`location`/
        # deployments/`deployment``
        # Corresponds to the JSON property `selectedDeployment`
        # @return [String]
        attr_accessor :selected_deployment
      
        # Output only. The list of sources and metadata from the sources of the version.
        # Corresponds to the JSON property `sourceMetadata`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SourceMetadata>]
        attr_accessor :source_metadata
      
        # Output only. The specs associated with this version. Note that an API version
        # can be associated with multiple specs. Format is `projects/`project`/locations/
        # `location`/apis/`api`/versions/`version`/specs/`spec``
        # Corresponds to the JSON property `specs`
        # @return [Array<String>]
        attr_accessor :specs
      
        # Output only. The time at which the version was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accreditation = args[:accreditation] if args.key?(:accreditation)
          @api_operations = args[:api_operations] if args.key?(:api_operations)
          @attributes = args[:attributes] if args.key?(:attributes)
          @compliance = args[:compliance] if args.key?(:compliance)
          @create_time = args[:create_time] if args.key?(:create_time)
          @definitions = args[:definitions] if args.key?(:definitions)
          @deployments = args[:deployments] if args.key?(:deployments)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @name = args[:name] if args.key?(:name)
          @selected_deployment = args[:selected_deployment] if args.key?(:selected_deployment)
          @source_metadata = args[:source_metadata] if args.key?(:source_metadata)
          @specs = args[:specs] if args.key?(:specs)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The metadata associated with a version of the API resource.
      class GoogleCloudApihubV1VersionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The deployments linked to this API version. Note: A particular API
        # version could be deployed to multiple deployments (for dev deployment, UAT
        # deployment, etc.)
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1DeploymentMetadata>]
        attr_accessor :deployments
      
        # Optional. Timestamp indicating when the version was created at the source.
        # Corresponds to the JSON property `originalCreateTime`
        # @return [String]
        attr_accessor :original_create_time
      
        # Optional. The unique identifier of the version in the system where it was
        # originally created.
        # Corresponds to the JSON property `originalId`
        # @return [String]
        attr_accessor :original_id
      
        # Required. Timestamp indicating when the version was last updated at the source.
        # Corresponds to the JSON property `originalUpdateTime`
        # @return [String]
        attr_accessor :original_update_time
      
        # Optional. The specs associated with this version. Note that an API version can
        # be associated with multiple specs.
        # Corresponds to the JSON property `specs`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudApihubV1SpecMetadata>]
        attr_accessor :specs
      
        # Represents a version of the API resource in API hub. This is also referred to
        # as the API version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] if args.key?(:deployments)
          @original_create_time = args[:original_create_time] if args.key?(:original_create_time)
          @original_id = args[:original_id] if args.key?(:original_id)
          @original_update_time = args[:original_update_time] if args.key?(:original_update_time)
          @specs = args[:specs] if args.key?(:specs)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudCommonOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # The response message for Locations.ListLocations.
      class GoogleCloudLocationListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ApihubV1::GoogleCloudLocationLocation>]
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
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ApihubV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::ApihubV1::GoogleRpcStatus]
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
    end
  end
end
