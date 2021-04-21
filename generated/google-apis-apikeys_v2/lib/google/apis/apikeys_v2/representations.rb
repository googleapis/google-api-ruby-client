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
    module ApikeysV2
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2AndroidApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2AndroidKeyRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2ApiTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2BrowserKeyRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2CloneKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2GetKeyStringResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2IosKeyRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2ListKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2LookupKeyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2Restrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2ServerKeyRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2UndeleteKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ApikeysV2::Status, decorator: Google::Apis::ApikeysV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class V2AndroidApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_name, as: 'packageName'
          property :sha1_fingerprint, as: 'sha1Fingerprint'
        end
      end
      
      class V2AndroidKeyRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_applications, as: 'allowedApplications', class: Google::Apis::ApikeysV2::V2AndroidApplication, decorator: Google::Apis::ApikeysV2::V2AndroidApplication::Representation
      
        end
      end
      
      class V2ApiTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :methods_prop, as: 'methods'
          property :service, as: 'service'
        end
      end
      
      class V2BrowserKeyRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_referrers, as: 'allowedReferrers'
        end
      end
      
      class V2CloneKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
        end
      end
      
      class V2GetKeyStringResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_string, as: 'keyString'
        end
      end
      
      class V2IosKeyRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_bundle_ids, as: 'allowedBundleIds'
        end
      end
      
      class V2Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :key_string, as: 'keyString'
          property :name, as: 'name'
          property :restrictions, as: 'restrictions', class: Google::Apis::ApikeysV2::V2Restrictions, decorator: Google::Apis::ApikeysV2::V2Restrictions::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class V2ListKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::ApikeysV2::V2Key, decorator: Google::Apis::ApikeysV2::V2Key::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class V2LookupKeyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :parent, as: 'parent'
        end
      end
      
      class V2Restrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_key_restrictions, as: 'androidKeyRestrictions', class: Google::Apis::ApikeysV2::V2AndroidKeyRestrictions, decorator: Google::Apis::ApikeysV2::V2AndroidKeyRestrictions::Representation
      
          collection :api_targets, as: 'apiTargets', class: Google::Apis::ApikeysV2::V2ApiTarget, decorator: Google::Apis::ApikeysV2::V2ApiTarget::Representation
      
          property :browser_key_restrictions, as: 'browserKeyRestrictions', class: Google::Apis::ApikeysV2::V2BrowserKeyRestrictions, decorator: Google::Apis::ApikeysV2::V2BrowserKeyRestrictions::Representation
      
          property :ios_key_restrictions, as: 'iosKeyRestrictions', class: Google::Apis::ApikeysV2::V2IosKeyRestrictions, decorator: Google::Apis::ApikeysV2::V2IosKeyRestrictions::Representation
      
          property :server_key_restrictions, as: 'serverKeyRestrictions', class: Google::Apis::ApikeysV2::V2ServerKeyRestrictions, decorator: Google::Apis::ApikeysV2::V2ServerKeyRestrictions::Representation
      
        end
      end
      
      class V2ServerKeyRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ips, as: 'allowedIps'
        end
      end
      
      class V2UndeleteKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
