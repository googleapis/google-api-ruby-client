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
          @alias = args[:alias] if args.key?(:alias)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @primary_email = args[:primary_email] if args.key?(:primary_email)
        end
      end
      
      # JSON response template to list aliases in Directory API.
      class Aliases
        include Google::Apis::Core::Hashable
      
        # List of alias objects.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Object>]
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
          @aliases = args[:aliases] if args.key?(:aliases)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
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
          @code_id = args[:code_id] if args.key?(:code_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @last_time_used = args[:last_time_used] if args.key?(:last_time_used)
          @name = args[:name] if args.key?(:name)
          @user_key = args[:user_key] if args.key?(:user_key)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
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
          @etags = args[:etags] if args.key?(:etags)
          @kind = args[:kind] if args.key?(:kind)
          @resource_description = args[:resource_description] if args.key?(:resource_description)
          @resource_email = args[:resource_email] if args.key?(:resource_email)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @address = args[:address] if args.key?(:address)
          @expiration = args[:expiration] if args.key?(:expiration)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @params = args[:params] if args.key?(:params)
          @payload = args[:payload] if args.key?(:payload)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
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
          @active_time_ranges = args[:active_time_ranges] if args.key?(:active_time_ranges)
          @annotated_asset_id = args[:annotated_asset_id] if args.key?(:annotated_asset_id)
          @annotated_location = args[:annotated_location] if args.key?(:annotated_location)
          @annotated_user = args[:annotated_user] if args.key?(:annotated_user)
          @boot_mode = args[:boot_mode] if args.key?(:boot_mode)
          @device_id = args[:device_id] if args.key?(:device_id)
          @etag = args[:etag] if args.key?(:etag)
          @ethernet_mac_address = args[:ethernet_mac_address] if args.key?(:ethernet_mac_address)
          @firmware_version = args[:firmware_version] if args.key?(:firmware_version)
          @kind = args[:kind] if args.key?(:kind)
          @last_enrollment_time = args[:last_enrollment_time] if args.key?(:last_enrollment_time)
          @last_sync = args[:last_sync] if args.key?(:last_sync)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @notes = args[:notes] if args.key?(:notes)
          @order_number = args[:order_number] if args.key?(:order_number)
          @org_unit_path = args[:org_unit_path] if args.key?(:org_unit_path)
          @os_version = args[:os_version] if args.key?(:os_version)
          @platform_version = args[:platform_version] if args.key?(:platform_version)
          @recent_users = args[:recent_users] if args.key?(:recent_users)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @status = args[:status] if args.key?(:status)
          @support_end_date = args[:support_end_date] if args.key?(:support_end_date)
          @will_auto_renew = args[:will_auto_renew] if args.key?(:will_auto_renew)
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
            @active_time = args[:active_time] if args.key?(:active_time)
            @date = args[:date] if args.key?(:date)
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
            @email = args[:email] if args.key?(:email)
            @type = args[:type] if args.key?(:type)
          end
        end
      end
      
      # JSON request template for firing actions on ChromeOs Device in Directory
      # Devices API.
      class ChromeOsDeviceAction
        include Google::Apis::Core::Hashable
      
        # Action to be taken on the ChromeOs Device
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `deprovisionReason`
        # @return [String]
        attr_accessor :deprovision_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @deprovision_reason = args[:deprovision_reason] if args.key?(:deprovision_reason)
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
          @chromeosdevices = args[:chromeosdevices] if args.key?(:chromeosdevices)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @alternate_email = args[:alternate_email] if args.key?(:alternate_email)
          @customer_creation_time = args[:customer_creation_time] if args.key?(:customer_creation_time)
          @customer_domain = args[:customer_domain] if args.key?(:customer_domain)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @language = args[:language] if args.key?(:language)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
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
          @address_line1 = args[:address_line1] if args.key?(:address_line1)
          @address_line2 = args[:address_line2] if args.key?(:address_line2)
          @address_line3 = args[:address_line3] if args.key?(:address_line3)
          @contact_name = args[:contact_name] if args.key?(:contact_name)
          @country_code = args[:country_code] if args.key?(:country_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization_name = args[:organization_name] if args.key?(:organization_name)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region = args[:region] if args.key?(:region)
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
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @domain_alias_name = args[:domain_alias_name] if args.key?(:domain_alias_name)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @parent_domain_name = args[:parent_domain_name] if args.key?(:parent_domain_name)
          @verified = args[:verified] if args.key?(:verified)
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
          @domain_aliases = args[:domain_aliases] if args.key?(:domain_aliases)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
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
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @domain_aliases = args[:domain_aliases] if args.key?(:domain_aliases)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @etag = args[:etag] if args.key?(:etag)
          @is_primary = args[:is_primary] if args.key?(:is_primary)
          @kind = args[:kind] if args.key?(:kind)
          @verified = args[:verified] if args.key?(:verified)
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
          @domains = args[:domains] if args.key?(:domains)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
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
          @admin_created = args[:admin_created] if args.key?(:admin_created)
          @aliases = args[:aliases] if args.key?(:aliases)
          @description = args[:description] if args.key?(:description)
          @direct_members_count = args[:direct_members_count] if args.key?(:direct_members_count)
          @email = args[:email] if args.key?(:email)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @non_editable_aliases = args[:non_editable_aliases] if args.key?(:non_editable_aliases)
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
          @etag = args[:etag] if args.key?(:etag)
          @groups = args[:groups] if args.key?(:groups)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
        # Status of member (Immutable)
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of member (Immutable)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @role = args[:role] if args.key?(:role)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
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
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @members = args[:members] if args.key?(:members)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
        # Mobile Device Bootloader version (Read-only)
        # Corresponds to the JSON property `bootloaderVersion`
        # @return [String]
        attr_accessor :bootloader_version
      
        # Mobile Device Brand (Read-only)
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
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
      
        # DevicePasswordStatus (Read-only)
        # Corresponds to the JSON property `devicePasswordStatus`
        # @return [String]
        attr_accessor :device_password_status
      
        # List of owner user's email addresses (Read-only)
        # Corresponds to the JSON property `email`
        # @return [Array<String>]
        attr_accessor :email
      
        # Mobile Device Encryption Status (Read-only)
        # Corresponds to the JSON property `encryptionStatus`
        # @return [String]
        attr_accessor :encryption_status
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Date and time the device was first synchronized with the policy settings in
        # the Google Apps administrator control panel (Read-only)
        # Corresponds to the JSON property `firstSync`
        # @return [DateTime]
        attr_accessor :first_sync
      
        # Mobile Device Hardware (Read-only)
        # Corresponds to the JSON property `hardware`
        # @return [String]
        attr_accessor :hardware
      
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
      
        # Mobile Device manufacturer (Read-only)
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
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
      
        # DMAgentPermission (Read-only)
        # Corresponds to the JSON property `privilege`
        # @return [String]
        attr_accessor :privilege
      
        # Mobile Device release version version (Read-only)
        # Corresponds to the JSON property `releaseVersion`
        # @return [String]
        attr_accessor :release_version
      
        # Unique identifier of Mobile Device (Read-only)
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # Mobile Device Security patch level (Read-only)
        # Corresponds to the JSON property `securityPatchLevel`
        # @return [String]
        attr_accessor :security_patch_level
      
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
          @adb_status = args[:adb_status] if args.key?(:adb_status)
          @applications = args[:applications] if args.key?(:applications)
          @baseband_version = args[:baseband_version] if args.key?(:baseband_version)
          @bootloader_version = args[:bootloader_version] if args.key?(:bootloader_version)
          @brand = args[:brand] if args.key?(:brand)
          @build_number = args[:build_number] if args.key?(:build_number)
          @default_language = args[:default_language] if args.key?(:default_language)
          @developer_options_status = args[:developer_options_status] if args.key?(:developer_options_status)
          @device_compromised_status = args[:device_compromised_status] if args.key?(:device_compromised_status)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_password_status = args[:device_password_status] if args.key?(:device_password_status)
          @email = args[:email] if args.key?(:email)
          @encryption_status = args[:encryption_status] if args.key?(:encryption_status)
          @etag = args[:etag] if args.key?(:etag)
          @first_sync = args[:first_sync] if args.key?(:first_sync)
          @hardware = args[:hardware] if args.key?(:hardware)
          @hardware_id = args[:hardware_id] if args.key?(:hardware_id)
          @imei = args[:imei] if args.key?(:imei)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @kind = args[:kind] if args.key?(:kind)
          @last_sync = args[:last_sync] if args.key?(:last_sync)
          @managed_account_is_on_owner_profile = args[:managed_account_is_on_owner_profile] if args.key?(:managed_account_is_on_owner_profile)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @name = args[:name] if args.key?(:name)
          @network_operator = args[:network_operator] if args.key?(:network_operator)
          @os = args[:os] if args.key?(:os)
          @other_accounts_info = args[:other_accounts_info] if args.key?(:other_accounts_info)
          @privilege = args[:privilege] if args.key?(:privilege)
          @release_version = args[:release_version] if args.key?(:release_version)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @security_patch_level = args[:security_patch_level] if args.key?(:security_patch_level)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @status = args[:status] if args.key?(:status)
          @supports_work_profile = args[:supports_work_profile] if args.key?(:supports_work_profile)
          @type = args[:type] if args.key?(:type)
          @unknown_sources_status = args[:unknown_sources_status] if args.key?(:unknown_sources_status)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @wifi_mac_address = args[:wifi_mac_address] if args.key?(:wifi_mac_address)
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
            @display_name = args[:display_name] if args.key?(:display_name)
            @package_name = args[:package_name] if args.key?(:package_name)
            @permission = args[:permission] if args.key?(:permission)
            @version_code = args[:version_code] if args.key?(:version_code)
            @version_name = args[:version_name] if args.key?(:version_name)
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
          @action = args[:action] if args.key?(:action)
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
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @mobiledevices = args[:mobiledevices] if args.key?(:mobiledevices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @body = args[:body] if args.key?(:body)
          @etag = args[:etag] if args.key?(:etag)
          @from_address = args[:from_address] if args.key?(:from_address)
          @is_unread = args[:is_unread] if args.key?(:is_unread)
          @kind = args[:kind] if args.key?(:kind)
          @notification_id = args[:notification_id] if args.key?(:notification_id)
          @send_time = args[:send_time] if args.key?(:send_time)
          @subject = args[:subject] if args.key?(:subject)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unread_notifications_count = args[:unread_notifications_count] if args.key?(:unread_notifications_count)
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
          @block_inheritance = args[:block_inheritance] if args.key?(:block_inheritance)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @org_unit_path = args[:org_unit_path] if args.key?(:org_unit_path)
          @parent_org_unit_id = args[:parent_org_unit_id] if args.key?(:parent_org_unit_id)
          @parent_org_unit_path = args[:parent_org_unit_path] if args.key?(:parent_org_unit_path)
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
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @organization_units = args[:organization_units] if args.key?(:organization_units)
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
          @child_privileges = args[:child_privileges] if args.key?(:child_privileges)
          @etag = args[:etag] if args.key?(:etag)
          @is_ou_scopable = args[:is_ou_scopable] if args.key?(:is_ou_scopable)
          @kind = args[:kind] if args.key?(:kind)
          @privilege_name = args[:privilege_name] if args.key?(:privilege_name)
          @service_id = args[:service_id] if args.key?(:service_id)
          @service_name = args[:service_name] if args.key?(:service_name)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
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
          @etag = args[:etag] if args.key?(:etag)
          @is_super_admin_role = args[:is_super_admin_role] if args.key?(:is_super_admin_role)
          @is_system_role = args[:is_system_role] if args.key?(:is_system_role)
          @kind = args[:kind] if args.key?(:kind)
          @role_description = args[:role_description] if args.key?(:role_description)
          @role_id = args[:role_id] if args.key?(:role_id)
          @role_name = args[:role_name] if args.key?(:role_name)
          @role_privileges = args[:role_privileges] if args.key?(:role_privileges)
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
            @privilege_name = args[:privilege_name] if args.key?(:privilege_name)
            @service_id = args[:service_id] if args.key?(:service_id)
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
          @assigned_to = args[:assigned_to] if args.key?(:assigned_to)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @role_assignment_id = args[:role_assignment_id] if args.key?(:role_assignment_id)
          @role_id = args[:role_id] if args.key?(:role_id)
          @scope_type = args[:scope_type] if args.key?(:scope_type)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @etag = args[:etag] if args.key?(:etag)
          @fields = args[:fields] if args.key?(:fields)
          @kind = args[:kind] if args.key?(:kind)
          @schema_id = args[:schema_id] if args.key?(:schema_id)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
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
          @etag = args[:etag] if args.key?(:etag)
          @field_id = args[:field_id] if args.key?(:field_id)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_type = args[:field_type] if args.key?(:field_type)
          @indexed = args[:indexed] if args.key?(:indexed)
          @kind = args[:kind] if args.key?(:kind)
          @multi_valued = args[:multi_valued] if args.key?(:multi_valued)
          @numeric_indexing_spec = args[:numeric_indexing_spec] if args.key?(:numeric_indexing_spec)
          @read_access_type = args[:read_access_type] if args.key?(:read_access_type)
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
            @max_value = args[:max_value] if args.key?(:max_value)
            @min_value = args[:min_value] if args.key?(:min_value)
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
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @schemas = args[:schemas] if args.key?(:schemas)
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
          @anonymous = args[:anonymous] if args.key?(:anonymous)
          @client_id = args[:client_id] if args.key?(:client_id)
          @display_text = args[:display_text] if args.key?(:display_text)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @native_app = args[:native_app] if args.key?(:native_app)
          @scopes = args[:scopes] if args.key?(:scopes)
          @user_key = args[:user_key] if args.key?(:user_key)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
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
          @addresses = args[:addresses] if args.key?(:addresses)
          @agreed_to_terms = args[:agreed_to_terms] if args.key?(:agreed_to_terms)
          @aliases = args[:aliases] if args.key?(:aliases)
          @change_password_at_next_login = args[:change_password_at_next_login] if args.key?(:change_password_at_next_login)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @custom_schemas = args[:custom_schemas] if args.key?(:custom_schemas)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @deletion_time = args[:deletion_time] if args.key?(:deletion_time)
          @emails = args[:emails] if args.key?(:emails)
          @etag = args[:etag] if args.key?(:etag)
          @external_ids = args[:external_ids] if args.key?(:external_ids)
          @hash_function = args[:hash_function] if args.key?(:hash_function)
          @id = args[:id] if args.key?(:id)
          @ims = args[:ims] if args.key?(:ims)
          @include_in_global_address_list = args[:include_in_global_address_list] if args.key?(:include_in_global_address_list)
          @ip_whitelisted = args[:ip_whitelisted] if args.key?(:ip_whitelisted)
          @is_admin = args[:is_admin] if args.key?(:is_admin)
          @is_delegated_admin = args[:is_delegated_admin] if args.key?(:is_delegated_admin)
          @is_mailbox_setup = args[:is_mailbox_setup] if args.key?(:is_mailbox_setup)
          @kind = args[:kind] if args.key?(:kind)
          @last_login_time = args[:last_login_time] if args.key?(:last_login_time)
          @name = args[:name] if args.key?(:name)
          @non_editable_aliases = args[:non_editable_aliases] if args.key?(:non_editable_aliases)
          @notes = args[:notes] if args.key?(:notes)
          @org_unit_path = args[:org_unit_path] if args.key?(:org_unit_path)
          @organizations = args[:organizations] if args.key?(:organizations)
          @password = args[:password] if args.key?(:password)
          @phones = args[:phones] if args.key?(:phones)
          @primary_email = args[:primary_email] if args.key?(:primary_email)
          @relations = args[:relations] if args.key?(:relations)
          @suspended = args[:suspended] if args.key?(:suspended)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
          @thumbnail_photo_etag = args[:thumbnail_photo_etag] if args.key?(:thumbnail_photo_etag)
          @thumbnail_photo_url = args[:thumbnail_photo_url] if args.key?(:thumbnail_photo_url)
          @websites = args[:websites] if args.key?(:websites)
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
          @content_type = args[:content_type] if args.key?(:content_type)
          @value = args[:value] if args.key?(:value)
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
          @country = args[:country] if args.key?(:country)
          @country_code = args[:country_code] if args.key?(:country_code)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @extended_address = args[:extended_address] if args.key?(:extended_address)
          @formatted = args[:formatted] if args.key?(:formatted)
          @locality = args[:locality] if args.key?(:locality)
          @po_box = args[:po_box] if args.key?(:po_box)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @primary = args[:primary] if args.key?(:primary)
          @region = args[:region] if args.key?(:region)
          @source_is_structured = args[:source_is_structured] if args.key?(:source_is_structured)
          @street_address = args[:street_address] if args.key?(:street_address)
          @type = args[:type] if args.key?(:type)
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
          @address = args[:address] if args.key?(:address)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @primary = args[:primary] if args.key?(:primary)
          @type = args[:type] if args.key?(:type)
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
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
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
          @custom_protocol = args[:custom_protocol] if args.key?(:custom_protocol)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @im = args[:im] if args.key?(:im)
          @primary = args[:primary] if args.key?(:primary)
          @protocol = args[:protocol] if args.key?(:protocol)
          @type = args[:type] if args.key?(:type)
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
          @status = args[:status] if args.key?(:status)
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
          @family_name = args[:family_name] if args.key?(:family_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @given_name = args[:given_name] if args.key?(:given_name)
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
          @cost_center = args[:cost_center] if args.key?(:cost_center)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @department = args[:department] if args.key?(:department)
          @description = args[:description] if args.key?(:description)
          @domain = args[:domain] if args.key?(:domain)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @primary = args[:primary] if args.key?(:primary)
          @symbol = args[:symbol] if args.key?(:symbol)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
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
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @primary = args[:primary] if args.key?(:primary)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
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
          @etag = args[:etag] if args.key?(:etag)
          @height = args[:height] if args.key?(:height)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @photo_data = args[:photo_data] if args.key?(:photo_data)
          @primary_email = args[:primary_email] if args.key?(:primary_email)
          @width = args[:width] if args.key?(:width)
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
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
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
          @org_unit_path = args[:org_unit_path] if args.key?(:org_unit_path)
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
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @primary = args[:primary] if args.key?(:primary)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
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
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @trigger_event = args[:trigger_event] if args.key?(:trigger_event)
          @users = args[:users] if args.key?(:users)
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
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @user_id = args[:user_id] if args.key?(:user_id)
          @verification_code = args[:verification_code] if args.key?(:verification_code)
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
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
    end
  end
end
