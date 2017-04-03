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
    module ReplicapoolupdaterV1beta1
      
      # Update of a single instance.
      class InstanceUpdate
        include Google::Apis::Core::Hashable
      
        # Errors that occurred during the instance update.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdate::Error]
        attr_accessor :error
      
        # Fully-qualified URL of the instance being updated.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Status of the instance update. Possible values are:
        # - "PENDING": The instance update is pending execution.
        # - "ROLLING_FORWARD": The instance update is going forward.
        # - "ROLLING_BACK": The instance update is being rolled back.
        # - "PAUSED": The instance update is temporarily paused (inactive).
        # - "ROLLED_OUT": The instance update is finished, the instance is running the
        # new template.
        # - "ROLLED_BACK": The instance update is finished, the instance has been
        # reverted to the previous template.
        # - "CANCELLED": The instance update is paused and no longer can be resumed,
        # undefined in which template the instance is running.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @instance = args[:instance] if args.key?(:instance)
          @status = args[:status] if args.key?(:status)
        end
        
        # Errors that occurred during the instance update.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdate::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
      end
      
      # Response returned by ListInstanceUpdates method.
      class InstanceUpdateList
        include Google::Apis::Core::Hashable
      
        # Collection of requested instance updates.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdate>]
        attr_accessor :items
      
        # [Output Only] Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The fully qualified URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # An operation resource, used to manage asynchronous API requests.
      class Operation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors occurred during processing of this operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::Operation::Error]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # 
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This is in RFC 3339
        # format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always replicapoolupdater#operation for
        # Operation resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # 
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] URL of the region where the operation resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] The fully qualified URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This is
        # in RFC 3339 format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] Status of the operation. Can be one of the following: "PENDING",
        # "RUNNING", or "DONE".
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] Unique target id which identifies a particular incarnation of
        # the target.
        # Corresponds to the JSON property `targetId`
        # @return [Fixnum]
        attr_accessor :target_id
      
        # [Output Only] URL of the resource the operation is mutating.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # 
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # 
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] URL of the zone where the operation resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] if args.key?(:client_operation_id)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @http_error_message = args[:http_error_message] if args.key?(:http_error_message)
          @http_error_status_code = args[:http_error_status_code] if args.key?(:http_error_status_code)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_link = args[:target_link] if args.key?(:target_link)
          @user = args[:user] if args.key?(:user)
          @warnings = args[:warnings] if args.key?(:warnings)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # [Output Only] If errors occurred during processing of this operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output only] Metadata for this warning in key:value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] Metadata key for this warning.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] Metadata value for this warning.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Operation resources.
      class OperationList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The Operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::Operation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always replicapoolupdater#operationList for
        # OperationList resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncate.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The fully qualified URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # The following represents a resource describing a single update (rollout) of a
      # group of instances to the given template.
      class RollingUpdate
        include Google::Apis::Core::Hashable
      
        # Specifies the action to take for each instance within the instance group. This
        # can be RECREATE which will recreate each instance and is only available for
        # managed instance groups. It can also be REBOOT which performs a soft reboot
        # for each instance and is only available for regular (non-managed) instance
        # groups.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Errors that occurred during the rolling update.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Error]
        attr_accessor :error
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Fully-qualified URL of an instance group being updated. Exactly one of
        # instanceGroupManager and instanceGroup must be set.
        # Corresponds to the JSON property `instanceGroup`
        # @return [String]
        attr_accessor :instance_group
      
        # Fully-qualified URL of an instance group manager being updated. Exactly one of
        # instanceGroupManager and instanceGroup must be set.
        # Corresponds to the JSON property `instanceGroupManager`
        # @return [String]
        attr_accessor :instance_group_manager
      
        # Fully-qualified URL of an instance template to apply.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        # [Output Only] Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Fully-qualified URL of the instance template encountered while starting the
        # update.
        # Corresponds to the JSON property `oldInstanceTemplate`
        # @return [String]
        attr_accessor :old_instance_template
      
        # Parameters of the update process.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Policy]
        attr_accessor :policy
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess at when the update will be complete. This
        # number should be monotonically increasing as the update progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] The fully qualified URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Status of the update. Possible values are:
        # - "ROLLING_FORWARD": The update is going forward.
        # - "ROLLING_BACK": The update is being rolled back.
        # - "PAUSED": The update is temporarily paused (inactive).
        # - "ROLLED_OUT": The update is finished, all instances have been updated
        # successfully.
        # - "ROLLED_BACK": The update is finished, all instances have been reverted to
        # the previous template.
        # - "CANCELLED": The update is paused and no longer can be resumed, undefined
        # how many instances are running in which template.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # update.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] User who requested the update, for example: user@example.com.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @error = args[:error] if args.key?(:error)
          @id = args[:id] if args.key?(:id)
          @instance_group = args[:instance_group] if args.key?(:instance_group)
          @instance_group_manager = args[:instance_group_manager] if args.key?(:instance_group_manager)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
          @kind = args[:kind] if args.key?(:kind)
          @old_instance_template = args[:old_instance_template] if args.key?(:old_instance_template)
          @policy = args[:policy] if args.key?(:policy)
          @progress = args[:progress] if args.key?(:progress)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @user = args[:user] if args.key?(:user)
        end
        
        # [Output Only] Errors that occurred during the rolling update.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # Parameters of the update process.
        class Policy
          include Google::Apis::Core::Hashable
        
          # Number of instances to update before the updater pauses the rolling update.
          # Corresponds to the JSON property `autoPauseAfterInstances`
          # @return [Fixnum]
          attr_accessor :auto_pause_after_instances
        
          # The maximum amount of time that the updater waits for a HEALTHY state after
          # all of the update steps are complete. If the HEALTHY state is not received
          # before the deadline, the instance update is considered a failure.
          # Corresponds to the JSON property `instanceStartupTimeoutSec`
          # @return [Fixnum]
          attr_accessor :instance_startup_timeout_sec
        
          # The maximum number of instances that can be updated simultaneously. An
          # instance update is considered complete only after the instance is restarted
          # and initialized.
          # Corresponds to the JSON property `maxNumConcurrentInstances`
          # @return [Fixnum]
          attr_accessor :max_num_concurrent_instances
        
          # The maximum number of instance updates that can fail before the group update
          # is considered a failure. An instance update is considered failed if any of its
          # update actions (e.g. Stop call on Instance resource in Rolling Reboot) failed
          # with permanent failure, or if the instance is in an UNHEALTHY state after it
          # finishes all of the update actions.
          # Corresponds to the JSON property `maxNumFailedInstances`
          # @return [Fixnum]
          attr_accessor :max_num_failed_instances
        
          # The minimum amount of time that the updater spends to update each instance.
          # Update time is the time it takes to complete all update actions (e.g. Stop
          # call on Instance resource in Rolling Reboot), reboot, and initialize. If the
          # instance update finishes early, the updater pauses for the remainder of the
          # time before it starts the next instance update.
          # Corresponds to the JSON property `minInstanceUpdateTimeSec`
          # @return [Fixnum]
          attr_accessor :min_instance_update_time_sec
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @auto_pause_after_instances = args[:auto_pause_after_instances] if args.key?(:auto_pause_after_instances)
            @instance_startup_timeout_sec = args[:instance_startup_timeout_sec] if args.key?(:instance_startup_timeout_sec)
            @max_num_concurrent_instances = args[:max_num_concurrent_instances] if args.key?(:max_num_concurrent_instances)
            @max_num_failed_instances = args[:max_num_failed_instances] if args.key?(:max_num_failed_instances)
            @min_instance_update_time_sec = args[:min_instance_update_time_sec] if args.key?(:min_instance_update_time_sec)
          end
        end
      end
      
      # Response returned by List method.
      class RollingUpdateList
        include Google::Apis::Core::Hashable
      
        # Collection of requested updates.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate>]
        attr_accessor :items
      
        # [Output Only] Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The fully qualified URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
    end
  end
end
