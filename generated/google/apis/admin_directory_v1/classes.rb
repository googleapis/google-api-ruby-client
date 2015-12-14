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
      
      # JSON template for Alias object in Directory API.
      class Alias
        include Google::Apis::Core::Hashable
      
        # A alias email
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Unique id of the group (Read-only) Unique id of the user (Read-only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Group's primary email (Read-only) User's primary email (Read-only)
        # Corresponds to the JSON property `primaryEmail`
        # @return [String]
        attr_accessor :primary_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] unless args[:alias].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @primary_email = args[:primary_email] unless args[:primary_email].nil?
        end
      end
      
      # JSON response template to list aliases in Directory API.
      class Aliases
        include Google::Apis::Core::Hashable
      
        # List of alias objects.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Google::Apis::AdminDirectoryV1::Alias>]
        attr_accessor :aliases
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] unless args[:aliases].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The template that returns individual ASP (Access Code) data.
      class Asp
        include Google::Apis::Core::Hashable
      
        # The unique ID of the ASP.
        # Corresponds to the JSON property `codeId`
        # @return [Fixnum]
        attr_accessor :code_id
      
        # The time when the ASP was created. Expressed in Unix time format.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # ETag of the ASP.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. This is always admin#directory#asp.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time when the ASP was last used. Expressed in Unix time format.
        # Corresponds to the JSON property `lastTimeUsed`
        # @return [String]
        attr_accessor :last_time_used
      
        # The name of the application that the user, represented by their userId,
        # entered when the ASP was created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique ID of the user who issued the ASP.
        # Corresponds to the JSON property `userKey`
        # @return [String]
        attr_accessor :user_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_id = args[:code_id] unless args[:code_id].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_time_used = args[:last_time_used] unless args[:last_time_used].nil?
          @name = args[:name] unless args[:name].nil?
          @user_key = args[:user_key] unless args[:user_key].nil?
        end
      end
      
      # 
      class Asps
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of ASP resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::Asp>]
        attr_accessor :items
      
        # The type of the API resource. This is always admin#directory#aspList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # JSON template for Calendar Resource object in Directory API.
      class CalendarResource
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etags`
        # @return [String]
        attr_accessor :etags
      
        # The type of the resource. For calendar resources, the value is admin#directory#
        # resources#calendars#CalendarResource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The brief description of the calendar resource.
        # Corresponds to the JSON property `resourceDescription`
        # @return [String]
        attr_accessor :resource_description
      
        # The read-only email ID for the calendar resource. Generated as part of
        # creating a new calendar resource.
        # Corresponds to the JSON property `resourceEmail`
        # @return [String]
        attr_accessor :resource_email
      
        # The unique ID for the calendar resource.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The name of the calendar resource. For example, Training Room 1A
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The type of the calendar resource. Used for grouping resources in the calendar
        # user interface.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etags = args[:etags] unless args[:etags].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @resource_description = args[:resource_description] unless args[:resource_description].nil?
          @resource_email = args[:resource_email] unless args[:resource_email].nil?
          @resource_id = args[:resource_id] unless args[:resource_id].nil?
          @resource_name = args[:resource_name] unless args[:resource_name].nil?
          @resource_type = args[:resource_type] unless args[:resource_type].nil?
        end
      end
      
      # JSON template for Calendar Resource List Response object in Directory API.
      class CalendarResources
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The CalendarResources in this page of results.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::CalendarResource>]
        attr_accessor :items
      
        # Identifies this as a collection of CalendarResources. This is always admin#
        # directory#resources#calendars#calendarResourcesList.
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
          @etag = args[:etag] unless args[:etag].nil?
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
      
      # JSON template for Chrome Os Device resource in Directory API.
      class ChromeOsDevice
        include Google::Apis::Core::Hashable
      
        # List of active time ranges (Read-only)
        # Corresponds to the JSON property `activeTimeRanges`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::ActiveTimeRange>]
        attr_accessor :active_time_ranges
      
        # AssetId specified during enrollment or through later annotation
        # Corresponds to the JSON property `annotatedAssetId`
        # @return [String]
        attr_accessor :annotated_asset_id
      
        # Address or location of the device as noted by the administrator
        # Corresponds to the JSON property `annotatedLocation`
        # @return [String]
        attr_accessor :annotated_location
      
        # User of the device
        # Corresponds to the JSON property `annotatedUser`
        # @return [String]
        attr_accessor :annotated_user
      
        # Chromebook boot mode (Read-only)
        # Corresponds to the JSON property `bootMode`
        # @return [String]
        attr_accessor :boot_mode
      
        # Unique identifier of Chrome OS Device (Read-only)
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Chromebook Mac Address on ethernet network interface (Read-only)
        # Corresponds to the JSON property `ethernetMacAddress`
        # @return [String]
        attr_accessor :ethernet_mac_address
      
        # Chromebook firmware version (Read-only)
        # Corresponds to the JSON property `firmwareVersion`
        # @return [String]
        attr_accessor :firmware_version
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date and time the device was last enrolled (Read-only)
        # Corresponds to the JSON property `lastEnrollmentTime`
        # @return [DateTime]
        attr_accessor :last_enrollment_time
      
        # Date and time the device was last synchronized with the policy settings in the
        # Google Apps administrator control panel (Read-only)
        # Corresponds to the JSON property `lastSync`
        # @return [DateTime]
        attr_accessor :last_sync
      
        # Chromebook Mac Address on wifi network interface (Read-only)
        # Corresponds to the JSON property `macAddress`
        # @return [String]
        attr_accessor :mac_address
      
        # Mobile Equipment identifier for the 3G mobile card in the Chromebook (Read-
        # only)
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Chromebook Model (Read-only)
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Notes added by the administrator
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Chromebook order number (Read-only)
        # Corresponds to the JSON property `orderNumber`
        # @return [String]
        attr_accessor :order_number
      
        # OrgUnit of the device
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        # Chromebook Os Version (Read-only)
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Chromebook platform version (Read-only)
        # Corresponds to the JSON property `platformVersion`
        # @return [String]
        attr_accessor :platform_version
      
        # List of recent device users, in descending order by last login time (Read-only)
        # Corresponds to the JSON property `recentUsers`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::RecentUser>]
        attr_accessor :recent_users
      
        # Chromebook serial number (Read-only)
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # status of the device (Read-only)
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Final date the device will be supported (Read-only)
        # Corresponds to the JSON property `supportEndDate`
        # @return [DateTime]
        attr_accessor :support_end_date
      
        # Will Chromebook auto renew after support end date (Read-only)
        # Corresponds to the JSON property `willAutoRenew`
        # @return [Boolean]
        attr_accessor :will_auto_renew
        alias_method :will_auto_renew?, :will_auto_renew
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_time_ranges = args[:active_time_ranges] unless args[:active_time_ranges].nil?
          @annotated_asset_id = args[:annotated_asset_id] unless args[:annotated_asset_id].nil?
          @annotated_location = args[:annotated_location] unless args[:annotated_location].nil?
          @annotated_user = args[:annotated_user] unless args[:annotated_user].nil?
          @boot_mode = args[:boot_mode] unless args[:boot_mode].nil?
          @device_id = args[:device_id] unless args[:device_id].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @ethernet_mac_address = args[:ethernet_mac_address] unless args[:ethernet_mac_address].nil?
          @firmware_version = args[:firmware_version] unless args[:firmware_version].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_enrollment_time = args[:last_enrollment_time] unless args[:last_enrollment_time].nil?
          @last_sync = args[:last_sync] unless args[:last_sync].nil?
          @mac_address = args[:mac_address] unless args[:mac_address].nil?
          @meid = args[:meid] unless args[:meid].nil?
          @model = args[:model] unless args[:model].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @order_number = args[:order_number] unless args[:order_number].nil?
          @org_unit_path = args[:org_unit_path] unless args[:org_unit_path].nil?
          @os_version = args[:os_version] unless args[:os_version].nil?
          @platform_version = args[:platform_version] unless args[:platform_version].nil?
          @recent_users = args[:recent_users] unless args[:recent_users].nil?
          @serial_number = args[:serial_number] unless args[:serial_number].nil?
          @status = args[:status] unless args[:status].nil?
          @support_end_date = args[:support_end_date] unless args[:support_end_date].nil?
          @will_auto_renew = args[:will_auto_renew] unless args[:will_auto_renew].nil?
        end
        
        # 
        class ActiveTimeRange
          include Google::Apis::Core::Hashable
        
          # Duration in milliseconds
          # Corresponds to the JSON property `activeTime`
          # @return [Fixnum]
          attr_accessor :active_time
        
          # Date of usage
          # Corresponds to the JSON property `date`
          # @return [Date]
          attr_accessor :date
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @active_time = args[:active_time] unless args[:active_time].nil?
            @date = args[:date] unless args[:date].nil?
          end
        end
        
        # 
        class RecentUser
          include Google::Apis::Core::Hashable
        
          # Email address of the user. Present only if the user type is managed
          # Corresponds to the JSON property `email`
          # @return [String]
          attr_accessor :email
        
          # The type of the user
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @email = args[:email] unless args[:email].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # JSON response template for List Chrome OS Devices operation in Directory API.
      class ChromeOsDevices
        include Google::Apis::Core::Hashable
      
        # List of Chrome OS Device objects.
        # Corresponds to the JSON property `chromeosdevices`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice>]
        attr_accessor :chromeosdevices
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chromeosdevices = args[:chromeosdevices] unless args[:chromeosdevices].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # JSON template for Customer Resource object in Directory API.
      class Customer
        include Google::Apis::Core::Hashable
      
        # The customer's secondary contact email address. This email address cannot be
        # on the same domain as the customerDomain
        # Corresponds to the JSON property `alternateEmail`
        # @return [String]
        attr_accessor :alternate_email
      
        # The customer's creation time (Readonly)
        # Corresponds to the JSON property `customerCreationTime`
        # @return [DateTime]
        attr_accessor :customer_creation_time
      
        # The customer's primary domain name string. Do not include the www prefix when
        # creating a new customer.
        # Corresponds to the JSON property `customerDomain`
        # @return [String]
        attr_accessor :customer_domain
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique ID for the customer's Google account. (Readonly)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies the resource as a customer. Value: admin#directory#customer
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The customer's ISO 639-2 language code. The default value is en-US
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The customer's contact phone number in E.164 format.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # JSON template for postal address of a customer.
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::AdminDirectoryV1::CustomerPostalAddress]
        attr_accessor :postal_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_email = args[:alternate_email] unless args[:alternate_email].nil?
          @customer_creation_time = args[:customer_creation_time] unless args[:customer_creation_time].nil?
          @customer_domain = args[:customer_domain] unless args[:customer_domain].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @language = args[:language] unless args[:language].nil?
          @phone_number = args[:phone_number] unless args[:phone_number].nil?
          @postal_address = args[:postal_address] unless args[:postal_address].nil?
        end
      end
      
      # JSON template for postal address of a customer.
      class CustomerPostalAddress
        include Google::Apis::Core::Hashable
      
        # A customer's physical address. The address can be composed of one to three
        # lines.
        # Corresponds to the JSON property `addressLine1`
        # @return [String]
        attr_accessor :address_line1
      
        # Address line 2 of the address.
        # Corresponds to the JSON property `addressLine2`
        # @return [String]
        attr_accessor :address_line2
      
        # Address line 3 of the address.
        # Corresponds to the JSON property `addressLine3`
        # @return [String]
        attr_accessor :address_line3
      
        # The customer contact's name.
        # Corresponds to the JSON property `contactName`
        # @return [String]
        attr_accessor :contact_name
      
        # This is a required property. For countryCode information see the ISO 3166
        # country code elements.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Name of the locality. An example of a locality value is the city of San
        # Francisco.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # The company or company division name.
        # Corresponds to the JSON property `organizationName`
        # @return [String]
        attr_accessor :organization_name
      
        # The postal code. A postalCode example is a postal zip code such as 10009. This
        # is in accordance with - http://portablecontacts.net/draft-spec.html#
        # address_element.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Name of the region. An example of a region value is NY for the state of New
        # York.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_line1 = args[:address_line1] unless args[:address_line1].nil?
          @address_line2 = args[:address_line2] unless args[:address_line2].nil?
          @address_line3 = args[:address_line3] unless args[:address_line3].nil?
          @contact_name = args[:contact_name] unless args[:contact_name].nil?
          @country_code = args[:country_code] unless args[:country_code].nil?
          @locality = args[:locality] unless args[:locality].nil?
          @organization_name = args[:organization_name] unless args[:organization_name].nil?
          @postal_code = args[:postal_code] unless args[:postal_code].nil?
          @region = args[:region] unless args[:region].nil?
        end
      end
      
      # JSON template for Domain Alias object in Directory API.
      class DomainAlias
        include Google::Apis::Core::Hashable
      
        # The creation time of the domain alias. (Read-only).
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # The domain alias name.
        # Corresponds to the JSON property `domainAliasName`
        # @return [String]
        attr_accessor :domain_alias_name
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The parent domain name that the domain alias is associated with. This can
        # either be a primary or secondary domain name within a customer.
        # Corresponds to the JSON property `parentDomainName`
        # @return [String]
        attr_accessor :parent_domain_name
      
        # Indicates the verification state of a domain alias. (Read-only)
        # Corresponds to the JSON property `verified`
        # @return [Boolean]
        attr_accessor :verified
        alias_method :verified?, :verified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @domain_alias_name = args[:domain_alias_name] unless args[:domain_alias_name].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @parent_domain_name = args[:parent_domain_name] unless args[:parent_domain_name].nil?
          @verified = args[:verified] unless args[:verified].nil?
        end
      end
      
      # JSON response template to list domain aliases in Directory API.
      class DomainAliases
        include Google::Apis::Core::Hashable
      
        # List of domain alias objects.
        # Corresponds to the JSON property `domainAliases`
        # @return [Array<Google::Apis::AdminDirectoryV1::DomainAlias>]
        attr_accessor :domain_aliases
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_aliases = args[:domain_aliases] unless args[:domain_aliases].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # JSON template for Domain object in Directory API.
      class Domains
        include Google::Apis::Core::Hashable
      
        # Creation time of the domain. (Read-only).
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # List of domain alias objects. (Read-only)
        # Corresponds to the JSON property `domainAliases`
        # @return [Array<Google::Apis::AdminDirectoryV1::DomainAlias>]
        attr_accessor :domain_aliases
      
        # The domain name of the customer.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Indicates if the domain is a primary domain (Read-only).
        # Corresponds to the JSON property `isPrimary`
        # @return [Boolean]
        attr_accessor :is_primary
        alias_method :is_primary?, :is_primary
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Indicates the verification state of a domain. (Read-only).
        # Corresponds to the JSON property `verified`
        # @return [Boolean]
        attr_accessor :verified
        alias_method :verified?, :verified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @domain_aliases = args[:domain_aliases] unless args[:domain_aliases].nil?
          @domain_name = args[:domain_name] unless args[:domain_name].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @is_primary = args[:is_primary] unless args[:is_primary].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @verified = args[:verified] unless args[:verified].nil?
        end
      end
      
      # JSON response template to list Domains in Directory API.
      class Domains2
        include Google::Apis::Core::Hashable
      
        # List of domain objects.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::AdminDirectoryV1::Domains>]
        attr_accessor :domains
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] unless args[:domains].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # JSON template for Group resource in Directory API.
      class Group
        include Google::Apis::Core::Hashable
      
        # Is the group created by admin (Read-only) *
        # Corresponds to the JSON property `adminCreated`
        # @return [Boolean]
        attr_accessor :admin_created
        alias_method :admin_created?, :admin_created
      
        # List of aliases (Read-only)
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # Description of the group
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Group direct members count
        # Corresponds to the JSON property `directMembersCount`
        # @return [String]
        attr_accessor :direct_members_count
      
        # Email of Group
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Unique identifier of Group (Read-only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Group name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of non editable aliases (Read-only)
        # Corresponds to the JSON property `nonEditableAliases`
        # @return [Array<String>]
        attr_accessor :non_editable_aliases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_created = args[:admin_created] unless args[:admin_created].nil?
          @aliases = args[:aliases] unless args[:aliases].nil?
          @description = args[:description] unless args[:description].nil?
          @direct_members_count = args[:direct_members_count] unless args[:direct_members_count].nil?
          @email = args[:email] unless args[:email].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @non_editable_aliases = args[:non_editable_aliases] unless args[:non_editable_aliases].nil?
        end
      end
      
      # JSON response template for List Groups operation in Directory API.
      class Groups
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of group objects.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::AdminDirectoryV1::Group>]
        attr_accessor :groups
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @groups = args[:groups] unless args[:groups].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # JSON template for Member resource in Directory API.
      class Member
        include Google::Apis::Core::Hashable
      
        # Email of member (Read-only)
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Unique identifier of customer member (Read-only) Unique identifier of group (
        # Read-only) Unique identifier of member (Read-only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Role of member
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Type of member (Immutable)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @role = args[:role] unless args[:role].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # JSON response template for List Members operation in Directory API.
      class Members
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of member objects.
        # Corresponds to the JSON property `members`
        # @return [Array<Google::Apis::AdminDirectoryV1::Member>]
        attr_accessor :members
      
        # Token used to access next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @members = args[:members] unless args[:members].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # JSON template for Mobile Device resource in Directory API.
      class MobileDevice
        include Google::Apis::Core::Hashable
      
        # Adb (USB debugging) enabled or disabled on device (Read-only)
        # Corresponds to the JSON property `adbStatus`
        # @return [Boolean]
        attr_accessor :adb_status
        alias_method :adb_status?, :adb_status
      
        # List of applications installed on Mobile Device
        # Corresponds to the JSON property `applications`
        # @return [Array<Google::Apis::AdminDirectoryV1::MobileDevice::Application>]
        attr_accessor :applications
      
        # Mobile Device Baseband version (Read-only)
        # Corresponds to the JSON property `basebandVersion`
        # @return [String]
        attr_accessor :baseband_version
      
        # Mobile Device Build number (Read-only)
        # Corresponds to the JSON property `buildNumber`
        # @return [String]
        attr_accessor :build_number
      
        # The default locale used on the Mobile Device (Read-only)
        # Corresponds to the JSON property `defaultLanguage`
        # @return [String]
        attr_accessor :default_language
      
        # Developer options enabled or disabled on device (Read-only)
        # Corresponds to the JSON property `developerOptionsStatus`
        # @return [Boolean]
        attr_accessor :developer_options_status
        alias_method :developer_options_status?, :developer_options_status
      
        # Mobile Device compromised status (Read-only)
        # Corresponds to the JSON property `deviceCompromisedStatus`
        # @return [String]
        attr_accessor :device_compromised_status
      
        # Mobile Device serial number (Read-only)
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # List of owner user's email addresses (Read-only)
        # Corresponds to the JSON property `email`
        # @return [Array<String>]
        attr_accessor :email
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Date and time the device was first synchronized with the policy settings in
        # the Google Apps administrator control panel (Read-only)
        # Corresponds to the JSON property `firstSync`
        # @return [DateTime]
        attr_accessor :first_sync
      
        # Mobile Device Hardware Id (Read-only)
        # Corresponds to the JSON property `hardwareId`
        # @return [String]
        attr_accessor :hardware_id
      
        # Mobile Device IMEI number (Read-only)
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # Mobile Device Kernel version (Read-only)
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date and time the device was last synchronized with the policy settings in the
        # Google Apps administrator control panel (Read-only)
        # Corresponds to the JSON property `lastSync`
        # @return [DateTime]
        attr_accessor :last_sync
      
        # Boolean indicating if this account is on owner/primary profile or not (Read-
        # only)
        # Corresponds to the JSON property `managedAccountIsOnOwnerProfile`
        # @return [Boolean]
        attr_accessor :managed_account_is_on_owner_profile
        alias_method :managed_account_is_on_owner_profile?, :managed_account_is_on_owner_profile
      
        # Mobile Device MEID number (Read-only)
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Name of the model of the device
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # List of owner user's names (Read-only)
        # Corresponds to the JSON property `name`
        # @return [Array<String>]
        attr_accessor :name
      
        # Mobile Device mobile or network operator (if available) (Read-only)
        # Corresponds to the JSON property `networkOperator`
        # @return [String]
        attr_accessor :network_operator
      
        # Name of the mobile operating system
        # Corresponds to the JSON property `os`
        # @return [String]
        attr_accessor :os
      
        # List of accounts added on device (Read-only)
        # Corresponds to the JSON property `otherAccountsInfo`
        # @return [Array<String>]
        attr_accessor :other_accounts_info
      
        # Unique identifier of Mobile Device (Read-only)
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # Mobile Device SSN or Serial Number (Read-only)
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Status of the device (Read-only)
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Work profile supported on device (Read-only)
        # Corresponds to the JSON property `supportsWorkProfile`
        # @return [Boolean]
        attr_accessor :supports_work_profile
        alias_method :supports_work_profile?, :supports_work_profile
      
        # The type of device (Read-only)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Unknown sources enabled or disabled on device (Read-only)
        # Corresponds to the JSON property `unknownSourcesStatus`
        # @return [Boolean]
        attr_accessor :unknown_sources_status
        alias_method :unknown_sources_status?, :unknown_sources_status
      
        # Mobile Device user agent
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Mobile Device WiFi MAC address (Read-only)
        # Corresponds to the JSON property `wifiMacAddress`
        # @return [String]
        attr_accessor :wifi_mac_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adb_status = args[:adb_status] unless args[:adb_status].nil?
          @applications = args[:applications] unless args[:applications].nil?
          @baseband_version = args[:baseband_version] unless args[:baseband_version].nil?
          @build_number = args[:build_number] unless args[:build_number].nil?
          @default_language = args[:default_language] unless args[:default_language].nil?
          @developer_options_status = args[:developer_options_status] unless args[:developer_options_status].nil?
          @device_compromised_status = args[:device_compromised_status] unless args[:device_compromised_status].nil?
          @device_id = args[:device_id] unless args[:device_id].nil?
          @email = args[:email] unless args[:email].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @first_sync = args[:first_sync] unless args[:first_sync].nil?
          @hardware_id = args[:hardware_id] unless args[:hardware_id].nil?
          @imei = args[:imei] unless args[:imei].nil?
          @kernel_version = args[:kernel_version] unless args[:kernel_version].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_sync = args[:last_sync] unless args[:last_sync].nil?
          @managed_account_is_on_owner_profile = args[:managed_account_is_on_owner_profile] unless args[:managed_account_is_on_owner_profile].nil?
          @meid = args[:meid] unless args[:meid].nil?
          @model = args[:model] unless args[:model].nil?
          @name = args[:name] unless args[:name].nil?
          @network_operator = args[:network_operator] unless args[:network_operator].nil?
          @os = args[:os] unless args[:os].nil?
          @other_accounts_info = args[:other_accounts_info] unless args[:other_accounts_info].nil?
          @resource_id = args[:resource_id] unless args[:resource_id].nil?
          @serial_number = args[:serial_number] unless args[:serial_number].nil?
          @status = args[:status] unless args[:status].nil?
          @supports_work_profile = args[:supports_work_profile] unless args[:supports_work_profile].nil?
          @type = args[:type] unless args[:type].nil?
          @unknown_sources_status = args[:unknown_sources_status] unless args[:unknown_sources_status].nil?
          @user_agent = args[:user_agent] unless args[:user_agent].nil?
          @wifi_mac_address = args[:wifi_mac_address] unless args[:wifi_mac_address].nil?
        end
        
        # 
        class Application
          include Google::Apis::Core::Hashable
        
          # Display name of application
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # Package name of application
          # Corresponds to the JSON property `packageName`
          # @return [String]
          attr_accessor :package_name
        
          # List of Permissions for application
          # Corresponds to the JSON property `permission`
          # @return [Array<String>]
          attr_accessor :permission
        
          # Version code of application
          # Corresponds to the JSON property `versionCode`
          # @return [Fixnum]
          attr_accessor :version_code
        
          # Version name of application
          # Corresponds to the JSON property `versionName`
          # @return [String]
          attr_accessor :version_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] unless args[:display_name].nil?
            @package_name = args[:package_name] unless args[:package_name].nil?
            @permission = args[:permission] unless args[:permission].nil?
            @version_code = args[:version_code] unless args[:version_code].nil?
            @version_name = args[:version_name] unless args[:version_name].nil?
          end
        end
      end
      
      # JSON request template for firing commands on Mobile Device in Directory
      # Devices API.
      class MobileDeviceAction
        include Google::Apis::Core::Hashable
      
        # Action to be taken on the Mobile Device
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] unless args[:action].nil?
        end
      end
      
      # JSON response template for List Mobile Devices operation in Directory API.
      class MobileDevices
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of Mobile Device objects.
        # Corresponds to the JSON property `mobiledevices`
        # @return [Array<Google::Apis::AdminDirectoryV1::MobileDevice>]
        attr_accessor :mobiledevices
      
        # Token used to access next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mobiledevices = args[:mobiledevices] unless args[:mobiledevices].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Template for a notification resource.
      class Notification
        include Google::Apis::Core::Hashable
      
        # Body of the notification (Read-only)
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Address from which the notification is received (Read-only)
        # Corresponds to the JSON property `fromAddress`
        # @return [String]
        attr_accessor :from_address
      
        # Boolean indicating whether the notification is unread or not.
        # Corresponds to the JSON property `isUnread`
        # @return [Boolean]
        attr_accessor :is_unread
        alias_method :is_unread?, :is_unread
      
        # The type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `notificationId`
        # @return [String]
        attr_accessor :notification_id
      
        # Time at which notification was sent (Read-only)
        # Corresponds to the JSON property `sendTime`
        # @return [DateTime]
        attr_accessor :send_time
      
        # Subject of the notification (Read-only)
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] unless args[:body].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @from_address = args[:from_address] unless args[:from_address].nil?
          @is_unread = args[:is_unread] unless args[:is_unread].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @notification_id = args[:notification_id] unless args[:notification_id].nil?
          @send_time = args[:send_time] unless args[:send_time].nil?
          @subject = args[:subject] unless args[:subject].nil?
        end
      end
      
      # Template for notifications list response.
      class Notifications
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of notifications in this page.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::Notification>]
        attr_accessor :items
      
        # The type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token for fetching the next page of notifications.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Number of unread notification for the domain.
        # Corresponds to the JSON property `unreadNotificationsCount`
        # @return [Fixnum]
        attr_accessor :unread_notifications_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @unread_notifications_count = args[:unread_notifications_count] unless args[:unread_notifications_count].nil?
        end
      end
      
      # JSON template for Org Unit resource in Directory API.
      class OrgUnit
        include Google::Apis::Core::Hashable
      
        # Should block inheritance
        # Corresponds to the JSON property `blockInheritance`
        # @return [Boolean]
        attr_accessor :block_inheritance
        alias_method :block_inheritance?, :block_inheritance
      
        # Description of OrgUnit
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of OrgUnit
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Id of OrgUnit
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # Path of OrgUnit
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        # Id of parent OrgUnit
        # Corresponds to the JSON property `parentOrgUnitId`
        # @return [String]
        attr_accessor :parent_org_unit_id
      
        # Path of parent OrgUnit
        # Corresponds to the JSON property `parentOrgUnitPath`
        # @return [String]
        attr_accessor :parent_org_unit_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_inheritance = args[:block_inheritance] unless args[:block_inheritance].nil?
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @org_unit_id = args[:org_unit_id] unless args[:org_unit_id].nil?
          @org_unit_path = args[:org_unit_path] unless args[:org_unit_path].nil?
          @parent_org_unit_id = args[:parent_org_unit_id] unless args[:parent_org_unit_id].nil?
          @parent_org_unit_path = args[:parent_org_unit_path] unless args[:parent_org_unit_path].nil?
        end
      end
      
      # JSON response template for List Organization Units operation in Directory API.
      class OrgUnits
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of user objects.
        # Corresponds to the JSON property `organizationUnits`
        # @return [Array<Google::Apis::AdminDirectoryV1::OrgUnit>]
        attr_accessor :organization_units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @organization_units = args[:organization_units] unless args[:organization_units].nil?
        end
      end
      
      # JSON template for privilege resource in Directory API.
      class Privilege
        include Google::Apis::Core::Hashable
      
        # A list of child privileges. Privileges for a service form a tree. Each
        # privilege can have a list of child privileges; this list is empty for a leaf
        # privilege.
        # Corresponds to the JSON property `childPrivileges`
        # @return [Array<Google::Apis::AdminDirectoryV1::Privilege>]
        attr_accessor :child_privileges
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # If the privilege can be restricted to an organization unit.
        # Corresponds to the JSON property `isOuScopable`
        # @return [Boolean]
        attr_accessor :is_ou_scopable
        alias_method :is_ou_scopable?, :is_ou_scopable
      
        # The type of the API resource. This is always admin#directory#privilege.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the privilege.
        # Corresponds to the JSON property `privilegeName`
        # @return [String]
        attr_accessor :privilege_name
      
        # The obfuscated ID of the service this privilege is for.
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        # The name of the service this privilege is for.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_privileges = args[:child_privileges] unless args[:child_privileges].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @is_ou_scopable = args[:is_ou_scopable] unless args[:is_ou_scopable].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @privilege_name = args[:privilege_name] unless args[:privilege_name].nil?
          @service_id = args[:service_id] unless args[:service_id].nil?
          @service_name = args[:service_name] unless args[:service_name].nil?
        end
      end
      
      # JSON response template for List privileges operation in Directory API.
      class Privileges
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of Privilege resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::Privilege>]
        attr_accessor :items
      
        # The type of the API resource. This is always admin#directory#privileges.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # JSON template for role resource in Directory API.
      class Role
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Returns true if the role is a super admin role.
        # Corresponds to the JSON property `isSuperAdminRole`
        # @return [Boolean]
        attr_accessor :is_super_admin_role
        alias_method :is_super_admin_role?, :is_super_admin_role
      
        # Returns true if this is a pre-defined system role.
        # Corresponds to the JSON property `isSystemRole`
        # @return [Boolean]
        attr_accessor :is_system_role
        alias_method :is_system_role?, :is_system_role
      
        # The type of the API resource. This is always admin#directory#role.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A short description of the role.
        # Corresponds to the JSON property `roleDescription`
        # @return [String]
        attr_accessor :role_description
      
        # ID of the role.
        # Corresponds to the JSON property `roleId`
        # @return [String]
        attr_accessor :role_id
      
        # Name of the role.
        # Corresponds to the JSON property `roleName`
        # @return [String]
        attr_accessor :role_name
      
        # The set of privileges that are granted to this role.
        # Corresponds to the JSON property `rolePrivileges`
        # @return [Array<Google::Apis::AdminDirectoryV1::Role::RolePrivilege>]
        attr_accessor :role_privileges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @is_super_admin_role = args[:is_super_admin_role] unless args[:is_super_admin_role].nil?
          @is_system_role = args[:is_system_role] unless args[:is_system_role].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @role_description = args[:role_description] unless args[:role_description].nil?
          @role_id = args[:role_id] unless args[:role_id].nil?
          @role_name = args[:role_name] unless args[:role_name].nil?
          @role_privileges = args[:role_privileges] unless args[:role_privileges].nil?
        end
        
        # 
        class RolePrivilege
          include Google::Apis::Core::Hashable
        
          # The name of the privilege.
          # Corresponds to the JSON property `privilegeName`
          # @return [String]
          attr_accessor :privilege_name
        
          # The obfuscated ID of the service this privilege is for.
          # Corresponds to the JSON property `serviceId`
          # @return [String]
          attr_accessor :service_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @privilege_name = args[:privilege_name] unless args[:privilege_name].nil?
            @service_id = args[:service_id] unless args[:service_id].nil?
          end
        end
      end
      
      # JSON template for roleAssignment resource in Directory API.
      class RoleAssignment
        include Google::Apis::Core::Hashable
      
        # The unique ID of the user this role is assigned to.
        # Corresponds to the JSON property `assignedTo`
        # @return [String]
        attr_accessor :assigned_to
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. This is always admin#directory#roleAssignment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If the role is restricted to an organization unit, this contains the ID for
        # the organization unit the exercise of this role is restricted to.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # ID of this roleAssignment.
        # Corresponds to the JSON property `roleAssignmentId`
        # @return [String]
        attr_accessor :role_assignment_id
      
        # The ID of the role that is assigned.
        # Corresponds to the JSON property `roleId`
        # @return [String]
        attr_accessor :role_id
      
        # The scope in which this role is assigned. Possible values are:
        # - CUSTOMER
        # - ORG_UNIT
        # Corresponds to the JSON property `scopeType`
        # @return [String]
        attr_accessor :scope_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_to = args[:assigned_to] unless args[:assigned_to].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @org_unit_id = args[:org_unit_id] unless args[:org_unit_id].nil?
          @role_assignment_id = args[:role_assignment_id] unless args[:role_assignment_id].nil?
          @role_id = args[:role_id] unless args[:role_id].nil?
          @scope_type = args[:scope_type] unless args[:scope_type].nil?
        end
      end
      
      # JSON response template for List roleAssignments operation in Directory API.
      class RoleAssignments
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of RoleAssignment resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::RoleAssignment>]
        attr_accessor :items
      
        # The type of the API resource. This is always admin#directory#roleAssignments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # JSON response template for List roles operation in Directory API.
      class Roles
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of Role resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::Role>]
        attr_accessor :items
      
        # The type of the API resource. This is always admin#directory#roles.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # JSON template for Schema resource in Directory API.
      class Schema
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Fields of Schema
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::AdminDirectoryV1::SchemaFieldSpec>]
        attr_accessor :fields
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Unique identifier of Schema (Read-only)
        # Corresponds to the JSON property `schemaId`
        # @return [String]
        attr_accessor :schema_id
      
        # Schema name
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @fields = args[:fields] unless args[:fields].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @schema_id = args[:schema_id] unless args[:schema_id].nil?
          @schema_name = args[:schema_name] unless args[:schema_name].nil?
        end
      end
      
      # JSON template for FieldSpec resource for Schemas in Directory API.
      class SchemaFieldSpec
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Unique identifier of Field (Read-only)
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Name of the field.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # Type of the field.
        # Corresponds to the JSON property `fieldType`
        # @return [String]
        attr_accessor :field_type
      
        # Boolean specifying whether the field is indexed or not.
        # Corresponds to the JSON property `indexed`
        # @return [Boolean]
        attr_accessor :indexed
        alias_method :indexed?, :indexed
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Boolean specifying whether this is a multi-valued field or not.
        # Corresponds to the JSON property `multiValued`
        # @return [Boolean]
        attr_accessor :multi_valued
        alias_method :multi_valued?, :multi_valued
      
        # Indexing spec for a numeric field. By default, only exact match queries will
        # be supported for numeric fields. Setting the numericIndexingSpec allows range
        # queries to be supported.
        # Corresponds to the JSON property `numericIndexingSpec`
        # @return [Google::Apis::AdminDirectoryV1::SchemaFieldSpec::NumericIndexingSpec]
        attr_accessor :numeric_indexing_spec
      
        # Read ACLs on the field specifying who can view values of this field. Valid
        # values are "ALL_DOMAIN_USERS" and "ADMINS_AND_SELF".
        # Corresponds to the JSON property `readAccessType`
        # @return [String]
        attr_accessor :read_access_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @field_id = args[:field_id] unless args[:field_id].nil?
          @field_name = args[:field_name] unless args[:field_name].nil?
          @field_type = args[:field_type] unless args[:field_type].nil?
          @indexed = args[:indexed] unless args[:indexed].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @multi_valued = args[:multi_valued] unless args[:multi_valued].nil?
          @numeric_indexing_spec = args[:numeric_indexing_spec] unless args[:numeric_indexing_spec].nil?
          @read_access_type = args[:read_access_type] unless args[:read_access_type].nil?
        end
        
        # Indexing spec for a numeric field. By default, only exact match queries will
        # be supported for numeric fields. Setting the numericIndexingSpec allows range
        # queries to be supported.
        class NumericIndexingSpec
          include Google::Apis::Core::Hashable
        
          # Maximum value of this field. This is meant to be indicative rather than
          # enforced. Values outside this range will still be indexed, but search may not
          # be as performant.
          # Corresponds to the JSON property `maxValue`
          # @return [Float]
          attr_accessor :max_value
        
          # Minimum value of this field. This is meant to be indicative rather than
          # enforced. Values outside this range will still be indexed, but search may not
          # be as performant.
          # Corresponds to the JSON property `minValue`
          # @return [Float]
          attr_accessor :min_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @max_value = args[:max_value] unless args[:max_value].nil?
            @min_value = args[:min_value] unless args[:min_value].nil?
          end
        end
      end
      
      # JSON response template for List Schema operation in Directory API.
      class Schemas
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of UserSchema objects.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::AdminDirectoryV1::Schema>]
        attr_accessor :schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @schemas = args[:schemas] unless args[:schemas].nil?
        end
      end
      
      # JSON template for token resource in Directory API.
      class Token
        include Google::Apis::Core::Hashable
      
        # Whether the application is registered with Google. The value is true if the
        # application has an anonymous Client ID.
        # Corresponds to the JSON property `anonymous`
        # @return [Boolean]
        attr_accessor :anonymous
        alias_method :anonymous?, :anonymous
      
        # The Client ID of the application the token is issued to.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The displayable name of the application the token is issued to.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. This is always admin#directory#token.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the token is issued to an installed application. The value is true if
        # the application is installed to a desktop or mobile device.
        # Corresponds to the JSON property `nativeApp`
        # @return [Boolean]
        attr_accessor :native_app
        alias_method :native_app?, :native_app
      
        # A list of authorization scopes the application is granted.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # The unique ID of the user that issued the token.
        # Corresponds to the JSON property `userKey`
        # @return [String]
        attr_accessor :user_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anonymous = args[:anonymous] unless args[:anonymous].nil?
          @client_id = args[:client_id] unless args[:client_id].nil?
          @display_text = args[:display_text] unless args[:display_text].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @native_app = args[:native_app] unless args[:native_app].nil?
          @scopes = args[:scopes] unless args[:scopes].nil?
          @user_key = args[:user_key] unless args[:user_key].nil?
        end
      end
      
      # JSON response template for List tokens operation in Directory API.
      class Tokens
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of Token resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::Token>]
        attr_accessor :items
      
        # The type of the API resource. This is always admin#directory#tokenList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # JSON template for User object in Directory API.
      class User
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addresses`
        # @return [Object]
        attr_accessor :addresses
      
        # Indicates if user has agreed to terms (Read-only)
        # Corresponds to the JSON property `agreedToTerms`
        # @return [Boolean]
        attr_accessor :agreed_to_terms
        alias_method :agreed_to_terms?, :agreed_to_terms
      
        # List of aliases (Read-only)
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # Boolean indicating if the user should change password in next login
        # Corresponds to the JSON property `changePasswordAtNextLogin`
        # @return [Boolean]
        attr_accessor :change_password_at_next_login
        alias_method :change_password_at_next_login?, :change_password_at_next_login
      
        # User's Google account creation time. (Read-only)
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # Custom fields of the user.
        # Corresponds to the JSON property `customSchemas`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :custom_schemas
      
        # CustomerId of User (Read-only)
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # 
        # Corresponds to the JSON property `deletionTime`
        # @return [DateTime]
        attr_accessor :deletion_time
      
        # 
        # Corresponds to the JSON property `emails`
        # @return [Object]
        attr_accessor :emails
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `externalIds`
        # @return [Object]
        attr_accessor :external_ids
      
        # Hash function name for password. Supported are MD5, SHA-1 and crypt
        # Corresponds to the JSON property `hashFunction`
        # @return [String]
        attr_accessor :hash_function
      
        # Unique identifier of User (Read-only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `ims`
        # @return [Object]
        attr_accessor :ims
      
        # Boolean indicating if user is included in Global Address List
        # Corresponds to the JSON property `includeInGlobalAddressList`
        # @return [Boolean]
        attr_accessor :include_in_global_address_list
        alias_method :include_in_global_address_list?, :include_in_global_address_list
      
        # Boolean indicating if ip is whitelisted
        # Corresponds to the JSON property `ipWhitelisted`
        # @return [Boolean]
        attr_accessor :ip_whitelisted
        alias_method :ip_whitelisted?, :ip_whitelisted
      
        # Boolean indicating if the user is admin (Read-only)
        # Corresponds to the JSON property `isAdmin`
        # @return [Boolean]
        attr_accessor :is_admin
        alias_method :is_admin?, :is_admin
      
        # Boolean indicating if the user is delegated admin (Read-only)
        # Corresponds to the JSON property `isDelegatedAdmin`
        # @return [Boolean]
        attr_accessor :is_delegated_admin
        alias_method :is_delegated_admin?, :is_delegated_admin
      
        # Is mailbox setup (Read-only)
        # Corresponds to the JSON property `isMailboxSetup`
        # @return [Boolean]
        attr_accessor :is_mailbox_setup
        alias_method :is_mailbox_setup?, :is_mailbox_setup
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User's last login time. (Read-only)
        # Corresponds to the JSON property `lastLoginTime`
        # @return [DateTime]
        attr_accessor :last_login_time
      
        # JSON template for name of a user in Directory API.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::AdminDirectoryV1::UserName]
        attr_accessor :name
      
        # List of non editable aliases (Read-only)
        # Corresponds to the JSON property `nonEditableAliases`
        # @return [Array<String>]
        attr_accessor :non_editable_aliases
      
        # 
        # Corresponds to the JSON property `notes`
        # @return [Object]
        attr_accessor :notes
      
        # OrgUnit of User
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        # 
        # Corresponds to the JSON property `organizations`
        # @return [Object]
        attr_accessor :organizations
      
        # User's password
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `phones`
        # @return [Object]
        attr_accessor :phones
      
        # username of User
        # Corresponds to the JSON property `primaryEmail`
        # @return [String]
        attr_accessor :primary_email
      
        # 
        # Corresponds to the JSON property `relations`
        # @return [Object]
        attr_accessor :relations
      
        # Indicates if user is suspended
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
        # Suspension reason if user is suspended (Read-only)
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        # ETag of the user's photo (Read-only)
        # Corresponds to the JSON property `thumbnailPhotoEtag`
        # @return [String]
        attr_accessor :thumbnail_photo_etag
      
        # Photo Url of the user (Read-only)
        # Corresponds to the JSON property `thumbnailPhotoUrl`
        # @return [String]
        attr_accessor :thumbnail_photo_url
      
        # 
        # Corresponds to the JSON property `websites`
        # @return [Object]
        attr_accessor :websites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] unless args[:addresses].nil?
          @agreed_to_terms = args[:agreed_to_terms] unless args[:agreed_to_terms].nil?
          @aliases = args[:aliases] unless args[:aliases].nil?
          @change_password_at_next_login = args[:change_password_at_next_login] unless args[:change_password_at_next_login].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @custom_schemas = args[:custom_schemas] unless args[:custom_schemas].nil?
          @customer_id = args[:customer_id] unless args[:customer_id].nil?
          @deletion_time = args[:deletion_time] unless args[:deletion_time].nil?
          @emails = args[:emails] unless args[:emails].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @external_ids = args[:external_ids] unless args[:external_ids].nil?
          @hash_function = args[:hash_function] unless args[:hash_function].nil?
          @id = args[:id] unless args[:id].nil?
          @ims = args[:ims] unless args[:ims].nil?
          @include_in_global_address_list = args[:include_in_global_address_list] unless args[:include_in_global_address_list].nil?
          @ip_whitelisted = args[:ip_whitelisted] unless args[:ip_whitelisted].nil?
          @is_admin = args[:is_admin] unless args[:is_admin].nil?
          @is_delegated_admin = args[:is_delegated_admin] unless args[:is_delegated_admin].nil?
          @is_mailbox_setup = args[:is_mailbox_setup] unless args[:is_mailbox_setup].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_login_time = args[:last_login_time] unless args[:last_login_time].nil?
          @name = args[:name] unless args[:name].nil?
          @non_editable_aliases = args[:non_editable_aliases] unless args[:non_editable_aliases].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @org_unit_path = args[:org_unit_path] unless args[:org_unit_path].nil?
          @organizations = args[:organizations] unless args[:organizations].nil?
          @password = args[:password] unless args[:password].nil?
          @phones = args[:phones] unless args[:phones].nil?
          @primary_email = args[:primary_email] unless args[:primary_email].nil?
          @relations = args[:relations] unless args[:relations].nil?
          @suspended = args[:suspended] unless args[:suspended].nil?
          @suspension_reason = args[:suspension_reason] unless args[:suspension_reason].nil?
          @thumbnail_photo_etag = args[:thumbnail_photo_etag] unless args[:thumbnail_photo_etag].nil?
          @thumbnail_photo_url = args[:thumbnail_photo_url] unless args[:thumbnail_photo_url].nil?
          @websites = args[:websites] unless args[:websites].nil?
        end
      end
      
      # JSON template for About (notes) of a user in Directory API.
      class UserAbout
        include Google::Apis::Core::Hashable
      
        # About entry can have a type which indicates the content type. It can either be
        # plain or html. By default, notes contents are assumed to contain plain text.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Actual value of notes.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] unless args[:content_type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # JSON template for address.
      class UserAddress
        include Google::Apis::Core::Hashable
      
        # Country.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Country code.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Custom type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # Extended Address.
        # Corresponds to the JSON property `extendedAddress`
        # @return [String]
        attr_accessor :extended_address
      
        # Formatted address.
        # Corresponds to the JSON property `formatted`
        # @return [String]
        attr_accessor :formatted
      
        # Locality.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Other parts of address.
        # Corresponds to the JSON property `poBox`
        # @return [String]
        attr_accessor :po_box
      
        # Postal code.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # If this is user's primary address. Only one entry could be marked as primary.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Region.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # User supplied address was structured. Structured addresses are NOT supported
        # at this time. You might be able to write structured addresses, but any values
        # will eventually be clobbered.
        # Corresponds to the JSON property `sourceIsStructured`
        # @return [Boolean]
        attr_accessor :source_is_structured
        alias_method :source_is_structured?, :source_is_structured
      
        # Street.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        # Each entry can have a type which indicates standard values of that entry. For
        # example address could be of home, work etc. In addition to the standard type,
        # an entry can have a custom type and can take any value. Such type should have
        # the CUSTOM value as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] unless args[:country].nil?
          @country_code = args[:country_code] unless args[:country_code].nil?
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @extended_address = args[:extended_address] unless args[:extended_address].nil?
          @formatted = args[:formatted] unless args[:formatted].nil?
          @locality = args[:locality] unless args[:locality].nil?
          @po_box = args[:po_box] unless args[:po_box].nil?
          @postal_code = args[:postal_code] unless args[:postal_code].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @region = args[:region] unless args[:region].nil?
          @source_is_structured = args[:source_is_structured] unless args[:source_is_structured].nil?
          @street_address = args[:street_address] unless args[:street_address].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # JSON template for an email.
      class UserEmail
        include Google::Apis::Core::Hashable
      
        # Email id of the user.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # If this is user's primary email. Only one entry could be marked as primary.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example email could be of home, work etc. In addition to the standard type, an
        # entry can have a custom type and can take any value Such types should have the
        # CUSTOM value as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # JSON template for an externalId entry.
      class UserExternalId
        include Google::Apis::Core::Hashable
      
        # Custom type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # The type of the Id.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value of the id.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # JSON template for instant messenger of an user.
      class UserIm
        include Google::Apis::Core::Hashable
      
        # Custom protocol.
        # Corresponds to the JSON property `customProtocol`
        # @return [String]
        attr_accessor :custom_protocol
      
        # Custom type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # Instant messenger id.
        # Corresponds to the JSON property `im`
        # @return [String]
        attr_accessor :im
      
        # If this is user's primary im. Only one entry could be marked as primary.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Protocol used in the instant messenger. It should be one of the values from
        # ImProtocolTypes map. Similar to type, it can take a CUSTOM value and specify
        # the custom name in customProtocol field.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example instant messengers could be of home, work etc. In addition to the
        # standard type, an entry can have a custom type and can take any value. Such
        # types should have the CUSTOM value as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_protocol = args[:custom_protocol] unless args[:custom_protocol].nil?
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @im = args[:im] unless args[:im].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @protocol = args[:protocol] unless args[:protocol].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # JSON request template for setting/revoking admin status of a user in Directory
      # API.
      class UserMakeAdmin
        include Google::Apis::Core::Hashable
      
        # Boolean indicating new admin status of the user
        # Corresponds to the JSON property `status`
        # @return [Boolean]
        attr_accessor :status
        alias_method :status?, :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # JSON template for name of a user in Directory API.
      class UserName
        include Google::Apis::Core::Hashable
      
        # Last Name
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Full Name
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # First Name
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] unless args[:family_name].nil?
          @full_name = args[:full_name] unless args[:full_name].nil?
          @given_name = args[:given_name] unless args[:given_name].nil?
        end
      end
      
      # JSON template for an organization entry.
      class UserOrganization
        include Google::Apis::Core::Hashable
      
        # The cost center of the users department.
        # Corresponds to the JSON property `costCenter`
        # @return [String]
        attr_accessor :cost_center
      
        # Custom type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # Department within the organization.
        # Corresponds to the JSON property `department`
        # @return [String]
        attr_accessor :department
      
        # Description of the organization.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The domain to which the organization belongs to.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Location of the organization. This need not be fully qualified address.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the organization
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If it user's primary organization.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Symbol of the organization.
        # Corresponds to the JSON property `symbol`
        # @return [String]
        attr_accessor :symbol
      
        # Title (designation) of the user in the organization.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example organization could be of school, work etc. In addition to the standard
        # type, an entry can have a custom type and can give it any name. Such types
        # should have the CUSTOM value as type and also have a CustomType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_center = args[:cost_center] unless args[:cost_center].nil?
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @department = args[:department] unless args[:department].nil?
          @description = args[:description] unless args[:description].nil?
          @domain = args[:domain] unless args[:domain].nil?
          @location = args[:location] unless args[:location].nil?
          @name = args[:name] unless args[:name].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @symbol = args[:symbol] unless args[:symbol].nil?
          @title = args[:title] unless args[:title].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # JSON template for a phone entry.
      class UserPhone
        include Google::Apis::Core::Hashable
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # If this is user's primary phone or not.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example phone could be of home_fax, work, mobile etc. In addition to the
        # standard type, an entry can have a custom type and can give it any name. Such
        # types should have the CUSTOM value as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Phone number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # JSON template for Photo object in Directory API.
      class UserPhoto
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Height in pixels of the photo
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Unique identifier of User (Read-only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Mime Type of the photo
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Base64 encoded photo data
        # Corresponds to the JSON property `photoData`
        # @return [String]
        attr_accessor :photo_data
      
        # Primary email of User (Read-only)
        # Corresponds to the JSON property `primaryEmail`
        # @return [String]
        attr_accessor :primary_email
      
        # Width in pixels of the photo
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @height = args[:height] unless args[:height].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @photo_data = args[:photo_data] unless args[:photo_data].nil?
          @primary_email = args[:primary_email] unless args[:primary_email].nil?
          @width = args[:width] unless args[:width].nil?
        end
      end
      
      # JSON template for a relation entry.
      class UserRelation
        include Google::Apis::Core::Hashable
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # The relation of the user. Some of the possible values are mother, father,
        # sister, brother, manager, assistant, partner.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The name of the relation.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # JSON request template to undelete a user in Directory API.
      class UserUndelete
        include Google::Apis::Core::Hashable
      
        # OrgUnit of User
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @org_unit_path = args[:org_unit_path] unless args[:org_unit_path].nil?
        end
      end
      
      # JSON template for a website entry.
      class UserWebsite
        include Google::Apis::Core::Hashable
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # If this is user's primary website or not.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example website could be of home, work, blog etc. In addition to the standard
        # type, an entry can have a custom type and can give it any name. Such types
        # should have the CUSTOM value as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Website.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_type = args[:custom_type] unless args[:custom_type].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # JSON response template for List Users operation in Apps Directory API.
      class Users
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Event that triggered this response (only used in case of Push Response)
        # Corresponds to the JSON property `trigger_event`
        # @return [String]
        attr_accessor :trigger_event
      
        # List of user objects.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::AdminDirectoryV1::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @trigger_event = args[:trigger_event] unless args[:trigger_event].nil?
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # JSON template for verification codes in Directory API.
      class VerificationCode
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the resource. This is always admin#directory#verificationCode.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The obfuscated unique ID of the user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # A current verification code for the user. Invalidated or used verification
        # codes are not returned as part of the result.
        # Corresponds to the JSON property `verificationCode`
        # @return [String]
        attr_accessor :verification_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
          @verification_code = args[:verification_code] unless args[:verification_code].nil?
        end
      end
      
      # JSON response template for List verification codes operation in Directory API.
      class VerificationCodes
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of verification code resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminDirectoryV1::VerificationCode>]
        attr_accessor :items
      
        # The type of the resource. This is always admin#directory#verificationCodesList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
    end
  end
end
