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
    module StorageV1
      
      # A bucket.
      class Bucket
        include Google::Apis::Core::Hashable
      
        # Access controls on the bucket.
        # Corresponds to the JSON property `acl`
        # @return [Array<Google::Apis::StorageV1::BucketAccessControl>]
        attr_accessor :acl
      
        # The bucket's Cross-Origin Resource Sharing (CORS) configuration.
        # Corresponds to the JSON property `cors`
        # @return [Array<Google::Apis::StorageV1::Bucket::CorsConfiguration>]
        attr_accessor :cors_configurations
      
        # Default access controls to apply to new objects when no ACL is provided.
        # Corresponds to the JSON property `defaultObjectAcl`
        # @return [Array<Google::Apis::StorageV1::ObjectAccessControl>]
        attr_accessor :default_object_acl
      
        # HTTP 1.1 Entity tag for the bucket.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ID of the bucket.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of item this is. For buckets, this is always storage#bucket.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The bucket's lifecycle configuration. See lifecycle management for more
        # information.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::StorageV1::Bucket::Lifecycle]
        attr_accessor :lifecycle
      
        # The location of the bucket. Object data for objects in the bucket resides in
        # physical storage within this region. Defaults to US. See the developer's guide
        # for the authoritative list.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The bucket's logging configuration, which defines the destination bucket and
        # optional name prefix for the current bucket's logs.
        # Corresponds to the JSON property `logging`
        # @return [Google::Apis::StorageV1::Bucket::Logging]
        attr_accessor :logging
      
        # The metadata generation of this bucket.
        # Corresponds to the JSON property `metageneration`
        # @return [String]
        attr_accessor :metageneration
      
        # The name of the bucket.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The owner of the bucket. This is always the project team's owner group.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::StorageV1::Bucket::Owner]
        attr_accessor :owner
      
        # The project number of the project the bucket belongs to.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # The URI of this bucket.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The bucket's storage class. This defines how objects in the bucket are stored
        # and determines the SLA and the cost of storage. Values include STANDARD,
        # NEARLINE and DURABLE_REDUCED_AVAILABILITY. Defaults to STANDARD. For more
        # information, see storage classes.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        # The creation time of the bucket in RFC 3339 format.
        # Corresponds to the JSON property `timeCreated`
        # @return [DateTime]
        attr_accessor :time_created
      
        # The modification time of the bucket in RFC 3339 format.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # The bucket's versioning configuration.
        # Corresponds to the JSON property `versioning`
        # @return [Google::Apis::StorageV1::Bucket::Versioning]
        attr_accessor :versioning
      
        # The bucket's website configuration.
        # Corresponds to the JSON property `website`
        # @return [Google::Apis::StorageV1::Bucket::Website]
        attr_accessor :website
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl = args[:acl] unless args[:acl].nil?
          @cors_configurations = args[:cors_configurations] unless args[:cors_configurations].nil?
          @default_object_acl = args[:default_object_acl] unless args[:default_object_acl].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @lifecycle = args[:lifecycle] unless args[:lifecycle].nil?
          @location = args[:location] unless args[:location].nil?
          @logging = args[:logging] unless args[:logging].nil?
          @metageneration = args[:metageneration] unless args[:metageneration].nil?
          @name = args[:name] unless args[:name].nil?
          @owner = args[:owner] unless args[:owner].nil?
          @project_number = args[:project_number] unless args[:project_number].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @storage_class = args[:storage_class] unless args[:storage_class].nil?
          @time_created = args[:time_created] unless args[:time_created].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @versioning = args[:versioning] unless args[:versioning].nil?
          @website = args[:website] unless args[:website].nil?
        end
        
        # 
        class CorsConfiguration
          include Google::Apis::Core::Hashable
        
          # The value, in seconds, to return in the  Access-Control-Max-Age header used in
          # preflight responses.
          # Corresponds to the JSON property `maxAgeSeconds`
          # @return [Fixnum]
          attr_accessor :max_age_seconds
        
          # The list of HTTP methods on which to include CORS response headers, (GET,
          # OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "
          # any method".
          # Corresponds to the JSON property `method`
          # @return [Array<String>]
          attr_accessor :http_method
        
          # The list of Origins eligible to receive CORS response headers. Note: "*" is
          # permitted in the list of origins, and means "any Origin".
          # Corresponds to the JSON property `origin`
          # @return [Array<String>]
          attr_accessor :origin
        
          # The list of HTTP headers other than the simple response headers to give
          # permission for the user-agent to share across domains.
          # Corresponds to the JSON property `responseHeader`
          # @return [Array<String>]
          attr_accessor :response_header
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @max_age_seconds = args[:max_age_seconds] unless args[:max_age_seconds].nil?
            @http_method = args[:http_method] unless args[:http_method].nil?
            @origin = args[:origin] unless args[:origin].nil?
            @response_header = args[:response_header] unless args[:response_header].nil?
          end
        end
        
        # The bucket's lifecycle configuration. See lifecycle management for more
        # information.
        class Lifecycle
          include Google::Apis::Core::Hashable
        
          # A lifecycle management rule, which is made of an action to take and the
          # condition(s) under which the action will be taken.
          # Corresponds to the JSON property `rule`
          # @return [Array<Google::Apis::StorageV1::Bucket::Lifecycle::Rule>]
          attr_accessor :rule
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @rule = args[:rule] unless args[:rule].nil?
          end
          
          # 
          class Rule
            include Google::Apis::Core::Hashable
          
            # The action to take.
            # Corresponds to the JSON property `action`
            # @return [Google::Apis::StorageV1::Bucket::Lifecycle::Rule::Action]
            attr_accessor :action
          
            # The condition(s) under which the action will be taken.
            # Corresponds to the JSON property `condition`
            # @return [Google::Apis::StorageV1::Bucket::Lifecycle::Rule::Condition]
            attr_accessor :condition
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @action = args[:action] unless args[:action].nil?
              @condition = args[:condition] unless args[:condition].nil?
            end
            
            # The action to take.
            class Action
              include Google::Apis::Core::Hashable
            
              # Type of the action. Currently, only Delete is supported.
              # Corresponds to the JSON property `type`
              # @return [String]
              attr_accessor :type
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @type = args[:type] unless args[:type].nil?
              end
            end
            
            # The condition(s) under which the action will be taken.
            class Condition
              include Google::Apis::Core::Hashable
            
              # Age of an object (in days). This condition is satisfied when an object reaches
              # the specified age.
              # Corresponds to the JSON property `age`
              # @return [Fixnum]
              attr_accessor :age
            
              # A date in RFC 3339 format with only the date part (for instance, "2013-01-15").
              # This condition is satisfied when an object is created before midnight of the
              # specified date in UTC.
              # Corresponds to the JSON property `createdBefore`
              # @return [Date]
              attr_accessor :created_before
            
              # Relevant only for versioned objects. If the value is true, this condition
              # matches live objects; if the value is false, it matches archived objects.
              # Corresponds to the JSON property `isLive`
              # @return [Boolean]
              attr_accessor :is_live
              alias_method :is_live?, :is_live
            
              # Relevant only for versioned objects. If the value is N, this condition is
              # satisfied when there are at least N versions (including the live version)
              # newer than this version of the object.
              # Corresponds to the JSON property `numNewerVersions`
              # @return [Fixnum]
              attr_accessor :num_newer_versions
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @age = args[:age] unless args[:age].nil?
                @created_before = args[:created_before] unless args[:created_before].nil?
                @is_live = args[:is_live] unless args[:is_live].nil?
                @num_newer_versions = args[:num_newer_versions] unless args[:num_newer_versions].nil?
              end
            end
          end
        end
        
        # The bucket's logging configuration, which defines the destination bucket and
        # optional name prefix for the current bucket's logs.
        class Logging
          include Google::Apis::Core::Hashable
        
          # The destination bucket where the current bucket's logs should be placed.
          # Corresponds to the JSON property `logBucket`
          # @return [String]
          attr_accessor :log_bucket
        
          # A prefix for log object names.
          # Corresponds to the JSON property `logObjectPrefix`
          # @return [String]
          attr_accessor :log_object_prefix
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @log_bucket = args[:log_bucket] unless args[:log_bucket].nil?
            @log_object_prefix = args[:log_object_prefix] unless args[:log_object_prefix].nil?
          end
        end
        
        # The owner of the bucket. This is always the project team's owner group.
        class Owner
          include Google::Apis::Core::Hashable
        
          # The entity, in the form project-owner-projectId.
          # Corresponds to the JSON property `entity`
          # @return [String]
          attr_accessor :entity
        
          # The ID for the entity.
          # Corresponds to the JSON property `entityId`
          # @return [String]
          attr_accessor :entity_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @entity = args[:entity] unless args[:entity].nil?
            @entity_id = args[:entity_id] unless args[:entity_id].nil?
          end
        end
        
        # The bucket's versioning configuration.
        class Versioning
          include Google::Apis::Core::Hashable
        
          # While set to true, versioning is fully enabled for this bucket.
          # Corresponds to the JSON property `enabled`
          # @return [Boolean]
          attr_accessor :enabled
          alias_method :enabled?, :enabled
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @enabled = args[:enabled] unless args[:enabled].nil?
          end
        end
        
        # The bucket's website configuration.
        class Website
          include Google::Apis::Core::Hashable
        
          # Behaves as the bucket's directory index where missing objects are treated as
          # potential directories.
          # Corresponds to the JSON property `mainPageSuffix`
          # @return [String]
          attr_accessor :main_page_suffix
        
          # The custom object to return when a requested resource is not found.
          # Corresponds to the JSON property `notFoundPage`
          # @return [String]
          attr_accessor :not_found_page
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @main_page_suffix = args[:main_page_suffix] unless args[:main_page_suffix].nil?
            @not_found_page = args[:not_found_page] unless args[:not_found_page].nil?
          end
        end
      end
      
      # An access-control entry.
      class BucketAccessControl
        include Google::Apis::Core::Hashable
      
        # The name of the bucket.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # The domain associated with the entity, if any.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The email address associated with the entity, if any.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The entity holding the permission, in one of the following forms:
        # - user-userId
        # - user-email
        # - group-groupId
        # - group-email
        # - domain-domain
        # - project-team-projectId
        # - allUsers
        # - allAuthenticatedUsers Examples:
        # - The user liz@example.com would be user-liz@example.com.
        # - The group example@googlegroups.com would be group-example@googlegroups.com.
        # - To refer to all members of the Google Apps for Business domain example.com,
        # the entity would be domain-example.com.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # The ID for the entity, if any.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # HTTP 1.1 Entity tag for the access-control entry.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ID of the access-control entry.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of item this is. For bucket access control entries, this is always
        # storage#bucketAccessControl.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The project team associated with the entity, if any.
        # Corresponds to the JSON property `projectTeam`
        # @return [Google::Apis::StorageV1::BucketAccessControl::ProjectTeam]
        attr_accessor :project_team
      
        # The access permission for the entity. Can be READER, WRITER, or OWNER.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The link to this access-control entry.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] unless args[:bucket].nil?
          @domain = args[:domain] unless args[:domain].nil?
          @email = args[:email] unless args[:email].nil?
          @entity = args[:entity] unless args[:entity].nil?
          @entity_id = args[:entity_id] unless args[:entity_id].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @project_team = args[:project_team] unless args[:project_team].nil?
          @role = args[:role] unless args[:role].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
        
        # The project team associated with the entity, if any.
        class ProjectTeam
          include Google::Apis::Core::Hashable
        
          # The project number.
          # Corresponds to the JSON property `projectNumber`
          # @return [String]
          attr_accessor :project_number
        
          # The team. Can be owners, editors, or viewers.
          # Corresponds to the JSON property `team`
          # @return [String]
          attr_accessor :team
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @project_number = args[:project_number] unless args[:project_number].nil?
            @team = args[:team] unless args[:team].nil?
          end
        end
      end
      
      # An access-control list.
      class BucketAccessControls
        include Google::Apis::Core::Hashable
      
        # The list of items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::StorageV1::BucketAccessControl>]
        attr_accessor :items
      
        # The kind of item this is. For lists of bucket access control entries, this is
        # always storage#bucketAccessControls.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A list of buckets.
      class Buckets
        include Google::Apis::Core::Hashable
      
        # The list of items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::StorageV1::Bucket>]
        attr_accessor :items
      
        # The kind of item this is. For lists of buckets, this is always storage#buckets.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # An notification channel used to watch for resource changes.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The address where notifications are delivered for this channel.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Date and time of notification channel expiration, expressed as a Unix
        # timestamp, in milliseconds. Optional.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource. Value: the fixed string "api#channel".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # A Boolean value to indicate whether payload is wanted. Optional.
        # Corresponds to the JSON property `payload`
        # @return [Boolean]
        attr_accessor :payload
        alias_method :payload?, :payload
      
        # An opaque ID that identifies the resource being watched on this channel.
        # Stable across different API versions.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # A version-specific identifier for the watched resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # An arbitrary string delivered to the target address with each notification
        # delivered over this channel. Optional.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of delivery mechanism used for this channel.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @expiration = args[:expiration] unless args[:expiration].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @params = args[:params] unless args[:params].nil?
          @payload = args[:payload] unless args[:payload].nil?
          @resource_id = args[:resource_id] unless args[:resource_id].nil?
          @resource_uri = args[:resource_uri] unless args[:resource_uri].nil?
          @token = args[:token] unless args[:token].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A Compose request.
      class ComposeRequest
        include Google::Apis::Core::Hashable
      
        # An object.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::StorageV1::Object]
        attr_accessor :destination
      
        # The kind of item this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of source objects that will be concatenated into a single object.
        # Corresponds to the JSON property `sourceObjects`
        # @return [Array<Google::Apis::StorageV1::ComposeRequest::SourceObject>]
        attr_accessor :source_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] unless args[:destination].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @source_objects = args[:source_objects] unless args[:source_objects].nil?
        end
        
        # 
        class SourceObject
          include Google::Apis::Core::Hashable
        
          # The generation of this object to use as the source.
          # Corresponds to the JSON property `generation`
          # @return [String]
          attr_accessor :generation
        
          # The source object's name. The source object's bucket is implicitly the
          # destination bucket.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Conditions that must be met for this operation to execute.
          # Corresponds to the JSON property `objectPreconditions`
          # @return [Google::Apis::StorageV1::ComposeRequest::SourceObject::ObjectPreconditions]
          attr_accessor :object_preconditions
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @generation = args[:generation] unless args[:generation].nil?
            @name = args[:name] unless args[:name].nil?
            @object_preconditions = args[:object_preconditions] unless args[:object_preconditions].nil?
          end
          
          # Conditions that must be met for this operation to execute.
          class ObjectPreconditions
            include Google::Apis::Core::Hashable
          
            # Only perform the composition if the generation of the source object that would
            # be used matches this value. If this value and a generation are both specified,
            # they must be the same value or the call will fail.
            # Corresponds to the JSON property `ifGenerationMatch`
            # @return [String]
            attr_accessor :if_generation_match
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @if_generation_match = args[:if_generation_match] unless args[:if_generation_match].nil?
            end
          end
        end
      end
      
      # An object.
      class Object
        include Google::Apis::Core::Hashable
      
        # Access controls on the object.
        # Corresponds to the JSON property `acl`
        # @return [Array<Google::Apis::StorageV1::ObjectAccessControl>]
        attr_accessor :acl
      
        # The name of the bucket containing this object.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Cache-Control directive for the object data.
        # Corresponds to the JSON property `cacheControl`
        # @return [String]
        attr_accessor :cache_control
      
        # Number of underlying components that make up this object. Components are
        # accumulated by compose operations.
        # Corresponds to the JSON property `componentCount`
        # @return [Fixnum]
        attr_accessor :component_count
      
        # Content-Disposition of the object data.
        # Corresponds to the JSON property `contentDisposition`
        # @return [String]
        attr_accessor :content_disposition
      
        # Content-Encoding of the object data.
        # Corresponds to the JSON property `contentEncoding`
        # @return [String]
        attr_accessor :content_encoding
      
        # Content-Language of the object data.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Content-Type of the object data.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in
        # big-endian byte order. For more information about using the CRC32c checksum,
        # see Hashes and ETags: Best Practices.
        # Corresponds to the JSON property `crc32c`
        # @return [String]
        attr_accessor :crc32c
      
        # Metadata of customer-supplied encryption key, if the object is encrypted by
        # such a key.
        # Corresponds to the JSON property `customerEncryption`
        # @return [Google::Apis::StorageV1::Object::CustomerEncryption]
        attr_accessor :customer_encryption
      
        # HTTP 1.1 Entity tag for the object.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The content generation of this object. Used for object versioning.
        # Corresponds to the JSON property `generation`
        # @return [String]
        attr_accessor :generation
      
        # The ID of the object.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of item this is. For objects, this is always storage#object.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # MD5 hash of the data; encoded using base64. For more information about using
        # the MD5 hash, see Hashes and ETags: Best Practices.
        # Corresponds to the JSON property `md5Hash`
        # @return [String]
        attr_accessor :md5_hash
      
        # Media download link.
        # Corresponds to the JSON property `mediaLink`
        # @return [String]
        attr_accessor :media_link
      
        # User-provided metadata, in key/value pairs.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The version of the metadata for this object at this generation. Used for
        # preconditions and for detecting changes in metadata. A metageneration number
        # is only meaningful in the context of a particular generation of a particular
        # object.
        # Corresponds to the JSON property `metageneration`
        # @return [String]
        attr_accessor :metageneration
      
        # The name of this object. Required if not specified by URL parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The owner of the object. This will always be the uploader of the object.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::StorageV1::Object::Owner]
        attr_accessor :owner
      
        # The link to this object.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Content-Length of the data in bytes.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # Storage class of the object.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        # The creation time of the object in RFC 3339 format.
        # Corresponds to the JSON property `timeCreated`
        # @return [DateTime]
        attr_accessor :time_created
      
        # The deletion time of the object in RFC 3339 format. Will be returned if and
        # only if this version of the object has been deleted.
        # Corresponds to the JSON property `timeDeleted`
        # @return [DateTime]
        attr_accessor :time_deleted
      
        # The modification time of the object metadata in RFC 3339 format.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl = args[:acl] unless args[:acl].nil?
          @bucket = args[:bucket] unless args[:bucket].nil?
          @cache_control = args[:cache_control] unless args[:cache_control].nil?
          @component_count = args[:component_count] unless args[:component_count].nil?
          @content_disposition = args[:content_disposition] unless args[:content_disposition].nil?
          @content_encoding = args[:content_encoding] unless args[:content_encoding].nil?
          @content_language = args[:content_language] unless args[:content_language].nil?
          @content_type = args[:content_type] unless args[:content_type].nil?
          @crc32c = args[:crc32c] unless args[:crc32c].nil?
          @customer_encryption = args[:customer_encryption] unless args[:customer_encryption].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @generation = args[:generation] unless args[:generation].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @md5_hash = args[:md5_hash] unless args[:md5_hash].nil?
          @media_link = args[:media_link] unless args[:media_link].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @metageneration = args[:metageneration] unless args[:metageneration].nil?
          @name = args[:name] unless args[:name].nil?
          @owner = args[:owner] unless args[:owner].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @size = args[:size] unless args[:size].nil?
          @storage_class = args[:storage_class] unless args[:storage_class].nil?
          @time_created = args[:time_created] unless args[:time_created].nil?
          @time_deleted = args[:time_deleted] unless args[:time_deleted].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
        
        # Metadata of customer-supplied encryption key, if the object is encrypted by
        # such a key.
        class CustomerEncryption
          include Google::Apis::Core::Hashable
        
          # The encryption algorithm.
          # Corresponds to the JSON property `encryptionAlgorithm`
          # @return [String]
          attr_accessor :encryption_algorithm
        
          # SHA256 hash value of the encryption key.
          # Corresponds to the JSON property `keySha256`
          # @return [String]
          attr_accessor :key_sha256
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @encryption_algorithm = args[:encryption_algorithm] unless args[:encryption_algorithm].nil?
            @key_sha256 = args[:key_sha256] unless args[:key_sha256].nil?
          end
        end
        
        # The owner of the object. This will always be the uploader of the object.
        class Owner
          include Google::Apis::Core::Hashable
        
          # The entity, in the form user-userId.
          # Corresponds to the JSON property `entity`
          # @return [String]
          attr_accessor :entity
        
          # The ID for the entity.
          # Corresponds to the JSON property `entityId`
          # @return [String]
          attr_accessor :entity_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @entity = args[:entity] unless args[:entity].nil?
            @entity_id = args[:entity_id] unless args[:entity_id].nil?
          end
        end
      end
      
      # An access-control entry.
      class ObjectAccessControl
        include Google::Apis::Core::Hashable
      
        # The name of the bucket.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # The domain associated with the entity, if any.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The email address associated with the entity, if any.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The entity holding the permission, in one of the following forms:
        # - user-userId
        # - user-email
        # - group-groupId
        # - group-email
        # - domain-domain
        # - project-team-projectId
        # - allUsers
        # - allAuthenticatedUsers Examples:
        # - The user liz@example.com would be user-liz@example.com.
        # - The group example@googlegroups.com would be group-example@googlegroups.com.
        # - To refer to all members of the Google Apps for Business domain example.com,
        # the entity would be domain-example.com.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # The ID for the entity, if any.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # HTTP 1.1 Entity tag for the access-control entry.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The content generation of the object.
        # Corresponds to the JSON property `generation`
        # @return [String]
        attr_accessor :generation
      
        # The ID of the access-control entry.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of item this is. For object access control entries, this is always
        # storage#objectAccessControl.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the object.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        # The project team associated with the entity, if any.
        # Corresponds to the JSON property `projectTeam`
        # @return [Google::Apis::StorageV1::ObjectAccessControl::ProjectTeam]
        attr_accessor :project_team
      
        # The access permission for the entity. Can be READER or OWNER.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The link to this access-control entry.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] unless args[:bucket].nil?
          @domain = args[:domain] unless args[:domain].nil?
          @email = args[:email] unless args[:email].nil?
          @entity = args[:entity] unless args[:entity].nil?
          @entity_id = args[:entity_id] unless args[:entity_id].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @generation = args[:generation] unless args[:generation].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @object = args[:object] unless args[:object].nil?
          @project_team = args[:project_team] unless args[:project_team].nil?
          @role = args[:role] unless args[:role].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
        
        # The project team associated with the entity, if any.
        class ProjectTeam
          include Google::Apis::Core::Hashable
        
          # The project number.
          # Corresponds to the JSON property `projectNumber`
          # @return [String]
          attr_accessor :project_number
        
          # The team. Can be owners, editors, or viewers.
          # Corresponds to the JSON property `team`
          # @return [String]
          attr_accessor :team
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @project_number = args[:project_number] unless args[:project_number].nil?
            @team = args[:team] unless args[:team].nil?
          end
        end
      end
      
      # An access-control list.
      class ObjectAccessControls
        include Google::Apis::Core::Hashable
      
        # The list of items.
        # Corresponds to the JSON property `items`
        # @return [Array<Object>]
        attr_accessor :items
      
        # The kind of item this is. For lists of object access control entries, this is
        # always storage#objectAccessControls.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A list of objects.
      class Objects
        include Google::Apis::Core::Hashable
      
        # The list of items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::StorageV1::Object>]
        attr_accessor :items
      
        # The kind of item this is. For lists of objects, this is always storage#objects.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of prefixes of objects matching-but-not-listed up to and including
        # the requested delimiter.
        # Corresponds to the JSON property `prefixes`
        # @return [Array<String>]
        attr_accessor :prefixes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @prefixes = args[:prefixes] unless args[:prefixes].nil?
        end
      end
      
      # A rewrite response.
      class RewriteResponse
        include Google::Apis::Core::Hashable
      
        # true if the copy is finished; otherwise, false if the copy is in progress.
        # This property is always present in the response.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The kind of item this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The total size of the object being copied in bytes. This property is always
        # present in the response.
        # Corresponds to the JSON property `objectSize`
        # @return [String]
        attr_accessor :object_size
      
        # An object.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::StorageV1::Object]
        attr_accessor :resource
      
        # A token to use in subsequent requests to continue copying data. This token is
        # present in the response only when there is more data to copy.
        # Corresponds to the JSON property `rewriteToken`
        # @return [String]
        attr_accessor :rewrite_token
      
        # The total bytes written so far, which can be used to provide a waiting user
        # with a progress indicator. This property is always present in the response.
        # Corresponds to the JSON property `totalBytesRewritten`
        # @return [String]
        attr_accessor :total_bytes_rewritten
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] unless args[:done].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @object_size = args[:object_size] unless args[:object_size].nil?
          @resource = args[:resource] unless args[:resource].nil?
          @rewrite_token = args[:rewrite_token] unless args[:rewrite_token].nil?
          @total_bytes_rewritten = args[:total_bytes_rewritten] unless args[:total_bytes_rewritten].nil?
        end
      end
    end
  end
end
