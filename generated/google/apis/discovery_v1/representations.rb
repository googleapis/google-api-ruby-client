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
    module DiscoveryV1
      class DirectoryListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JsonSchemaRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RestDescriptionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RestMethodRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RestResourceRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class DirectoryListRepresentation < Google::Apis::Core::JsonRepresentation
        property :discovery_version, as: 'discoveryVersion'
        collection :items, as: 'items', class: Google::Apis::DiscoveryV1::DirectoryList::Item do
          property :description, as: 'description'
          property :discovery_link, as: 'discoveryLink'
          property :discovery_rest_url, as: 'discoveryRestUrl'
          property :documentation_link, as: 'documentationLink'
          property :icons, as: 'icons', class: Google::Apis::DiscoveryV1::DirectoryList::Item::Icons do
            property :x16, as: 'x16'
            property :x32, as: 'x32'
          end
          
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :labels, as: 'labels'
          
          property :name, as: 'name'
          property :preferred, as: 'preferred'
          property :title, as: 'title'
          property :version, as: 'version'
        end
        
        
        property :kind, as: 'kind'
      end

      # @private
      class JsonSchemaRepresentation < Google::Apis::Core::JsonRepresentation
        property :_ref, as: '$ref'
        property :additional_properties, as: 'additionalProperties', class: Google::Apis::DiscoveryV1::JsonSchema, decorator: Google::Apis::DiscoveryV1::JsonSchemaRepresentation
        
        property :annotations, as: 'annotations', class: Google::Apis::DiscoveryV1::JsonSchema::Annotations do
          collection :required, as: 'required'
        end
        
        property :default, as: 'default'
        property :description, as: 'description'
        collection :enum, as: 'enum'
        
        collection :enum_descriptions, as: 'enumDescriptions'
        
        property :format, as: 'format'
        property :id, as: 'id'
        property :items, as: 'items', class: Google::Apis::DiscoveryV1::JsonSchema, decorator: Google::Apis::DiscoveryV1::JsonSchemaRepresentation
        
        property :location, as: 'location'
        property :maximum, as: 'maximum'
        property :minimum, as: 'minimum'
        property :pattern, as: 'pattern'
        hash :properties, as: 'properties', class: Google::Apis::DiscoveryV1::JsonSchema, decorator: Google::Apis::DiscoveryV1::JsonSchemaRepresentation
        
        
        property :read_only, as: 'readOnly'
        property :repeated, as: 'repeated'
        property :required, as: 'required'
        property :type, as: 'type'
        property :variant, as: 'variant', class: Google::Apis::DiscoveryV1::JsonSchema::Variant do
          property :discriminant, as: 'discriminant'
          collection :map, as: 'map', class: Google::Apis::DiscoveryV1::JsonSchema::Variant::Map do
            property :_ref, as: '$ref'
            property :type_value, as: 'type_value'
          end
        end
      end

      # @private
      class RestDescriptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :auth, as: 'auth', class: Google::Apis::DiscoveryV1::RestDescription::Auth do
          property :oauth2, as: 'oauth2', class: Google::Apis::DiscoveryV1::RestDescription::Auth::Oauth2 do
            hash :scopes, as: 'scopes', class: Google::Apis::DiscoveryV1::RestDescription::Auth::Oauth2::Scope do
              property :description, as: 'description'
            end
          end
        end
        
        property :base_path, as: 'basePath'
        property :base_url, as: 'baseUrl'
        property :batch_path, as: 'batchPath'
        property :canonical_name, as: 'canonicalName'
        property :description, as: 'description'
        property :discovery_version, as: 'discoveryVersion'
        property :documentation_link, as: 'documentationLink'
        property :etag, as: 'etag'
        collection :features, as: 'features'
        
        property :icons, as: 'icons', class: Google::Apis::DiscoveryV1::RestDescription::Icons do
          property :x16, as: 'x16'
          property :x32, as: 'x32'
        end
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :labels, as: 'labels'
        
        hash :methods_prop, as: 'methods', class: Google::Apis::DiscoveryV1::RestMethod, decorator: Google::Apis::DiscoveryV1::RestMethodRepresentation
        
        
        property :name, as: 'name'
        property :owner_domain, as: 'ownerDomain'
        property :owner_name, as: 'ownerName'
        property :package_path, as: 'packagePath'
        hash :parameters, as: 'parameters', class: Google::Apis::DiscoveryV1::JsonSchema, decorator: Google::Apis::DiscoveryV1::JsonSchemaRepresentation
        
        
        property :protocol, as: 'protocol'
        hash :resources, as: 'resources', class: Google::Apis::DiscoveryV1::RestResource, decorator: Google::Apis::DiscoveryV1::RestResourceRepresentation
        
        
        property :revision, as: 'revision'
        property :root_url, as: 'rootUrl'
        hash :schemas, as: 'schemas', class: Google::Apis::DiscoveryV1::JsonSchema, decorator: Google::Apis::DiscoveryV1::JsonSchemaRepresentation
        
        
        property :service_path, as: 'servicePath'
        property :title, as: 'title'
        property :version, as: 'version'
      end

      # @private
      class RestMethodRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :etag_required, as: 'etagRequired'
        property :http_method, as: 'httpMethod'
        property :id, as: 'id'
        property :media_upload, as: 'mediaUpload', class: Google::Apis::DiscoveryV1::RestMethod::MediaUpload do
          collection :accept, as: 'accept'
          
          property :max_size, as: 'maxSize'
          property :protocols, as: 'protocols', class: Google::Apis::DiscoveryV1::RestMethod::MediaUpload::Protocols do
            property :resumable, as: 'resumable', class: Google::Apis::DiscoveryV1::RestMethod::MediaUpload::Protocols::Resumable do
              property :multipart, as: 'multipart'
              property :path, as: 'path'
            end
            
            property :simple, as: 'simple', class: Google::Apis::DiscoveryV1::RestMethod::MediaUpload::Protocols::Simple do
              property :multipart, as: 'multipart'
              property :path, as: 'path'
            end
          end
        end
        
        collection :parameter_order, as: 'parameterOrder'
        
        hash :parameters, as: 'parameters', class: Google::Apis::DiscoveryV1::JsonSchema, decorator: Google::Apis::DiscoveryV1::JsonSchemaRepresentation
        
        
        property :path, as: 'path'
        property :request, as: 'request', class: Google::Apis::DiscoveryV1::RestMethod::Request do
          property :_ref, as: '$ref'
          property :parameter_name, as: 'parameterName'
        end
        
        property :response, as: 'response', class: Google::Apis::DiscoveryV1::RestMethod::Response do
          property :_ref, as: '$ref'
        end
        
        collection :scopes, as: 'scopes'
        
        property :supports_media_download, as: 'supportsMediaDownload'
        property :supports_media_upload, as: 'supportsMediaUpload'
        property :supports_subscription, as: 'supportsSubscription'
        property :use_media_download_service, as: 'useMediaDownloadService'
      end

      # @private
      class RestResourceRepresentation < Google::Apis::Core::JsonRepresentation
        hash :methods_prop, as: 'methods', class: Google::Apis::DiscoveryV1::RestMethod, decorator: Google::Apis::DiscoveryV1::RestMethodRepresentation
        
        
        hash :resources, as: 'resources', class: Google::Apis::DiscoveryV1::RestResource, decorator: Google::Apis::DiscoveryV1::RestResourceRepresentation
      end
    end
  end
end
