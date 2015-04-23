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
      
      class BucketRepresentation < Google::Apis::Core::JsonRepresentation
        
        class CorRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class LifecycleRepresentation < Google::Apis::Core::JsonRepresentation
          
          class RuleRepresentation < Google::Apis::Core::JsonRepresentation
            
            class ActionRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class ConditionRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
          end
        end
        
        class LoggingRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class OwnerRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class VersioningRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class WebsiteRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class BucketAccessControlRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ProjectTeamRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class BucketAccessControlsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BucketsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ComposeRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
        class SourceObjectRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ObjectPreconditionsRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class ObjectRepresentation < Google::Apis::Core::JsonRepresentation
        
        class OwnerRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ObjectAccessControlRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ProjectTeamRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ObjectAccessControlsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ObjectsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RewriteResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class BucketRepresentation < Google::Apis::Core::JsonRepresentation
        class CorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class LifecycleRepresentation < Google::Apis::Core::JsonRepresentation; end
        class LoggingRepresentation < Google::Apis::Core::JsonRepresentation; end
        class OwnerRepresentation < Google::Apis::Core::JsonRepresentation; end
        class VersioningRepresentation < Google::Apis::Core::JsonRepresentation; end
        class WebsiteRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        collection :acl, as: 'acl', class: Google::Apis::StorageV1::BucketAccessControl, decorator: Google::Apis::StorageV1::BucketAccessControlRepresentation
        
        
        collection :cors, as: 'cors', class: Google::Apis::StorageV1::Bucket::Cor, decorator: Google::Apis::StorageV1::BucketRepresentation::CorRepresentation
        
        
        collection :default_object_acl, as: 'defaultObjectAcl', class: Google::Apis::StorageV1::ObjectAccessControl, decorator: Google::Apis::StorageV1::ObjectAccessControlRepresentation
        
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :lifecycle, as: 'lifecycle', class: Google::Apis::StorageV1::Bucket::Lifecycle, decorator: Google::Apis::StorageV1::BucketRepresentation::LifecycleRepresentation
        
        property :location, as: 'location'
        property :logging, as: 'logging', class: Google::Apis::StorageV1::Bucket::Logging, decorator: Google::Apis::StorageV1::BucketRepresentation::LoggingRepresentation
        
        property :metageneration, as: 'metageneration'
        property :name, as: 'name'
        property :owner, as: 'owner', class: Google::Apis::StorageV1::Bucket::Owner, decorator: Google::Apis::StorageV1::BucketRepresentation::OwnerRepresentation
        
        property :project_number, as: 'projectNumber'
        property :self_link, as: 'selfLink'
        property :storage_class, as: 'storageClass'
        property :time_created, as: 'timeCreated', type: DateTime
        property :versioning, as: 'versioning', class: Google::Apis::StorageV1::Bucket::Versioning, decorator: Google::Apis::StorageV1::BucketRepresentation::VersioningRepresentation
        
        property :website, as: 'website', class: Google::Apis::StorageV1::Bucket::Website, decorator: Google::Apis::StorageV1::BucketRepresentation::WebsiteRepresentation
        
        
        
        # @private
        class CorRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :max_age_seconds, as: 'maxAgeSeconds'
          collection :method_prop, as: 'method'
          
          collection :origin, as: 'origin'
          
          collection :response_header, as: 'responseHeader'
        end
        
        # @private
        class LifecycleRepresentation < Google::Apis::Core::JsonRepresentation
          class RuleRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          collection :rule, as: 'rule', class: Google::Apis::StorageV1::Bucket::Lifecycle::Rule, decorator: Google::Apis::StorageV1::BucketRepresentation::LifecycleRepresentation::RuleRepresentation
          
          
          
          
          # @private
          class RuleRepresentation < Google::Apis::Core::JsonRepresentation
            class ActionRepresentation < Google::Apis::Core::JsonRepresentation; end
            class ConditionRepresentation < Google::Apis::Core::JsonRepresentation; end
            
            property :action, as: 'action', class: Google::Apis::StorageV1::Bucket::Lifecycle::Rule::Action, decorator: Google::Apis::StorageV1::BucketRepresentation::LifecycleRepresentation::RuleRepresentation::ActionRepresentation
            
            property :condition, as: 'condition', class: Google::Apis::StorageV1::Bucket::Lifecycle::Rule::Condition, decorator: Google::Apis::StorageV1::BucketRepresentation::LifecycleRepresentation::RuleRepresentation::ConditionRepresentation
            
            
            
            # @private
            class ActionRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :type, as: 'type'
            end
            
            # @private
            class ConditionRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :age, as: 'age'
              property :created_before, as: 'createdBefore', type: Date
              property :is_live, as: 'isLive'
              property :num_newer_versions, as: 'numNewerVersions'
            end
          end
        end
        
        # @private
        class LoggingRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :log_bucket, as: 'logBucket'
          property :log_object_prefix, as: 'logObjectPrefix'
        end
        
        # @private
        class OwnerRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :entity, as: 'entity'
          property :entity_id, as: 'entityId'
        end
        
        # @private
        class VersioningRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :enabled, as: 'enabled'
        end
        
        # @private
        class WebsiteRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :main_page_suffix, as: 'mainPageSuffix'
          property :not_found_page, as: 'notFoundPage'
        end
      end

      # @private
      class BucketAccessControlRepresentation < Google::Apis::Core::JsonRepresentation
        class ProjectTeamRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :bucket, as: 'bucket'
        property :domain, as: 'domain'
        property :email, as: 'email'
        property :entity, as: 'entity'
        property :entity_id, as: 'entityId'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :project_team, as: 'projectTeam', class: Google::Apis::StorageV1::BucketAccessControl::ProjectTeam, decorator: Google::Apis::StorageV1::BucketAccessControlRepresentation::ProjectTeamRepresentation
        
        property :role, as: 'role'
        property :self_link, as: 'selfLink'
        
        
        # @private
        class ProjectTeamRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :project_number, as: 'projectNumber'
          property :team, as: 'team'
        end
      end

      # @private
      class BucketAccessControlsRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::StorageV1::BucketAccessControl, decorator: Google::Apis::StorageV1::BucketAccessControlRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class BucketsRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::StorageV1::Bucket, decorator: Google::Apis::StorageV1::BucketRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :address, as: 'address'
        property :expiration, as: 'expiration'
        property :id, as: 'id'
        property :kind, as: 'kind'
        hash :params, as: 'params'
        
        property :payload, as: 'payload'
        property :resource_id, as: 'resourceId'
        property :resource_uri, as: 'resourceUri'
        property :token, as: 'token'
        property :type, as: 'type'
      end

      # @private
      class ComposeRequestRepresentation < Google::Apis::Core::JsonRepresentation
        class SourceObjectRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :destination, as: 'destination', class: Google::Apis::StorageV1::Object, decorator: Google::Apis::StorageV1::ObjectRepresentation
        
        property :kind, as: 'kind'
        collection :source_objects, as: 'sourceObjects', class: Google::Apis::StorageV1::ComposeRequest::SourceObject, decorator: Google::Apis::StorageV1::ComposeRequestRepresentation::SourceObjectRepresentation
        
        
        
        
        # @private
        class SourceObjectRepresentation < Google::Apis::Core::JsonRepresentation
          class ObjectPreconditionsRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :generation, as: 'generation'
          property :name, as: 'name'
          property :object_preconditions, as: 'objectPreconditions', class: Google::Apis::StorageV1::ComposeRequest::SourceObject::ObjectPreconditions, decorator: Google::Apis::StorageV1::ComposeRequestRepresentation::SourceObjectRepresentation::ObjectPreconditionsRepresentation
          
          
          
          # @private
          class ObjectPreconditionsRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :if_generation_match, as: 'ifGenerationMatch'
          end
        end
      end

      # @private
      class ObjectRepresentation < Google::Apis::Core::JsonRepresentation
        class OwnerRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        collection :acl, as: 'acl', class: Google::Apis::StorageV1::ObjectAccessControl, decorator: Google::Apis::StorageV1::ObjectAccessControlRepresentation
        
        
        property :bucket, as: 'bucket'
        property :cache_control, as: 'cacheControl'
        property :component_count, as: 'componentCount'
        property :content_disposition, as: 'contentDisposition'
        property :content_encoding, as: 'contentEncoding'
        property :content_language, as: 'contentLanguage'
        property :content_type, as: 'contentType'
        property :crc32c, as: 'crc32c'
        property :etag, as: 'etag'
        property :generation, as: 'generation'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :md5_hash, as: 'md5Hash'
        property :media_link, as: 'mediaLink'
        hash :metadata, as: 'metadata'
        
        property :metageneration, as: 'metageneration'
        property :name, as: 'name'
        property :owner, as: 'owner', class: Google::Apis::StorageV1::Object::Owner, decorator: Google::Apis::StorageV1::ObjectRepresentation::OwnerRepresentation
        
        property :self_link, as: 'selfLink'
        property :size, as: 'size'
        property :storage_class, as: 'storageClass'
        property :time_deleted, as: 'timeDeleted', type: DateTime
        property :updated, as: 'updated', type: DateTime
        
        
        # @private
        class OwnerRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :entity, as: 'entity'
          property :entity_id, as: 'entityId'
        end
      end

      # @private
      class ObjectAccessControlRepresentation < Google::Apis::Core::JsonRepresentation
        class ProjectTeamRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :bucket, as: 'bucket'
        property :domain, as: 'domain'
        property :email, as: 'email'
        property :entity, as: 'entity'
        property :entity_id, as: 'entityId'
        property :etag, as: 'etag'
        property :generation, as: 'generation'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :object, as: 'object'
        property :project_team, as: 'projectTeam', class: Google::Apis::StorageV1::ObjectAccessControl::ProjectTeam, decorator: Google::Apis::StorageV1::ObjectAccessControlRepresentation::ProjectTeamRepresentation
        
        property :role, as: 'role'
        property :self_link, as: 'selfLink'
        
        
        # @private
        class ProjectTeamRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :project_number, as: 'projectNumber'
          property :team, as: 'team'
        end
      end

      # @private
      class ObjectAccessControlsRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items'
        
        property :kind, as: 'kind'
      end

      # @private
      class ObjectsRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::StorageV1::Object, decorator: Google::Apis::StorageV1::ObjectRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :prefixes, as: 'prefixes'
      end

      # @private
      class RewriteResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :done, as: 'done'
        property :kind, as: 'kind'
        property :object_size, as: 'objectSize'
        property :resource, as: 'resource', class: Google::Apis::StorageV1::Object, decorator: Google::Apis::StorageV1::ObjectRepresentation
        
        property :rewrite_token, as: 'rewriteToken'
        property :total_bytes_rewritten, as: 'totalBytesRewritten'
      end
    end
  end
end
