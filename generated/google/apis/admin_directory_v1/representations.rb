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
    module AdminDirectoryV1
      
      class AliasRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AliasesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AspRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AspsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ChromeOsDeviceRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ActiveTimeRangeRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class RecentUserRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ChromeOsDevicesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GroupRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GroupsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MemberRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MembersRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MobileDeviceRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class MobileDeviceActionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MobileDevicesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NotificationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NotificationsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OrgUnitRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OrgUnitsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SchemaRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SchemaFieldSpecRepresentation < Google::Apis::Core::JsonRepresentation
        
        class NumericIndexingSpecRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class SchemasRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TokenRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TokensRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserAboutRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserAddressRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserEmailRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserExternalIdRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserImRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserMakeAdminRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserNameRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserOrganizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserPhoneRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserPhotoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserRelationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserUndeleteRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserWebsiteRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UsersRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VerificationCodeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VerificationCodesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AliasRepresentation < Google::Apis::Core::JsonRepresentation
        property :alias, as: 'alias'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :primary_email, as: 'primaryEmail'
      end

      # @private
      class AliasesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :aliases, as: 'aliases', class: Google::Apis::AdminDirectoryV1::Alias, decorator: Google::Apis::AdminDirectoryV1::AliasRepresentation
        
        
        property :etag, as: 'etag'
        property :kind, as: 'kind'
      end

      # @private
      class AspRepresentation < Google::Apis::Core::JsonRepresentation
        property :code_id, as: 'codeId'
        property :creation_time, as: 'creationTime'
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :last_time_used, as: 'lastTimeUsed'
        property :name, as: 'name'
        property :user_key, as: 'userKey'
      end

      # @private
      class AspsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdminDirectoryV1::Asp, decorator: Google::Apis::AdminDirectoryV1::AspRepresentation
        
        
        property :kind, as: 'kind'
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
      class ChromeOsDeviceRepresentation < Google::Apis::Core::JsonRepresentation
        class ActiveTimeRangeRepresentation < Google::Apis::Core::JsonRepresentation; end
        class RecentUserRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :active_time_ranges, as: 'activeTimeRanges', class: Google::Apis::AdminDirectoryV1::ChromeOsDevice::ActiveTimeRange, decorator: Google::Apis::AdminDirectoryV1::ChromeOsDeviceRepresentation::ActiveTimeRangeRepresentation
        
        
        property :annotated_asset_id, as: 'annotatedAssetId'
        property :annotated_location, as: 'annotatedLocation'
        property :annotated_user, as: 'annotatedUser'
        property :boot_mode, as: 'bootMode'
        property :device_id, as: 'deviceId'
        property :etag, as: 'etag'
        property :ethernet_mac_address, as: 'ethernetMacAddress'
        property :firmware_version, as: 'firmwareVersion'
        property :kind, as: 'kind'
        property :last_enrollment_time, as: 'lastEnrollmentTime', type: DateTime
        property :last_sync, as: 'lastSync', type: DateTime
        property :mac_address, as: 'macAddress'
        property :meid, as: 'meid'
        property :model, as: 'model'
        property :notes, as: 'notes'
        property :order_number, as: 'orderNumber'
        property :org_unit_path, as: 'orgUnitPath'
        property :os_version, as: 'osVersion'
        property :platform_version, as: 'platformVersion'
        collection :recent_users, as: 'recentUsers', class: Google::Apis::AdminDirectoryV1::ChromeOsDevice::RecentUser, decorator: Google::Apis::AdminDirectoryV1::ChromeOsDeviceRepresentation::RecentUserRepresentation
        
        
        property :serial_number, as: 'serialNumber'
        property :status, as: 'status'
        property :support_end_date, as: 'supportEndDate', type: DateTime
        property :will_auto_renew, as: 'willAutoRenew'
        
        # @private
        class ActiveTimeRangeRepresentation < Google::Apis::Core::JsonRepresentation
          property :active_time, as: 'activeTime'
          property :date, as: 'date', type: Date
        end
        
        # @private
        class RecentUserRepresentation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :type, as: 'type'
        end
      end

      # @private
      class ChromeOsDevicesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :chromeosdevices, as: 'chromeosdevices', class: Google::Apis::AdminDirectoryV1::ChromeOsDevice, decorator: Google::Apis::AdminDirectoryV1::ChromeOsDeviceRepresentation
        
        
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class GroupRepresentation < Google::Apis::Core::JsonRepresentation
        property :admin_created, as: 'adminCreated'
        collection :aliases, as: 'aliases'
        
        property :description, as: 'description'
        property :direct_members_count, as: 'directMembersCount'
        property :email, as: 'email'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :non_editable_aliases, as: 'nonEditableAliases'
      end

      # @private
      class GroupsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :groups, as: 'groups', class: Google::Apis::AdminDirectoryV1::Group, decorator: Google::Apis::AdminDirectoryV1::GroupRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MemberRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :role, as: 'role'
        property :type, as: 'type'
      end

      # @private
      class MembersRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        collection :members, as: 'members', class: Google::Apis::AdminDirectoryV1::Member, decorator: Google::Apis::AdminDirectoryV1::MemberRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MobileDeviceRepresentation < Google::Apis::Core::JsonRepresentation
        class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :applications, as: 'applications', class: Google::Apis::AdminDirectoryV1::MobileDevice::Application, decorator: Google::Apis::AdminDirectoryV1::MobileDeviceRepresentation::ApplicationRepresentation
        
        
        property :baseband_version, as: 'basebandVersion'
        property :build_number, as: 'buildNumber'
        property :default_language, as: 'defaultLanguage'
        property :device_compromised_status, as: 'deviceCompromisedStatus'
        property :device_id, as: 'deviceId'
        collection :email, as: 'email'
        
        property :etag, as: 'etag'
        property :first_sync, as: 'firstSync', type: DateTime
        property :hardware_id, as: 'hardwareId'
        property :imei, as: 'imei'
        property :kernel_version, as: 'kernelVersion'
        property :kind, as: 'kind'
        property :last_sync, as: 'lastSync', type: DateTime
        property :managed_account_is_on_owner_profile, as: 'managedAccountIsOnOwnerProfile'
        property :meid, as: 'meid'
        property :model, as: 'model'
        collection :name, as: 'name'
        
        property :network_operator, as: 'networkOperator'
        property :os, as: 'os'
        property :resource_id, as: 'resourceId'
        property :serial_number, as: 'serialNumber'
        property :status, as: 'status'
        property :type, as: 'type'
        property :user_agent, as: 'userAgent'
        property :wifi_mac_address, as: 'wifiMacAddress'
        
        # @private
        class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :package_name, as: 'packageName'
          collection :permission, as: 'permission'
          
          property :version_code, as: 'versionCode'
          property :version_name, as: 'versionName'
        end
      end

      # @private
      class MobileDeviceActionRepresentation < Google::Apis::Core::JsonRepresentation
        property :action, as: 'action'
      end

      # @private
      class MobileDevicesRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        collection :mobiledevices, as: 'mobiledevices', class: Google::Apis::AdminDirectoryV1::MobileDevice, decorator: Google::Apis::AdminDirectoryV1::MobileDeviceRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class NotificationRepresentation < Google::Apis::Core::JsonRepresentation
        property :body, as: 'body'
        property :etag, as: 'etag'
        property :from_address, as: 'fromAddress'
        property :is_unread, as: 'isUnread'
        property :kind, as: 'kind'
        property :notification_id, as: 'notificationId'
        property :send_time, as: 'sendTime', type: DateTime
        property :subject, as: 'subject'
      end

      # @private
      class NotificationsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdminDirectoryV1::Notification, decorator: Google::Apis::AdminDirectoryV1::NotificationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :unread_notifications_count, as: 'unreadNotificationsCount'
      end

      # @private
      class OrgUnitRepresentation < Google::Apis::Core::JsonRepresentation
        property :block_inheritance, as: 'blockInheritance'
        property :description, as: 'description'
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :org_unit_id, as: 'orgUnitId'
        property :org_unit_path, as: 'orgUnitPath'
        property :parent_org_unit_id, as: 'parentOrgUnitId'
        property :parent_org_unit_path, as: 'parentOrgUnitPath'
      end

      # @private
      class OrgUnitsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        collection :organization_units, as: 'organizationUnits', class: Google::Apis::AdminDirectoryV1::OrgUnit, decorator: Google::Apis::AdminDirectoryV1::OrgUnitRepresentation
      end

      # @private
      class SchemaRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :fields, as: 'fields', class: Google::Apis::AdminDirectoryV1::SchemaFieldSpec, decorator: Google::Apis::AdminDirectoryV1::SchemaFieldSpecRepresentation
        
        
        property :kind, as: 'kind'
        property :schema_id, as: 'schemaId'
        property :schema_name, as: 'schemaName'
      end

      # @private
      class SchemaFieldSpecRepresentation < Google::Apis::Core::JsonRepresentation
        class NumericIndexingSpecRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :etag, as: 'etag'
        property :field_id, as: 'fieldId'
        property :field_name, as: 'fieldName'
        property :field_type, as: 'fieldType'
        property :indexed, as: 'indexed'
        property :kind, as: 'kind'
        property :multi_valued, as: 'multiValued'
        property :numeric_indexing_spec, as: 'numericIndexingSpec', class: Google::Apis::AdminDirectoryV1::SchemaFieldSpec::NumericIndexingSpec, decorator: Google::Apis::AdminDirectoryV1::SchemaFieldSpecRepresentation::NumericIndexingSpecRepresentation
        
        property :read_access_type, as: 'readAccessType'
        
        # @private
        class NumericIndexingSpecRepresentation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
        end
      end

      # @private
      class SchemasRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        collection :schemas, as: 'schemas', class: Google::Apis::AdminDirectoryV1::Schema, decorator: Google::Apis::AdminDirectoryV1::SchemaRepresentation
      end

      # @private
      class TokenRepresentation < Google::Apis::Core::JsonRepresentation
        property :anonymous, as: 'anonymous'
        property :client_id, as: 'clientId'
        property :display_text, as: 'displayText'
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :native_app, as: 'nativeApp'
        collection :scopes, as: 'scopes'
        
        property :user_key, as: 'userKey'
      end

      # @private
      class TokensRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdminDirectoryV1::Token, decorator: Google::Apis::AdminDirectoryV1::TokenRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        property :addresses, as: 'addresses'
        property :agreed_to_terms, as: 'agreedToTerms'
        collection :aliases, as: 'aliases'
        
        property :change_password_at_next_login, as: 'changePasswordAtNextLogin'
        property :creation_time, as: 'creationTime', type: DateTime
        hash :custom_schemas, as: 'customSchemas'
        
        property :customer_id, as: 'customerId'
        property :deletion_time, as: 'deletionTime', type: DateTime
        property :emails, as: 'emails'
        property :etag, as: 'etag'
        property :external_ids, as: 'externalIds'
        property :hash_function, as: 'hashFunction'
        property :id, as: 'id'
        property :ims, as: 'ims'
        property :include_in_global_address_list, as: 'includeInGlobalAddressList'
        property :ip_whitelisted, as: 'ipWhitelisted'
        property :is_admin, as: 'isAdmin'
        property :is_delegated_admin, as: 'isDelegatedAdmin'
        property :is_mailbox_setup, as: 'isMailboxSetup'
        property :kind, as: 'kind'
        property :last_login_time, as: 'lastLoginTime', type: DateTime
        property :name, as: 'name', class: Google::Apis::AdminDirectoryV1::UserName, decorator: Google::Apis::AdminDirectoryV1::UserNameRepresentation
        
        collection :non_editable_aliases, as: 'nonEditableAliases'
        
        property :notes, as: 'notes'
        property :org_unit_path, as: 'orgUnitPath'
        property :organizations, as: 'organizations'
        property :password, as: 'password'
        property :phones, as: 'phones'
        property :primary_email, as: 'primaryEmail'
        property :relations, as: 'relations'
        property :suspended, as: 'suspended'
        property :suspension_reason, as: 'suspensionReason'
        property :thumbnail_photo_url, as: 'thumbnailPhotoUrl'
        property :websites, as: 'websites'
      end

      # @private
      class UserAboutRepresentation < Google::Apis::Core::JsonRepresentation
        property :content_type, as: 'contentType'
        property :value, as: 'value'
      end

      # @private
      class UserAddressRepresentation < Google::Apis::Core::JsonRepresentation
        property :country, as: 'country'
        property :country_code, as: 'countryCode'
        property :custom_type, as: 'customType'
        property :extended_address, as: 'extendedAddress'
        property :formatted, as: 'formatted'
        property :locality, as: 'locality'
        property :po_box, as: 'poBox'
        property :postal_code, as: 'postalCode'
        property :primary, as: 'primary'
        property :region, as: 'region'
        property :source_is_structured, as: 'sourceIsStructured'
        property :street_address, as: 'streetAddress'
        property :type, as: 'type'
      end

      # @private
      class UserEmailRepresentation < Google::Apis::Core::JsonRepresentation
        property :address, as: 'address'
        property :custom_type, as: 'customType'
        property :primary, as: 'primary'
        property :type, as: 'type'
      end

      # @private
      class UserExternalIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_type, as: 'customType'
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class UserImRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_protocol, as: 'customProtocol'
        property :custom_type, as: 'customType'
        property :im, as: 'im'
        property :primary, as: 'primary'
        property :protocol, as: 'protocol'
        property :type, as: 'type'
      end

      # @private
      class UserMakeAdminRepresentation < Google::Apis::Core::JsonRepresentation
        property :status, as: 'status'
      end

      # @private
      class UserNameRepresentation < Google::Apis::Core::JsonRepresentation
        property :family_name, as: 'familyName'
        property :full_name, as: 'fullName'
        property :given_name, as: 'givenName'
      end

      # @private
      class UserOrganizationRepresentation < Google::Apis::Core::JsonRepresentation
        property :cost_center, as: 'costCenter'
        property :custom_type, as: 'customType'
        property :department, as: 'department'
        property :description, as: 'description'
        property :domain, as: 'domain'
        property :location, as: 'location'
        property :name, as: 'name'
        property :primary, as: 'primary'
        property :symbol, as: 'symbol'
        property :title, as: 'title'
        property :type, as: 'type'
      end

      # @private
      class UserPhoneRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_type, as: 'customType'
        property :primary, as: 'primary'
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class UserPhotoRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :height, as: 'height'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :mime_type, as: 'mimeType'
        property :photo_data, :base64 => true, as: 'photoData'
        property :primary_email, as: 'primaryEmail'
        property :width, as: 'width'
      end

      # @private
      class UserRelationRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_type, as: 'customType'
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class UserUndeleteRepresentation < Google::Apis::Core::JsonRepresentation
        property :org_unit_path, as: 'orgUnitPath'
      end

      # @private
      class UserWebsiteRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_type, as: 'customType'
        property :primary, as: 'primary'
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class UsersRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :trigger_event, as: 'trigger_event'
        collection :users, as: 'users', class: Google::Apis::AdminDirectoryV1::User, decorator: Google::Apis::AdminDirectoryV1::UserRepresentation
      end

      # @private
      class VerificationCodeRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :user_id, as: 'userId'
        property :verification_code, as: 'verificationCode'
      end

      # @private
      class VerificationCodesRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdminDirectoryV1::VerificationCode, decorator: Google::Apis::AdminDirectoryV1::VerificationCodeRepresentation
        
        
        property :kind, as: 'kind'
      end
    end
  end
end
