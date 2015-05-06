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
    module DeploymentmanagerV2beta1
      
      # Next available tag: 8
      class Deployment
        include Google::Apis::Core::Hashable
      
        # ! An optional user-provided description of the deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # ! [Output Only] URL of the manifest representing the full configuration ! of
        # this deployment.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # ! The name of the deployment, which must be unique within the project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ! [Input Only] The YAML configuration to use in processing this deployment. ! !
        # When you create a deployment, the server creates a new manifest with the !
        # given YAML configuration and sets the `manifest` property to the URL of ! the
        # manifest resource.
        # Corresponds to the JSON property `targetConfig`
        # @return [String]
        attr_accessor :target_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @manifest = args[:manifest] unless args[:manifest].nil?
          @name = args[:name] unless args[:name].nil?
          @target_config = args[:target_config] unless args[:target_config].nil?
        end
      end
      
      # ! A response containing a partial list of deployments and a page token used !
      # to build the next request if the request has been truncated. Next available
      # tag: 4
      class ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # ! The deployments contained in this response.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Deployment>]
        attr_accessor :deployments
      
        # ! A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] unless args[:deployments].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Next available tag: 10
      class Manifest
        include Google::Apis::Core::Hashable
      
        # v2beta1: YAML with config - described above v2beta2: YAML + templates. ! The
        # YAML configuration for this manifest.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # ! [Output Only] The fully-expanded configuration file, including any !
        # templates and references.
        # Corresponds to the JSON property `evaluatedConfig`
        # @return [String]
        attr_accessor :evaluated_config
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # ! [Output Only] The name of the manifest.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Self link for the manifest.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] unless args[:config].nil?
          @evaluated_config = args[:evaluated_config] unless args[:evaluated_config].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # ! A response containing a partial list of manifests and a page token used ! to
      # build the next request if the request has been truncated. Next available tag:
      # 4
      class ListManifestsResponse
        include Google::Apis::Core::Hashable
      
        # ! Manifests contained in this list response.
        # Corresponds to the JSON property `manifests`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Manifest>]
        attr_accessor :manifests
      
        # ! A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifests = args[:manifests] unless args[:manifests].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # ! An operation resource, used to manage asynchronous API requests. Next
      # available tag: 24
      class Operation
        include Google::Apis::Core::Hashable
      
        # ! [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # ! [Output Only] The time that this operation was completed. This is in !
        # RFC3339 format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # ! [Output Only] If errors occurred during processing of this operation, ! this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeploymentmanagerV2beta1::Operation::Error]
        attr_accessor :error
      
        # ! [Output Only] If operation fails, the HTTP error message returned, ! e.g.
        # NOT FOUND.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # ! [Output Only] If operation fails, the HTTP error status code returned, ! e.g.
        # 404.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # ! [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # ! [Output Only] The time that this operation was requested. ! This is in RFC
        # 3339 format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # ! [Output Only] Name of the operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ! [Output Only] Type of the operation. Examples include "insert", or ! "delete"
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # ! [Output Only] An optional progress indicator that ranges from 0 to 100. !
        # There is no requirement that this be linear or support any granularity ! of
        # operations. This should not be used to guess at when the operation will ! be
        # complete. This number should be monotonically increasing as the ! operation
        # progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] Self link for the manifest.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # ! [Output Only] The time that this operation was started by the server. ! This
        # is in RFC 3339 format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # ! [Output Only] Status of the operation. Can be one of the following: ! "
        # PENDING", "RUNNING", or "DONE".
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # ! [Output Only] An optional textual description of the current status of ! the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # ! [Output Only] Unique target id which identifies a particular ! incarnation
        # of the target.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # ! [Output Only] URL of the resource the operation is mutating.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # ! [Output Only] User who requested the operation, for example ! "user@example.
        # com"
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # ! [Output Only] If warning messages generated during processing of this !
        # operation, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Operation::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @error = args[:error] unless args[:error].nil?
          @http_error_message = args[:http_error_message] unless args[:http_error_message].nil?
          @http_error_status_code = args[:http_error_status_code] unless args[:http_error_status_code].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @name = args[:name] unless args[:name].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @target_id = args[:target_id] unless args[:target_id].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
          @user = args[:user] unless args[:user].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
        
        # ! [Output Only] If errors occurred during processing of this operation, ! this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # ! The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] unless args[:errors].nil?
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # ! The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # ! Indicates the field in the request which caused the error. ! This property
            # is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # ! An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] unless args[:code].nil?
              @location = args[:location] unless args[:location].nil?
              @message = args[:message] unless args[:message].nil?
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # ! The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [Object]
          attr_accessor :code
        
          # ! Metadata for this warning in 'key: value' format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Operation::Warning::Datum>]
          attr_accessor :data
        
          # ! Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # ! A key for the warning data.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # ! A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # ! A response containing a partial list of operations and a page token used !
      # to build the next request if the request has been truncated. Next available
      # tag: 4
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # ! A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # ! Operations contained in this list response.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @operations = args[:operations] unless args[:operations].nil?
        end
      end
      
      # Next available tag: 12
      class Resource
        include Google::Apis::Core::Hashable
      
        # ! [Output Only] A list of any errors that occurred during deployment.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # ! [Output Only] The intended state of the resource.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # ! [Output Only] URL of the manifest representing the current configuration !
        # of this resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # ! [Output Only] The name of the resource as it appears in the YAML config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ! [Output Only] The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ! [Output Only] The type of the resource, for example ! ?compute.v1.instance?,
        # or ?replicaPools.v1beta2.instanceGroupManager?
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # ! [Output Only] The URL of the actual resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] unless args[:errors].nil?
          @id = args[:id] unless args[:id].nil?
          @intent = args[:intent] unless args[:intent].nil?
          @manifest = args[:manifest] unless args[:manifest].nil?
          @name = args[:name] unless args[:name].nil?
          @state = args[:state] unless args[:state].nil?
          @type = args[:type] unless args[:type].nil?
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # ! A response containing a partial list of resources and a page token used ! to
      # build the next request if the request has been truncated. Next available tag:
      # 4
      class ListResourcesResponse
        include Google::Apis::Core::Hashable
      
        # ! A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # ! Resources contained in this list response.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Resource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @resources = args[:resources] unless args[:resources].nil?
        end
      end
      
      # ! A type supported by Deployment Manager. Next available tag: 4
      class Type
        include Google::Apis::Core::Hashable
      
        # ! Name of the type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # ! A response that returns all Types supported by Deployment Manager Next
      # available tag: 3
      class ListTypesResponse
        include Google::Apis::Core::Hashable
      
        # ! Types supported by Deployment Manager
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta1::Type>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @types = args[:types] unless args[:types].nil?
        end
      end
    end
  end
end
