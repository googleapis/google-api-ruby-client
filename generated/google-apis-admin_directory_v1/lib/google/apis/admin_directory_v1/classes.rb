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
    module AdminDirectoryV1
      
      # JSON template for Alias object in Directory API.
      class Alias
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # 
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
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
      
        # 
        # Corresponds to the JSON property `aliases`
        # @return [Array<Object>]
        attr_accessor :aliases
      
        # 
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
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
      
      # An application-specific password (ASP) is used with applications that do not
      # accept a verification code when logging into the application on certain
      # devices. The ASP access code is used instead of the login and password you
      # commonly use when accessing an application through a browser. For more
      # information about ASPs and how to create one, see the [help center](https://
      # support.google.com/a/answer/2537800#asp).
      class Asp
        include Google::Apis::Core::Hashable
      
        # The unique ID of the ASP.
        # Corresponds to the JSON property `codeId`
        # @return [Fixnum]
        attr_accessor :code_id
      
        # The time when the ASP was created. Expressed in [Unix time](https://en.
        # wikipedia.org/wiki/Epoch_time) format.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # ETag of the ASP.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. This is always `admin#directory#asp`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time when the ASP was last used. Expressed in [Unix time](https://en.
        # wikipedia.org/wiki/Epoch_time) format.
        # Corresponds to the JSON property `lastTimeUsed`
        # @return [Fixnum]
        attr_accessor :last_time_used
      
        # The name of the application that the user, represented by their `userId`,
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
      
        # The type of the API resource. This is always `admin#directory#aspList`.
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
      
      # Auxiliary message about issues with printers or settings. Example: `
      # message_type:AUXILIARY_MESSAGE_WARNING, field_mask:make_and_model, message:"
      # Given printer is invalid or no longer supported."`
      class AuxiliaryMessage
        include Google::Apis::Core::Hashable
      
        # Human readable message in English. Example: "Given printer is invalid or no
        # longer supported."
        # Corresponds to the JSON property `auxiliaryMessage`
        # @return [String]
        attr_accessor :auxiliary_message
      
        # Field that this message concerns.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # Message severity
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_message = args[:auxiliary_message] if args.key?(:auxiliary_message)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Request to add multiple new print servers in a batch.
      class BatchCreatePrintServersRequest
        include Google::Apis::Core::Hashable
      
        # Required. A list of `PrintServer` resources to be created (max `50` per batch).
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AdminDirectoryV1::CreatePrintServerRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # 
      class BatchCreatePrintServersResponse
        include Google::Apis::Core::Hashable
      
        # A list of create failures. `PrintServer` IDs are not populated, as print
        # servers were not created.
        # Corresponds to the JSON property `failures`
        # @return [Array<Google::Apis::AdminDirectoryV1::PrintServerFailureInfo>]
        attr_accessor :failures
      
        # A list of successfully created print servers with their IDs populated.
        # Corresponds to the JSON property `printServers`
        # @return [Array<Google::Apis::AdminDirectoryV1::PrintServer>]
        attr_accessor :print_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failures = args[:failures] if args.key?(:failures)
          @print_servers = args[:print_servers] if args.key?(:print_servers)
        end
      end
      
      # Request for adding new printers in batch.
      class BatchCreatePrintersRequest
        include Google::Apis::Core::Hashable
      
        # A list of Printers to be created. Max 50 at a time.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AdminDirectoryV1::CreatePrinterRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response for adding new printers in batch.
      class BatchCreatePrintersResponse
        include Google::Apis::Core::Hashable
      
        # A list of create failures. Printer IDs are not populated, as printer were not
        # created.
        # Corresponds to the JSON property `failures`
        # @return [Array<Google::Apis::AdminDirectoryV1::FailureInfo>]
        attr_accessor :failures
      
        # A list of successfully created printers with their IDs populated.
        # Corresponds to the JSON property `printers`
        # @return [Array<Google::Apis::AdminDirectoryV1::Printer>]
        attr_accessor :printers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failures = args[:failures] if args.key?(:failures)
          @printers = args[:printers] if args.key?(:printers)
        end
      end
      
      # Request to delete multiple existing print servers in a batch.
      class BatchDeletePrintServersRequest
        include Google::Apis::Core::Hashable
      
        # A list of print server IDs that should be deleted (max `100` per batch).
        # Corresponds to the JSON property `printServerIds`
        # @return [Array<String>]
        attr_accessor :print_server_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @print_server_ids = args[:print_server_ids] if args.key?(:print_server_ids)
        end
      end
      
      # 
      class BatchDeletePrintServersResponse
        include Google::Apis::Core::Hashable
      
        # A list of update failures.
        # Corresponds to the JSON property `failedPrintServers`
        # @return [Array<Google::Apis::AdminDirectoryV1::PrintServerFailureInfo>]
        attr_accessor :failed_print_servers
      
        # A list of print server IDs that were successfully deleted.
        # Corresponds to the JSON property `printServerIds`
        # @return [Array<String>]
        attr_accessor :print_server_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_print_servers = args[:failed_print_servers] if args.key?(:failed_print_servers)
          @print_server_ids = args[:print_server_ids] if args.key?(:print_server_ids)
        end
      end
      
      # Request for deleting existing printers in batch.
      class BatchDeletePrintersRequest
        include Google::Apis::Core::Hashable
      
        # A list of Printer.id that should be deleted. Max 100 at a time.
        # Corresponds to the JSON property `printerIds`
        # @return [Array<String>]
        attr_accessor :printer_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @printer_ids = args[:printer_ids] if args.key?(:printer_ids)
        end
      end
      
      # Response for deleting existing printers in batch.
      class BatchDeletePrintersResponse
        include Google::Apis::Core::Hashable
      
        # A list of update failures.
        # Corresponds to the JSON property `failedPrinters`
        # @return [Array<Google::Apis::AdminDirectoryV1::FailureInfo>]
        attr_accessor :failed_printers
      
        # A list of Printer.id that were successfully deleted.
        # Corresponds to the JSON property `printerIds`
        # @return [Array<String>]
        attr_accessor :printer_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_printers = args[:failed_printers] if args.key?(:failed_printers)
          @printer_ids = args[:printer_ids] if args.key?(:printer_ids)
        end
      end
      
      # Public API: Resources.buildings
      class Building
        include Google::Apis::Core::Hashable
      
        # Public API: Resources.buildings
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::AdminDirectoryV1::BuildingAddress]
        attr_accessor :address
      
        # Unique identifier for the building. The maximum length is 100 characters.
        # Corresponds to the JSON property `buildingId`
        # @return [String]
        attr_accessor :building_id
      
        # The building name as seen by users in Calendar. Must be unique for the
        # customer. For example, "NYC-CHEL". The maximum length is 100 characters.
        # Corresponds to the JSON property `buildingName`
        # @return [String]
        attr_accessor :building_name
      
        # Public API: Resources.buildings
        # Corresponds to the JSON property `coordinates`
        # @return [Google::Apis::AdminDirectoryV1::BuildingCoordinates]
        attr_accessor :coordinates
      
        # A brief description of the building. For example, "Chelsea Market".
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etags`
        # @return [String]
        attr_accessor :etags
      
        # The display names for all floors in this building. The floors are expected to
        # be sorted in ascending order, from lowest floor to highest floor. For example,
        # ["B2", "B1", "L", "1", "2", "2M", "3", "PH"] Must contain at least one entry.
        # Corresponds to the JSON property `floorNames`
        # @return [Array<String>]
        attr_accessor :floor_names
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @building_id = args[:building_id] if args.key?(:building_id)
          @building_name = args[:building_name] if args.key?(:building_name)
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @description = args[:description] if args.key?(:description)
          @etags = args[:etags] if args.key?(:etags)
          @floor_names = args[:floor_names] if args.key?(:floor_names)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Public API: Resources.buildings
      class BuildingAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address.
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use addressLines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. Postal code of the address.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Required. CLDR region code of the country/region of the address.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Optional. Sublocality of the address.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Public API: Resources.buildings
      class BuildingCoordinates
        include Google::Apis::Core::Hashable
      
        # Latitude in decimal degrees.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # Longitude in decimal degrees.
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # Public API: Resources.buildings
      class Buildings
        include Google::Apis::Core::Hashable
      
        # The Buildings in this page of results.
        # Corresponds to the JSON property `buildings`
        # @return [Array<Google::Apis::AdminDirectoryV1::Building>]
        attr_accessor :buildings
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Kind of resource this is.
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
          @buildings = args[:buildings] if args.key?(:buildings)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Public API: Resources.calendars
      class CalendarResource
        include Google::Apis::Core::Hashable
      
        # Unique ID for the building a resource is located in.
        # Corresponds to the JSON property `buildingId`
        # @return [String]
        attr_accessor :building_id
      
        # Capacity of a resource, number of seats in a room.
        # Corresponds to the JSON property `capacity`
        # @return [Fixnum]
        attr_accessor :capacity
      
        # ETag of the resource.
        # Corresponds to the JSON property `etags`
        # @return [String]
        attr_accessor :etags
      
        # Instances of features for the calendar resource.
        # Corresponds to the JSON property `featureInstances`
        # @return [Object]
        attr_accessor :feature_instances
      
        # Name of the floor a resource is located on.
        # Corresponds to the JSON property `floorName`
        # @return [String]
        attr_accessor :floor_name
      
        # Name of the section within a floor a resource is located in.
        # Corresponds to the JSON property `floorSection`
        # @return [String]
        attr_accessor :floor_section
      
        # The read-only auto-generated name of the calendar resource which includes
        # metadata about the resource such as building name, floor, capacity, etc. For
        # example, "NYC-2-Training Room 1A (16)".
        # Corresponds to the JSON property `generatedResourceName`
        # @return [String]
        attr_accessor :generated_resource_name
      
        # The type of the resource. For calendar resources, the value is `admin#
        # directory#resources#calendars#CalendarResource`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The category of the calendar resource. Either CONFERENCE_ROOM or OTHER. Legacy
        # data is set to CATEGORY_UNKNOWN.
        # Corresponds to the JSON property `resourceCategory`
        # @return [String]
        attr_accessor :resource_category
      
        # Description of the resource, visible only to admins.
        # Corresponds to the JSON property `resourceDescription`
        # @return [String]
        attr_accessor :resource_description
      
        # The read-only email for the calendar resource. Generated as part of creating a
        # new calendar resource.
        # Corresponds to the JSON property `resourceEmail`
        # @return [String]
        attr_accessor :resource_email
      
        # The unique ID for the calendar resource.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The name of the calendar resource. For example, "Training Room 1A".
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The type of the calendar resource, intended for non-room resources.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Description of the resource, visible to users and admins.
        # Corresponds to the JSON property `userVisibleDescription`
        # @return [String]
        attr_accessor :user_visible_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @building_id = args[:building_id] if args.key?(:building_id)
          @capacity = args[:capacity] if args.key?(:capacity)
          @etags = args[:etags] if args.key?(:etags)
          @feature_instances = args[:feature_instances] if args.key?(:feature_instances)
          @floor_name = args[:floor_name] if args.key?(:floor_name)
          @floor_section = args[:floor_section] if args.key?(:floor_section)
          @generated_resource_name = args[:generated_resource_name] if args.key?(:generated_resource_name)
          @kind = args[:kind] if args.key?(:kind)
          @resource_category = args[:resource_category] if args.key?(:resource_category)
          @resource_description = args[:resource_description] if args.key?(:resource_description)
          @resource_email = args[:resource_email] if args.key?(:resource_email)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @user_visible_description = args[:user_visible_description] if args.key?(:user_visible_description)
        end
      end
      
      # Public API: Resources.calendars
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
      
        # Identifies this as a collection of CalendarResources. This is always `admin#
        # directory#resources#calendars#calendarResourcesList`.
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
        # @return [Fixnum]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource, which is `api#channel`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional. For
        # example, `params.ttl` specifies the time-to-live in seconds for the
        # notification channel, where the default is 2 hours and the maximum TTL is 2
        # days.
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
      
      # Google Chrome devices run on the [Chrome OS](https://support.google.com/
      # chromeos). For more information about common API tasks, see the [Developer's
      # Guide](/admin-sdk/directory/v1/guides/manage-chrome-devices).
      class ChromeOsDevice
        include Google::Apis::Core::Hashable
      
        # A list of active time ranges (Read-only).
        # Corresponds to the JSON property `activeTimeRanges`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::ActiveTimeRange>]
        attr_accessor :active_time_ranges
      
        # The asset identifier as noted by an administrator or specified during
        # enrollment.
        # Corresponds to the JSON property `annotatedAssetId`
        # @return [String]
        attr_accessor :annotated_asset_id
      
        # The address or location of the device as noted by the administrator. Maximum
        # length is `200` characters. Empty values are allowed.
        # Corresponds to the JSON property `annotatedLocation`
        # @return [String]
        attr_accessor :annotated_location
      
        # The user of the device as noted by the administrator. Maximum length is 100
        # characters. Empty values are allowed.
        # Corresponds to the JSON property `annotatedUser`
        # @return [String]
        attr_accessor :annotated_user
      
        # (Read-only) The timestamp after which the device will stop receiving Chrome
        # updates or support
        # Corresponds to the JSON property `autoUpdateExpiration`
        # @return [Fixnum]
        attr_accessor :auto_update_expiration
      
        # The boot mode for the device. The possible values are: * `Verified`: The
        # device is running a valid version of the Chrome OS. * `Dev`: The devices's
        # developer hardware switch is enabled. When booted, the device has a command
        # line shell. For an example of a developer switch, see the [Chromebook
        # developer information](https://www.chromium.org/chromium-os/developer-
        # information-for-chrome-os-devices/samsung-series-5-chromebook#TOC-Developer-
        # switch).
        # Corresponds to the JSON property `bootMode`
        # @return [String]
        attr_accessor :boot_mode
      
        # Information regarding CPU specs in the device.
        # Corresponds to the JSON property `cpuInfo`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::CpuInfo>]
        attr_accessor :cpu_info
      
        # Reports of CPU utilization and temperature (Read-only)
        # Corresponds to the JSON property `cpuStatusReports`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::CpuStatusReport>]
        attr_accessor :cpu_status_reports
      
        # A list of device files to download (Read-only)
        # Corresponds to the JSON property `deviceFiles`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::DeviceFile>]
        attr_accessor :device_files
      
        # The unique ID of the Chrome device.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Reports of disk space and other info about mounted/connected volumes.
        # Corresponds to the JSON property `diskVolumeReports`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::DiskVolumeReport>]
        attr_accessor :disk_volume_reports
      
        # (Read-only) Built-in MAC address for the docking station that the device
        # connected to. Factory sets Media access control address (MAC address) assigned
        # for use by a dock. It is reserved specifically for MAC pass through device
        # policy. The format is twelve (12) hexadecimal digits without any delimiter (
        # uppercase letters). This is only relevant for some devices.
        # Corresponds to the JSON property `dockMacAddress`
        # @return [String]
        attr_accessor :dock_mac_address
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The device's MAC address on the ethernet network interface.
        # Corresponds to the JSON property `ethernetMacAddress`
        # @return [String]
        attr_accessor :ethernet_mac_address
      
        # (Read-only) MAC address used by the Chromebook’s internal ethernet port, and
        # for onboard network (ethernet) interface. The format is twelve (12)
        # hexadecimal digits without any delimiter (uppercase letters). This is only
        # relevant for some devices.
        # Corresponds to the JSON property `ethernetMacAddress0`
        # @return [String]
        attr_accessor :ethernet_mac_address0
      
        # The Chrome device's firmware version.
        # Corresponds to the JSON property `firmwareVersion`
        # @return [String]
        attr_accessor :firmware_version
      
        # Date and time for the first time the device was enrolled.
        # Corresponds to the JSON property `firstEnrollmentTime`
        # @return [String]
        attr_accessor :first_enrollment_time
      
        # The type of resource. For the Chromeosdevices resource, the value is `admin#
        # directory#chromeosdevice`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date and time the device was last enrolled (Read-only)
        # Corresponds to the JSON property `lastEnrollmentTime`
        # @return [DateTime]
        attr_accessor :last_enrollment_time
      
        # Contains last known network (Read-only)
        # Corresponds to the JSON property `lastKnownNetwork`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::LastKnownNetwork>]
        attr_accessor :last_known_network
      
        # Date and time the device was last synchronized with the policy settings in the
        # G Suite administrator control panel (Read-only)
        # Corresponds to the JSON property `lastSync`
        # @return [DateTime]
        attr_accessor :last_sync
      
        # The device's wireless MAC address. If the device does not have this
        # information, it is not included in the response.
        # Corresponds to the JSON property `macAddress`
        # @return [String]
        attr_accessor :mac_address
      
        # (Read-only) The date the device was manufactured in yyyy-mm-dd format.
        # Corresponds to the JSON property `manufactureDate`
        # @return [String]
        attr_accessor :manufacture_date
      
        # The Mobile Equipment Identifier (MEID) or the International Mobile Equipment
        # Identity (IMEI) for the 3G mobile card in a mobile device. A MEID/IMEI is
        # typically used when adding a device to a wireless carrier's post-pay service
        # plan. If the device does not have this information, this property is not
        # included in the response. For more information on how to export a MEID/IMEI
        # list, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-chrome-
        # devices.html#export_meid).
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # The device's model information. If the device does not have this information,
        # this property is not included in the response.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Notes about this device added by the administrator. This property can be [
        # searched](https://support.google.com/chrome/a/answer/1698333) with the [list](/
        # admin-sdk/directory/v1/reference/chromeosdevices/list) method's `query`
        # parameter. Maximum length is 500 characters. Empty values are allowed.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The device's order number. Only devices directly purchased from Google have an
        # order number.
        # Corresponds to the JSON property `orderNumber`
        # @return [String]
        attr_accessor :order_number
      
        # The unique ID of the organizational unit. orgUnitPath is the human readable
        # version of orgUnitId. While orgUnitPath may change by renaming an
        # organizational unit within the path, orgUnitId is unchangeable for one
        # organizational unit. This property can be [updated](/admin-sdk/directory/v1/
        # guides/manage-chrome-devices#move_chrome_devices_to_ou) using the API. For
        # more information about how to create an organizational structure for your
        # device, see the [administration help center](https://support.google.com/a/
        # answer/182433).
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # The full parent path with the organizational unit's name associated with the
        # device. Path names are case insensitive. If the parent organizational unit is
        # the top-level organization, it is represented as a forward slash, `/`. This
        # property can be [updated](/admin-sdk/directory/v1/guides/manage-chrome-devices#
        # move_chrome_devices_to_ou) using the API. For more information about how to
        # create an organizational structure for your device, see the [administration
        # help center](https://support.google.com/a/answer/182433).
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        # Contains information regarding the current OS update status.
        # Corresponds to the JSON property `osUpdateStatus`
        # @return [Google::Apis::AdminDirectoryV1::OsUpdateStatus]
        attr_accessor :os_update_status
      
        # The Chrome device's operating system version.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # The Chrome device's platform version.
        # Corresponds to the JSON property `platformVersion`
        # @return [String]
        attr_accessor :platform_version
      
        # A list of recent device users, in descending order, by last login time.
        # Corresponds to the JSON property `recentUsers`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::RecentUser>]
        attr_accessor :recent_users
      
        # A list of screenshot files to download. Type is always "SCREENSHOT_FILE". (
        # Read-only)
        # Corresponds to the JSON property `screenshotFiles`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::ScreenshotFile>]
        attr_accessor :screenshot_files
      
        # The Chrome device serial number entered when the device was enabled. This
        # value is the same as the Admin console's *Serial Number* in the *Chrome OS
        # Devices* tab.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # The status of the device.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Final date the device will be supported (Read-only)
        # Corresponds to the JSON property `supportEndDate`
        # @return [DateTime]
        attr_accessor :support_end_date
      
        # Reports of amounts of available RAM memory (Read-only)
        # Corresponds to the JSON property `systemRamFreeReports`
        # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::SystemRamFreeReport>]
        attr_accessor :system_ram_free_reports
      
        # Total RAM on the device [in bytes] (Read-only)
        # Corresponds to the JSON property `systemRamTotal`
        # @return [Fixnum]
        attr_accessor :system_ram_total
      
        # Trusted Platform Module (TPM) (Read-only)
        # Corresponds to the JSON property `tpmVersionInfo`
        # @return [Google::Apis::AdminDirectoryV1::ChromeOsDevice::TpmVersionInfo]
        attr_accessor :tpm_version_info
      
        # Determines if the device will auto renew its support after the support end
        # date. This is a read-only property.
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
          @auto_update_expiration = args[:auto_update_expiration] if args.key?(:auto_update_expiration)
          @boot_mode = args[:boot_mode] if args.key?(:boot_mode)
          @cpu_info = args[:cpu_info] if args.key?(:cpu_info)
          @cpu_status_reports = args[:cpu_status_reports] if args.key?(:cpu_status_reports)
          @device_files = args[:device_files] if args.key?(:device_files)
          @device_id = args[:device_id] if args.key?(:device_id)
          @disk_volume_reports = args[:disk_volume_reports] if args.key?(:disk_volume_reports)
          @dock_mac_address = args[:dock_mac_address] if args.key?(:dock_mac_address)
          @etag = args[:etag] if args.key?(:etag)
          @ethernet_mac_address = args[:ethernet_mac_address] if args.key?(:ethernet_mac_address)
          @ethernet_mac_address0 = args[:ethernet_mac_address0] if args.key?(:ethernet_mac_address0)
          @firmware_version = args[:firmware_version] if args.key?(:firmware_version)
          @first_enrollment_time = args[:first_enrollment_time] if args.key?(:first_enrollment_time)
          @kind = args[:kind] if args.key?(:kind)
          @last_enrollment_time = args[:last_enrollment_time] if args.key?(:last_enrollment_time)
          @last_known_network = args[:last_known_network] if args.key?(:last_known_network)
          @last_sync = args[:last_sync] if args.key?(:last_sync)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
          @manufacture_date = args[:manufacture_date] if args.key?(:manufacture_date)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @notes = args[:notes] if args.key?(:notes)
          @order_number = args[:order_number] if args.key?(:order_number)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @org_unit_path = args[:org_unit_path] if args.key?(:org_unit_path)
          @os_update_status = args[:os_update_status] if args.key?(:os_update_status)
          @os_version = args[:os_version] if args.key?(:os_version)
          @platform_version = args[:platform_version] if args.key?(:platform_version)
          @recent_users = args[:recent_users] if args.key?(:recent_users)
          @screenshot_files = args[:screenshot_files] if args.key?(:screenshot_files)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @status = args[:status] if args.key?(:status)
          @support_end_date = args[:support_end_date] if args.key?(:support_end_date)
          @system_ram_free_reports = args[:system_ram_free_reports] if args.key?(:system_ram_free_reports)
          @system_ram_total = args[:system_ram_total] if args.key?(:system_ram_total)
          @tpm_version_info = args[:tpm_version_info] if args.key?(:tpm_version_info)
          @will_auto_renew = args[:will_auto_renew] if args.key?(:will_auto_renew)
        end
        
        # 
        class ActiveTimeRange
          include Google::Apis::Core::Hashable
        
          # Duration of usage in milliseconds.
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
        
        # CPU specs for a CPU.
        class CpuInfo
          include Google::Apis::Core::Hashable
        
          # The CPU architecture.
          # Corresponds to the JSON property `architecture`
          # @return [String]
          attr_accessor :architecture
        
          # Information for the Logical CPUs
          # Corresponds to the JSON property `logicalCpus`
          # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::CpuInfo::LogicalCpu>]
          attr_accessor :logical_cpus
        
          # The max CPU clock speed in kHz.
          # Corresponds to the JSON property `maxClockSpeedKhz`
          # @return [Fixnum]
          attr_accessor :max_clock_speed_khz
        
          # The CPU model name.
          # Corresponds to the JSON property `model`
          # @return [String]
          attr_accessor :model
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @architecture = args[:architecture] if args.key?(:architecture)
            @logical_cpus = args[:logical_cpus] if args.key?(:logical_cpus)
            @max_clock_speed_khz = args[:max_clock_speed_khz] if args.key?(:max_clock_speed_khz)
            @model = args[:model] if args.key?(:model)
          end
          
          # Status of a single logical CPU.
          class LogicalCpu
            include Google::Apis::Core::Hashable
          
            # C-States indicate the power consumption state of the CPU. For more information
            # look at documentation published by the CPU maker.
            # Corresponds to the JSON property `cStates`
            # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::CpuInfo::LogicalCpu::CState>]
            attr_accessor :c_states
          
            # Current frequency the CPU is running at.
            # Corresponds to the JSON property `currentScalingFrequencyKhz`
            # @return [Fixnum]
            attr_accessor :current_scaling_frequency_khz
          
            # Idle time since last boot.
            # Corresponds to the JSON property `idleDuration`
            # @return [String]
            attr_accessor :idle_duration
          
            # Maximum frequency the CPU is allowed to run at, by policy.
            # Corresponds to the JSON property `maxScalingFrequencyKhz`
            # @return [Fixnum]
            attr_accessor :max_scaling_frequency_khz
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @c_states = args[:c_states] if args.key?(:c_states)
              @current_scaling_frequency_khz = args[:current_scaling_frequency_khz] if args.key?(:current_scaling_frequency_khz)
              @idle_duration = args[:idle_duration] if args.key?(:idle_duration)
              @max_scaling_frequency_khz = args[:max_scaling_frequency_khz] if args.key?(:max_scaling_frequency_khz)
            end
            
            # Status of a single C-state. C-states are various modes the CPU can transition
            # to in order to use more or less power.
            class CState
              include Google::Apis::Core::Hashable
            
              # Name of the state.
              # Corresponds to the JSON property `displayName`
              # @return [String]
              attr_accessor :display_name
            
              # Time spent in the state since the last reboot.
              # Corresponds to the JSON property `sessionDuration`
              # @return [String]
              attr_accessor :session_duration
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @display_name = args[:display_name] if args.key?(:display_name)
                @session_duration = args[:session_duration] if args.key?(:session_duration)
              end
            end
          end
        end
        
        # 
        class CpuStatusReport
          include Google::Apis::Core::Hashable
        
          # A list of CPU temperature samples.
          # Corresponds to the JSON property `cpuTemperatureInfo`
          # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::CpuStatusReport::CpuTemperatureInfo>]
          attr_accessor :cpu_temperature_info
        
          # 
          # Corresponds to the JSON property `cpuUtilizationPercentageInfo`
          # @return [Array<Fixnum>]
          attr_accessor :cpu_utilization_percentage_info
        
          # Date and time the report was received.
          # Corresponds to the JSON property `reportTime`
          # @return [DateTime]
          attr_accessor :report_time
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @cpu_temperature_info = args[:cpu_temperature_info] if args.key?(:cpu_temperature_info)
            @cpu_utilization_percentage_info = args[:cpu_utilization_percentage_info] if args.key?(:cpu_utilization_percentage_info)
            @report_time = args[:report_time] if args.key?(:report_time)
          end
          
          # 
          class CpuTemperatureInfo
            include Google::Apis::Core::Hashable
          
            # CPU label
            # Corresponds to the JSON property `label`
            # @return [String]
            attr_accessor :label
          
            # Temperature in Celsius degrees.
            # Corresponds to the JSON property `temperature`
            # @return [Fixnum]
            attr_accessor :temperature
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @label = args[:label] if args.key?(:label)
              @temperature = args[:temperature] if args.key?(:temperature)
            end
          end
        end
        
        # 
        class DeviceFile
          include Google::Apis::Core::Hashable
        
          # Date and time the file was created
          # Corresponds to the JSON property `createTime`
          # @return [DateTime]
          attr_accessor :create_time
        
          # File download URL
          # Corresponds to the JSON property `downloadUrl`
          # @return [String]
          attr_accessor :download_url
        
          # File name
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # File type
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @create_time = args[:create_time] if args.key?(:create_time)
            @download_url = args[:download_url] if args.key?(:download_url)
            @name = args[:name] if args.key?(:name)
            @type = args[:type] if args.key?(:type)
          end
        end
        
        # 
        class DiskVolumeReport
          include Google::Apis::Core::Hashable
        
          # Disk volumes
          # Corresponds to the JSON property `volumeInfo`
          # @return [Array<Google::Apis::AdminDirectoryV1::ChromeOsDevice::DiskVolumeReport::VolumeInfo>]
          attr_accessor :volume_info
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @volume_info = args[:volume_info] if args.key?(:volume_info)
          end
          
          # 
          class VolumeInfo
            include Google::Apis::Core::Hashable
          
            # Free disk space [in bytes]
            # Corresponds to the JSON property `storageFree`
            # @return [Fixnum]
            attr_accessor :storage_free
          
            # Total disk space [in bytes]
            # Corresponds to the JSON property `storageTotal`
            # @return [Fixnum]
            attr_accessor :storage_total
          
            # Volume id
            # Corresponds to the JSON property `volumeId`
            # @return [String]
            attr_accessor :volume_id
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @storage_free = args[:storage_free] if args.key?(:storage_free)
              @storage_total = args[:storage_total] if args.key?(:storage_total)
              @volume_id = args[:volume_id] if args.key?(:volume_id)
            end
          end
        end
        
        # Information for an ip address.
        class LastKnownNetwork
          include Google::Apis::Core::Hashable
        
          # The IP address.
          # Corresponds to the JSON property `ipAddress`
          # @return [String]
          attr_accessor :ip_address
        
          # The WAN IP address.
          # Corresponds to the JSON property `wanIpAddress`
          # @return [String]
          attr_accessor :wan_ip_address
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ip_address = args[:ip_address] if args.key?(:ip_address)
            @wan_ip_address = args[:wan_ip_address] if args.key?(:wan_ip_address)
          end
        end
        
        # A list of recent device users, in descending order, by last login time.
        class RecentUser
          include Google::Apis::Core::Hashable
        
          # The user's email address. This is only present if the user type is `
          # USER_TYPE_MANAGED`.
          # Corresponds to the JSON property `email`
          # @return [String]
          attr_accessor :email
        
          # The type of the user.
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
        
        # 
        class ScreenshotFile
          include Google::Apis::Core::Hashable
        
          # Date and time the file was created
          # Corresponds to the JSON property `createTime`
          # @return [DateTime]
          attr_accessor :create_time
        
          # File download URL
          # Corresponds to the JSON property `downloadUrl`
          # @return [String]
          attr_accessor :download_url
        
          # File name
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # File type
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @create_time = args[:create_time] if args.key?(:create_time)
            @download_url = args[:download_url] if args.key?(:download_url)
            @name = args[:name] if args.key?(:name)
            @type = args[:type] if args.key?(:type)
          end
        end
        
        # 
        class SystemRamFreeReport
          include Google::Apis::Core::Hashable
        
          # Date and time the report was received.
          # Corresponds to the JSON property `reportTime`
          # @return [DateTime]
          attr_accessor :report_time
        
          # 
          # Corresponds to the JSON property `systemRamFreeInfo`
          # @return [Array<Fixnum>]
          attr_accessor :system_ram_free_info
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @report_time = args[:report_time] if args.key?(:report_time)
            @system_ram_free_info = args[:system_ram_free_info] if args.key?(:system_ram_free_info)
          end
        end
        
        # Trusted Platform Module (TPM) (Read-only)
        class TpmVersionInfo
          include Google::Apis::Core::Hashable
        
          # TPM family. We use the TPM 2.0 style encoding, e.g.: TPM 1.2: "1.2" ->
          # 312e3200 TPM 2.0: "2.0" -> 322e3000
          # Corresponds to the JSON property `family`
          # @return [String]
          attr_accessor :family
        
          # TPM firmware version.
          # Corresponds to the JSON property `firmwareVersion`
          # @return [String]
          attr_accessor :firmware_version
        
          # TPM manufacturer code.
          # Corresponds to the JSON property `manufacturer`
          # @return [String]
          attr_accessor :manufacturer
        
          # TPM specification level. See Library Specification for TPM 2.0 and Main
          # Specification for TPM 1.2.
          # Corresponds to the JSON property `specLevel`
          # @return [String]
          attr_accessor :spec_level
        
          # TPM model number.
          # Corresponds to the JSON property `tpmModel`
          # @return [String]
          attr_accessor :tpm_model
        
          # Vendor-specific information such as Vendor ID.
          # Corresponds to the JSON property `vendorSpecific`
          # @return [String]
          attr_accessor :vendor_specific
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @family = args[:family] if args.key?(:family)
            @firmware_version = args[:firmware_version] if args.key?(:firmware_version)
            @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
            @spec_level = args[:spec_level] if args.key?(:spec_level)
            @tpm_model = args[:tpm_model] if args.key?(:tpm_model)
            @vendor_specific = args[:vendor_specific] if args.key?(:vendor_specific)
          end
        end
      end
      
      # Data about an update to the status of a Chrome OS device.
      class ChromeOsDeviceAction
        include Google::Apis::Core::Hashable
      
        # Action to be taken on the Chrome OS device.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Only used when the action is `deprovision`. With the `deprovision` action,
        # this field is required. *Note*: The deprovision reason is audited because it
        # might have implications on licenses for perpetual subscription customers.
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
      
      # 
      class ChromeOsDevices
        include Google::Apis::Core::Hashable
      
        # A list of Chrome OS Device objects.
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
      
        # Token used to access the next page of this result. To access the next page,
        # use this token's value in the `pageToken` query string of this request.
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
      
      # 
      class ChromeOsMoveDevicesToOu
        include Google::Apis::Core::Hashable
      
        # Chrome OS devices to be moved to OU
        # Corresponds to the JSON property `deviceIds`
        # @return [Array<String>]
        attr_accessor :device_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_ids = args[:device_ids] if args.key?(:device_ids)
        end
      end
      
      # Request for adding a new print server.
      class CreatePrintServerRequest
        include Google::Apis::Core::Hashable
      
        # Required. The [unique ID](https://developers.google.com/admin-sdk/directory/
        # reference/rest/v1/customers) of the customer's Google Workspace account.
        # Format: `customers/`id``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Configuration for a print server.
        # Corresponds to the JSON property `printServer`
        # @return [Google::Apis::AdminDirectoryV1::PrintServer]
        attr_accessor :print_server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @print_server = args[:print_server] if args.key?(:print_server)
        end
      end
      
      # Request for adding a new printer.
      class CreatePrinterRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the customer. Format: customers/`customer_id`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Printer configuration.
        # Corresponds to the JSON property `printer`
        # @return [Google::Apis::AdminDirectoryV1::Printer]
        attr_accessor :printer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @printer = args[:printer] if args.key?(:printer)
        end
      end
      
      # 
      class Customer
        include Google::Apis::Core::Hashable
      
        # The customer's secondary contact email address. This email address cannot be
        # on the same domain as the `customerDomain`
        # Corresponds to the JSON property `alternateEmail`
        # @return [String]
        attr_accessor :alternate_email
      
        # The customer's creation time (Readonly)
        # Corresponds to the JSON property `customerCreationTime`
        # @return [DateTime]
        attr_accessor :customer_creation_time
      
        # The customer's primary domain name string. Do not include the `www` prefix
        # when creating a new customer.
        # Corresponds to the JSON property `customerDomain`
        # @return [String]
        attr_accessor :customer_domain
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique ID for the customer's Google Workspace account. (Readonly)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies the resource as a customer. Value: `admin#directory#customer`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The customer's ISO 639-2 language code. See the [Language Codes](/admin-sdk/
        # directory/v1/languages) page for the list of supported codes. Valid language
        # codes outside the supported set will be accepted by the API but may lead to
        # unexpected behavior. The default value is `en`.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The customer's contact phone number in [E.164](https://en.wikipedia.org/wiki/E.
        # 164) format.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The customer's postal address information.
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
      
      # 
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
      
        # This is a required property. For `countryCode` information see the [ISO 3166
        # country code elements](https://www.iso.org/iso/country_codes.htm).
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Name of the locality. An example of a locality value is the city of `San
        # Francisco`.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # The company or company division name.
        # Corresponds to the JSON property `organizationName`
        # @return [String]
        attr_accessor :organization_name
      
        # The postal code. A postalCode example is a postal zip code such as `10009`.
        # This is in accordance with - http: //portablecontacts.net/draft-spec.html#
        # address_element.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Name of the region. An example of a region value is `NY` for the state of New
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
      
      # Information regarding a command that was issued to a device.
      class DirectoryChromeosdevicesCommand
        include Google::Apis::Core::Hashable
      
        # The time at which the command will expire. If the device doesn't execute the
        # command within this time the command will become expired.
        # Corresponds to the JSON property `commandExpireTime`
        # @return [String]
        attr_accessor :command_expire_time
      
        # Unique ID of a device command.
        # Corresponds to the JSON property `commandId`
        # @return [Fixnum]
        attr_accessor :command_id
      
        # The result of executing a command.
        # Corresponds to the JSON property `commandResult`
        # @return [Google::Apis::AdminDirectoryV1::DirectoryChromeosdevicesCommandResult]
        attr_accessor :command_result
      
        # The timestamp when the command was issued by the admin.
        # Corresponds to the JSON property `issueTime`
        # @return [String]
        attr_accessor :issue_time
      
        # The payload that the command specified, if any.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        # Indicates the command state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The type of the command.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_expire_time = args[:command_expire_time] if args.key?(:command_expire_time)
          @command_id = args[:command_id] if args.key?(:command_id)
          @command_result = args[:command_result] if args.key?(:command_result)
          @issue_time = args[:issue_time] if args.key?(:issue_time)
          @payload = args[:payload] if args.key?(:payload)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The result of executing a command.
      class DirectoryChromeosdevicesCommandResult
        include Google::Apis::Core::Hashable
      
        # The error message with a short explanation as to why the command failed. Only
        # present if the command failed.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The time at which the command was executed or failed to execute.
        # Corresponds to the JSON property `executeTime`
        # @return [String]
        attr_accessor :execute_time
      
        # The result of the command.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @execute_time = args[:execute_time] if args.key?(:execute_time)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # A request for issuing a command.
      class DirectoryChromeosdevicesIssueCommandRequest
        include Google::Apis::Core::Hashable
      
        # The type of command.
        # Corresponds to the JSON property `commandType`
        # @return [String]
        attr_accessor :command_type
      
        # The payload for the command, provide it only if command supports it. The
        # following commands support adding payload: - SET_VOLUME: Payload is a
        # stringified JSON object in the form: ` "volume": 50 `. The volume has to be an
        # integer in the range [0,100].
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_type = args[:command_type] if args.key?(:command_type)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # A response for issuing a command.
      class DirectoryChromeosdevicesIssueCommandResponse
        include Google::Apis::Core::Hashable
      
        # The unique ID of the issued command, used to retrieve the command status.
        # Corresponds to the JSON property `commandId`
        # @return [Fixnum]
        attr_accessor :command_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_id = args[:command_id] if args.key?(:command_id)
        end
      end
      
      # 
      class DomainAlias
        include Google::Apis::Core::Hashable
      
        # The creation time of the domain alias. (Read-only).
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
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
      
      # 
      class DomainAliases
        include Google::Apis::Core::Hashable
      
        # A list of domain alias objects.
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
      
      # 
      class Domains
        include Google::Apis::Core::Hashable
      
        # Creation time of the domain. Expressed in [Unix time](https://en.wikipedia.org/
        # wiki/Epoch_time) format. (Read-only).
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # A list of domain alias objects. (Read-only)
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
      
      # 
      class Domains2
        include Google::Apis::Core::Hashable
      
        # A list of domain objects.
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
      
      # Info about failures
      class FailureInfo
        include Google::Apis::Core::Hashable
      
        # Canonical code for why the update failed to apply.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Failure reason message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Printer configuration.
        # Corresponds to the JSON property `printer`
        # @return [Google::Apis::AdminDirectoryV1::Printer]
        attr_accessor :printer
      
        # Id of a failed printer.
        # Corresponds to the JSON property `printerId`
        # @return [String]
        attr_accessor :printer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @printer = args[:printer] if args.key?(:printer)
          @printer_id = args[:printer_id] if args.key?(:printer_id)
        end
      end
      
      # JSON template for Feature object in Directory API.
      class Feature
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etags`
        # @return [String]
        attr_accessor :etags
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the feature.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etags = args[:etags] if args.key?(:etags)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # JSON template for a feature instance.
      class FeatureInstance
        include Google::Apis::Core::Hashable
      
        # JSON template for Feature object in Directory API.
        # Corresponds to the JSON property `feature`
        # @return [Google::Apis::AdminDirectoryV1::Feature]
        attr_accessor :feature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feature = args[:feature] if args.key?(:feature)
        end
      end
      
      # 
      class FeatureRename
        include Google::Apis::Core::Hashable
      
        # New name of the feature.
        # Corresponds to the JSON property `newName`
        # @return [String]
        attr_accessor :new_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_name = args[:new_name] if args.key?(:new_name)
        end
      end
      
      # Public API: Resources.features
      class Features
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The Features in this page of results.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::AdminDirectoryV1::Feature>]
        attr_accessor :features
      
        # Kind of resource this is.
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
          @features = args[:features] if args.key?(:features)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Google Groups provide your users the ability to send messages to groups of
      # people using the group's email address. For more information about common
      # tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-
      # groups).
      class Group
        include Google::Apis::Core::Hashable
      
        # Read-only. Value is `true` if this group was created by an administrator
        # rather than a user.
        # Corresponds to the JSON property `adminCreated`
        # @return [Boolean]
        attr_accessor :admin_created
        alias_method :admin_created?, :admin_created
      
        # Read-only. The list of a group's alias email addresses. To add, update, or
        # remove a group's aliases, use the `groups.aliases` methods. If edited in a
        # group's POST or PUT request, the edit is ignored.
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # An extended description to help users determine the purpose of a group. For
        # example, you can include information about who should join the group, the
        # types of messages to send to the group, links to FAQs about the group, or
        # related groups. Maximum length is `4,096` characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The number of users that are direct members of the group. If a group is a
        # member (child) of this group (the parent), members of the child group are not
        # counted in the `directMembersCount` property of the parent group.
        # Corresponds to the JSON property `directMembersCount`
        # @return [Fixnum]
        attr_accessor :direct_members_count
      
        # The group's email address. If your account has multiple domains, select the
        # appropriate domain for the email address. The `email` must be unique. This
        # property is required when creating a group. Group email addresses are subject
        # to the same character usage rules as usernames, see the [help center](https://
        # support.google.com/a/answer/9193374) for details.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Read-only. The unique ID of a group. A group `id` can be used as a group
        # request URI's `groupKey`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For Groups resources, the value is `admin#
        # directory#group`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The group's display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Read-only. The list of the group's non-editable alias email addresses that are
        # outside of the account's primary domain or subdomains. These are functioning
        # email addresses used by the group. This is a read-only property returned in
        # the API's response for a group. If edited in a group's POST or PUT request,
        # the edit is ignored.
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
      
      # The Directory API manages aliases, which are alternative email addresses.
      class GroupAlias
        include Google::Apis::Core::Hashable
      
        # The alias email address.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique ID of the group.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For Alias resources, the value is `admin#
        # directory#alias`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The primary email address of the group.
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
      
      # 
      class Groups
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of group objects.
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
      
      # 
      class ListPrintServersResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` in a request to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of print servers.
        # Corresponds to the JSON property `printServers`
        # @return [Array<Google::Apis::AdminDirectoryV1::PrintServer>]
        attr_accessor :print_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @print_servers = args[:print_servers] if args.key?(:print_servers)
        end
      end
      
      # Response for listing allowed printer models.
      class ListPrinterModelsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Printer models that are currently allowed to be configured for ChromeOs. Some
        # printers may be added or removed over time.
        # Corresponds to the JSON property `printerModels`
        # @return [Array<Google::Apis::AdminDirectoryV1::PrinterModel>]
        attr_accessor :printer_models
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @printer_models = args[:printer_models] if args.key?(:printer_models)
        end
      end
      
      # Response for listing printers.
      class ListPrintersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of printers. If `org_unit_id` was given in the request, then only
        # printers visible for this OU will be returned. If `org_unit_id` was not given
        # in the request, then all printers will be returned.
        # Corresponds to the JSON property `printers`
        # @return [Array<Google::Apis::AdminDirectoryV1::Printer>]
        attr_accessor :printers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @printers = args[:printers] if args.key?(:printers)
        end
      end
      
      # A Google Groups member can be a user or another group. This member can be
      # inside or outside of your account's domains. For more information about common
      # group member tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/
      # manage-group-members).
      class Member
        include Google::Apis::Core::Hashable
      
        # Defines mail delivery preferences of member. This is only supported by create/
        # update/get.
        # Corresponds to the JSON property `delivery_settings`
        # @return [String]
        attr_accessor :delivery_settings
      
        # The member's email address. A member can be a user or another group. This
        # property is required when adding a member to a group. The `email` must be
        # unique and cannot be an alias of another group. If the email address is
        # changed, the API automatically reflects the email address changes.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique ID of the group member. A member `id` can be used as a member
        # request URI's `memberKey`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For Members resources, the value is `admin#
        # directory#member`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The member's role in a group. The API returns an error for cycles in group
        # memberships. For example, if `group1` is a member of `group2`, `group2` cannot
        # be a member of `group1`. For more information about a member's role, see the [
        # administration help center](https://support.google.com/a/answer/167094).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Status of member (Immutable)
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The type of group member.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_settings = args[:delivery_settings] if args.key?(:delivery_settings)
          @email = args[:email] if args.key?(:email)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @role = args[:role] if args.key?(:role)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
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
      
        # A list of member objects.
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
      
      # JSON template for Has Member response in Directory API.
      class MembersHasMember
        include Google::Apis::Core::Hashable
      
        # Output only. Identifies whether the given user is a member of the group.
        # Membership can be direct or nested.
        # Corresponds to the JSON property `isMember`
        # @return [Boolean]
        attr_accessor :is_member
        alias_method :is_member?, :is_member
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_member = args[:is_member] if args.key?(:is_member)
        end
      end
      
      # Google Workspace Mobile Management includes Android, [Google Sync](https://
      # support.google.com/a/answer/135937), and iOS devices. For more information
      # about common group mobile device API tasks, see the [Developer's Guide](/admin-
      # sdk/directory/v1/guides/manage-mobile-devices.html).
      class MobileDevice
        include Google::Apis::Core::Hashable
      
        # Adb (USB debugging) enabled or disabled on device (Read-only)
        # Corresponds to the JSON property `adbStatus`
        # @return [Boolean]
        attr_accessor :adb_status
        alias_method :adb_status?, :adb_status
      
        # The list of applications installed on an Android mobile device. It is not
        # applicable to Google Sync and iOS devices. The list includes any Android
        # applications that access Google Workspace data. When updating an applications
        # list, it is important to note that updates replace the existing list. If the
        # Android device has two existing applications and the API updates the list with
        # five applications, the is now the updated list of five applications.
        # Corresponds to the JSON property `applications`
        # @return [Array<Google::Apis::AdminDirectoryV1::MobileDevice::Application>]
        attr_accessor :applications
      
        # The device's baseband version.
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
      
        # The device's operating system build number.
        # Corresponds to the JSON property `buildNumber`
        # @return [String]
        attr_accessor :build_number
      
        # The default locale used on the device.
        # Corresponds to the JSON property `defaultLanguage`
        # @return [String]
        attr_accessor :default_language
      
        # Developer options enabled or disabled on device (Read-only)
        # Corresponds to the JSON property `developerOptionsStatus`
        # @return [Boolean]
        attr_accessor :developer_options_status
        alias_method :developer_options_status?, :developer_options_status
      
        # The compromised device status.
        # Corresponds to the JSON property `deviceCompromisedStatus`
        # @return [String]
        attr_accessor :device_compromised_status
      
        # The serial number for a Google Sync mobile device. For Android and iOS devices,
        # this is a software generated unique identifier.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # DevicePasswordStatus (Read-only)
        # Corresponds to the JSON property `devicePasswordStatus`
        # @return [String]
        attr_accessor :device_password_status
      
        # The list of the owner's email addresses. If your application needs the current
        # list of user emails, use the [get](/admin-sdk/directory/v1/reference/
        # mobiledevices/get.html) method. For additional information, see the [retrieve
        # a user](/admin-sdk/directory/v1/guides/manage-users#get_user) method.
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
        # the G Suite administrator control panel (Read-only)
        # Corresponds to the JSON property `firstSync`
        # @return [DateTime]
        attr_accessor :first_sync
      
        # Mobile Device Hardware (Read-only)
        # Corresponds to the JSON property `hardware`
        # @return [String]
        attr_accessor :hardware
      
        # The IMEI/MEID unique identifier for Android hardware. It is not applicable to
        # Google Sync devices. When adding an Android mobile device, this is an optional
        # property. When updating one of these devices, this is a read-only property.
        # Corresponds to the JSON property `hardwareId`
        # @return [String]
        attr_accessor :hardware_id
      
        # The device's IMEI number.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # The device's kernel version.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # The type of the API resource. For Mobiledevices resources, the value is `admin#
        # directory#mobiledevice`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date and time the device was last synchronized with the policy settings in the
        # G Suite administrator control panel (Read-only)
        # Corresponds to the JSON property `lastSync`
        # @return [DateTime]
        attr_accessor :last_sync
      
        # Boolean indicating if this account is on owner/primary profile or not.
        # Corresponds to the JSON property `managedAccountIsOnOwnerProfile`
        # @return [Boolean]
        attr_accessor :managed_account_is_on_owner_profile
        alias_method :managed_account_is_on_owner_profile?, :managed_account_is_on_owner_profile
      
        # Mobile Device manufacturer (Read-only)
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # The device's MEID number.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # The mobile device's model name, for example Nexus S. This property can be [
        # updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For
        # more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/
        # manage-mobile=devices#update_mobile_device).
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # The list of the owner's user names. If your application needs the current list
        # of device owner names, use the [get](/admin-sdk/directory/v1/reference/
        # mobiledevices/get.html) method. For more information about retrieving mobile
        # device user information, see the [Developer's Guide](/admin-sdk/directory/v1/
        # guides/manage-users#get_user).
        # Corresponds to the JSON property `name`
        # @return [Array<String>]
        attr_accessor :name
      
        # Mobile Device mobile or network operator (if available) (Read-only)
        # Corresponds to the JSON property `networkOperator`
        # @return [String]
        attr_accessor :network_operator
      
        # The mobile device's operating system, for example IOS 4.3 or Android 2.3.5.
        # This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/
        # update.html). For more information, see the [Developer's Guide](/admin-sdk/
        # directory/v1/guides/manage-mobile-devices#update_mobile_device).
        # Corresponds to the JSON property `os`
        # @return [String]
        attr_accessor :os
      
        # The list of accounts added on device (Read-only)
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
      
        # The unique ID the API service uses to identify the mobile device.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # Mobile Device Security patch level (Read-only)
        # Corresponds to the JSON property `securityPatchLevel`
        # @return [Fixnum]
        attr_accessor :security_patch_level
      
        # The device's serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # The device's status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Work profile supported on device (Read-only)
        # Corresponds to the JSON property `supportsWorkProfile`
        # @return [Boolean]
        attr_accessor :supports_work_profile
        alias_method :supports_work_profile?, :supports_work_profile
      
        # The type of mobile device.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Unknown sources enabled or disabled on device (Read-only)
        # Corresponds to the JSON property `unknownSourcesStatus`
        # @return [Boolean]
        attr_accessor :unknown_sources_status
        alias_method :unknown_sources_status?, :unknown_sources_status
      
        # Gives information about the device such as `os` version. This property can be [
        # updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For
        # more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/
        # manage-mobile-devices#update_mobile_device).
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # The device's MAC address on Wi-Fi networks.
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
        
          # The application's display name. An example is `Browser`.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # The application's package name. An example is `com.android.browser`.
          # Corresponds to the JSON property `packageName`
          # @return [String]
          attr_accessor :package_name
        
          # The list of permissions of this application. These can be either a standard
          # Android permission or one defined by the application, and are found in an
          # application's [Android manifest](https://developer.android.com/guide/topics/
          # manifest/uses-permission-element.html). Examples of a Calendar application's
          # permissions are `READ_CALENDAR`, or `MANAGE_ACCOUNTS`.
          # Corresponds to the JSON property `permission`
          # @return [Array<String>]
          attr_accessor :permission
        
          # The application's version code. An example is `13`.
          # Corresponds to the JSON property `versionCode`
          # @return [Fixnum]
          attr_accessor :version_code
        
          # The application's version name. An example is `3.2-140714`.
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
      
      # 
      class MobileDeviceAction
        include Google::Apis::Core::Hashable
      
        # The action to be performed on the device.
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
      
      # 
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
      
        # A list of Mobile Device objects.
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
      
      # Managing your account's organizational units allows you to configure your
      # users' access to services and custom settings. For more information about
      # common organizational unit tasks, see the [Developer's Guide](/admin-sdk/
      # directory/v1/guides/manage-org-units.html). The customer's organizational unit
      # hierarchy is limited to 35 levels of depth.
      class OrgUnit
        include Google::Apis::Core::Hashable
      
        # Determines if a sub-organizational unit can inherit the settings of the parent
        # organization. The default value is `false`, meaning a sub-organizational unit
        # inherits the settings of the nearest parent organizational unit. For more
        # information on inheritance and users in an organization structure, see the [
        # administration help center](https://support.google.com/a/answer/4352075).
        # Corresponds to the JSON property `blockInheritance`
        # @return [Boolean]
        attr_accessor :block_inheritance
        alias_method :block_inheritance?, :block_inheritance
      
        # Description of the organizational unit.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. For Orgunits resources, the value is `admin#
        # directory#orgUnit`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The organizational unit's path name. For example, an organizational unit's
        # name within the /corp/support/sales_support parent path is sales_support.
        # Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique ID of the organizational unit.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # The full path to the organizational unit. The `orgUnitPath` is a derived
        # property. When listed, it is derived from `parentOrgunitPath` and
        # organizational unit's `name`. For example, for an organizational unit named '
        # apps' under parent organization '/engineering', the orgUnitPath is '/
        # engineering/apps'. In order to edit an `orgUnitPath`, either update the name
        # of the organization or the `parentOrgunitPath`. A user's organizational unit
        # determines which Google Workspace services the user has access to. If the user
        # is moved to a new organization, the user's access changes. For more
        # information about organization structures, see the [administration help center]
        # (https://support.google.com/a/answer/4352075). For more information about
        # moving a user to a different organization, see [Update a user](/admin-sdk/
        # directory/v1/guides/manage-users.html#update_user).
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        # The unique ID of the parent organizational unit. Required, unless `
        # parentOrgUnitPath` is set.
        # Corresponds to the JSON property `parentOrgUnitId`
        # @return [String]
        attr_accessor :parent_org_unit_id
      
        # The organizational unit's parent path. For example, /corp/sales is the parent
        # path for /corp/sales/sales_support organizational unit. Required, unless `
        # parentOrgUnitId` is set.
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
      
      # 
      class OrgUnits
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. For Org Unit resources, the type is `admin#
        # directory#orgUnits`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of organizational unit objects.
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
      
      # Contains information regarding the current OS update status.
      class OsUpdateStatus
        include Google::Apis::Core::Hashable
      
        # Date and time of the last reboot.
        # Corresponds to the JSON property `rebootTime`
        # @return [String]
        attr_accessor :reboot_time
      
        # The update state of an OS update.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # New required platform version from the pending updated kiosk app.
        # Corresponds to the JSON property `targetKioskAppVersion`
        # @return [String]
        attr_accessor :target_kiosk_app_version
      
        # New platform version of the OS image being downloaded and applied. It is only
        # set when update status is UPDATE_STATUS_DOWNLOAD_IN_PROGRESS or
        # UPDATE_STATUS_NEED_REBOOT. Note this could be a dummy "0.0.0.0" for
        # UPDATE_STATUS_NEED_REBOOT for some edge cases, e.g. update engine is restarted
        # without a reboot.
        # Corresponds to the JSON property `targetOsVersion`
        # @return [String]
        attr_accessor :target_os_version
      
        # Date and time of the last update check.
        # Corresponds to the JSON property `updateCheckTime`
        # @return [String]
        attr_accessor :update_check_time
      
        # Date and time of the last successful OS update.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reboot_time = args[:reboot_time] if args.key?(:reboot_time)
          @state = args[:state] if args.key?(:state)
          @target_kiosk_app_version = args[:target_kiosk_app_version] if args.key?(:target_kiosk_app_version)
          @target_os_version = args[:target_os_version] if args.key?(:target_os_version)
          @update_check_time = args[:update_check_time] if args.key?(:update_check_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for a print server.
      class PrintServer
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the print server was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Editable. Description of the print server (as shown in the Admin console).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Editable. Display name of the print server (as shown in the Admin console).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. ID of the print server. Leave empty when creating.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Immutable. Resource name of the print server. Leave empty when creating.
        # Format: `customers/`customer.id`/printServers/`print_server.id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ID of the organization unit (OU) that owns this print server. This value can
        # only be set when the print server is initially created. If it's not populated,
        # the print server is placed under the root OU. The `org_unit_id` can be
        # retrieved using the [Directory API](/admin-sdk/directory/reference/rest/v1/
        # orgunits).
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # Editable. Print server URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Info about failures
      class PrintServerFailureInfo
        include Google::Apis::Core::Hashable
      
        # Canonical code for why the update failed to apply.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Failure reason message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Configuration for a print server.
        # Corresponds to the JSON property `printServer`
        # @return [Google::Apis::AdminDirectoryV1::PrintServer]
        attr_accessor :print_server
      
        # ID of a failed print server.
        # Corresponds to the JSON property `printServerId`
        # @return [String]
        attr_accessor :print_server_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @print_server = args[:print_server] if args.key?(:print_server)
          @print_server_id = args[:print_server_id] if args.key?(:print_server_id)
        end
      end
      
      # Printer configuration.
      class Printer
        include Google::Apis::Core::Hashable
      
        # Output only. Auxiliary messages about issues with the printer configuration if
        # any.
        # Corresponds to the JSON property `auxiliaryMessages`
        # @return [Array<Google::Apis::AdminDirectoryV1::AuxiliaryMessage>]
        attr_accessor :auxiliary_messages
      
        # Output only. Time when printer was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Editable. Description of printer.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Editable. Name of printer.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Id of the printer. (During printer creation leave empty)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Editable. Make and model of printer. e.g. Lexmark MS610de Value must be in
        # format as seen in ListPrinterModels response.
        # Corresponds to the JSON property `makeAndModel`
        # @return [String]
        attr_accessor :make_and_model
      
        # The resource name of the Printer object, in the format customers/`customer-id`/
        # printers/`printer-id` (During printer creation leave empty)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Organization Unit that owns this printer (Only can be set during Printer
        # creation)
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # Editable. Printer URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Editable. flag to use driverless configuration or not. If it's set to be true,
        # make_and_model can be ignored
        # Corresponds to the JSON property `useDriverlessConfig`
        # @return [Boolean]
        attr_accessor :use_driverless_config
        alias_method :use_driverless_config?, :use_driverless_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_messages = args[:auxiliary_messages] if args.key?(:auxiliary_messages)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @make_and_model = args[:make_and_model] if args.key?(:make_and_model)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @uri = args[:uri] if args.key?(:uri)
          @use_driverless_config = args[:use_driverless_config] if args.key?(:use_driverless_config)
        end
      end
      
      # Printer manufacturer and model
      class PrinterModel
        include Google::Apis::Core::Hashable
      
        # Display name. eq. "Brother MFC-8840D"
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Make and model as represented in "make_and_model" field in Printer object. eq.
        # "brother mfc-8840d"
        # Corresponds to the JSON property `makeAndModel`
        # @return [String]
        attr_accessor :make_and_model
      
        # Manufacturer. eq. "Brother"
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @make_and_model = args[:make_and_model] if args.key?(:make_and_model)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
        end
      end
      
      # 
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
      
        # The type of the API resource. This is always `admin#directory#privilege`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the privilege.
        # Corresponds to the JSON property `privilegeName`
        # @return [String]
        attr_accessor :privilege_name
      
        # The obfuscated ID of the service this privilege is for. This value is returned
        # with [`Privileges.list()`](/admin-sdk/directory/v1/reference/privileges/list).
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
      
      # 
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
      
        # The type of the API resource. This is always `admin#directory#privileges`.
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
      
      # 
      class Role
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Returns `true` if the role is a super admin role.
        # Corresponds to the JSON property `isSuperAdminRole`
        # @return [Boolean]
        attr_accessor :is_super_admin_role
        alias_method :is_super_admin_role?, :is_super_admin_role
      
        # Returns `true` if this is a pre-defined system role.
        # Corresponds to the JSON property `isSystemRole`
        # @return [Boolean]
        attr_accessor :is_system_role
        alias_method :is_system_role?, :is_system_role
      
        # The type of the API resource. This is always `admin#directory#role`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A short description of the role.
        # Corresponds to the JSON property `roleDescription`
        # @return [String]
        attr_accessor :role_description
      
        # ID of the role.
        # Corresponds to the JSON property `roleId`
        # @return [Fixnum]
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
        
          # The obfuscated ID of the service this privilege is for. This value is returned
          # with [`Privileges.list()`](/admin-sdk/directory/v1/reference/privileges/list).
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
      
      # Defines an assignment of a role.
      class RoleAssignment
        include Google::Apis::Core::Hashable
      
        # The unique ID of the entity this role is assigned to—either the `user_id` of a
        # user or the `uniqueId` of a service account, as defined in [Identity and
        # Access Management (IAM)](https://cloud.google.com/iam/docs/reference/rest/v1/
        # projects.serviceAccounts).
        # Corresponds to the JSON property `assignedTo`
        # @return [String]
        attr_accessor :assigned_to
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the API resource. This is always `admin#directory#roleAssignment`.
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
        # @return [Fixnum]
        attr_accessor :role_assignment_id
      
        # The ID of the role that is assigned.
        # Corresponds to the JSON property `roleId`
        # @return [Fixnum]
        attr_accessor :role_id
      
        # The scope in which this role is assigned.
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
      
      # 
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
      
        # The type of the API resource. This is always `admin#directory#roleAssignments`.
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
      
      # 
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
      
        # The type of the API resource. This is always `admin#directory#roles`.
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
      
      # The type of API resource. For Schema resources, this is always `admin#
      # directory#schema`.
      class Schema
        include Google::Apis::Core::Hashable
      
        # Display name for the schema.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A list of fields in the schema.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::AdminDirectoryV1::SchemaFieldSpec>]
        attr_accessor :fields
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The unique identifier of the schema (Read-only)
        # Corresponds to the JSON property `schemaId`
        # @return [String]
        attr_accessor :schema_id
      
        # The schema's name. Each `schema_name` must be unique within a customer.
        # Reusing a name results in a `409: Entity already exists` error.
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @fields = args[:fields] if args.key?(:fields)
          @kind = args[:kind] if args.key?(:kind)
          @schema_id = args[:schema_id] if args.key?(:schema_id)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
        end
      end
      
      # You can use schemas to add custom fields to user profiles. You can use these
      # fields to store information such as the projects your users work on, their
      # physical locations, their hire dates, or whatever else fits your business
      # needs. For more information, see [Custom User Fields](/admin-sdk/directory/v1/
      # guides/manage-schemas).
      class SchemaFieldSpec
        include Google::Apis::Core::Hashable
      
        # Display Name of the field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ETag of the field.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique identifier of the field (Read-only)
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # The name of the field.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The type of the field.
        # Corresponds to the JSON property `fieldType`
        # @return [String]
        attr_accessor :field_type
      
        # Boolean specifying whether the field is indexed or not. Default: `true`.
        # Corresponds to the JSON property `indexed`
        # @return [Boolean]
        attr_accessor :indexed
        alias_method :indexed?, :indexed
      
        # The kind of resource this is. For schema fields this is always `admin#
        # directory#schema#fieldspec`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A boolean specifying whether this is a multi-valued field or not. Default: `
        # false`.
        # Corresponds to the JSON property `multiValued`
        # @return [Boolean]
        attr_accessor :multi_valued
        alias_method :multi_valued?, :multi_valued
      
        # Indexing spec for a numeric field. By default, only exact match queries will
        # be supported for numeric fields. Setting the `numericIndexingSpec` allows
        # range queries to be supported.
        # Corresponds to the JSON property `numericIndexingSpec`
        # @return [Google::Apis::AdminDirectoryV1::SchemaFieldSpec::NumericIndexingSpec]
        attr_accessor :numeric_indexing_spec
      
        # Specifies who can view values of this field. See [Retrieve users as a non-
        # administrator](/admin-sdk/directory/v1/guides/manage-users#
        # retrieve_users_non_admin) for more information. Note: It may take up to 24
        # hours for changes to this field to be reflected.
        # Corresponds to the JSON property `readAccessType`
        # @return [String]
        attr_accessor :read_access_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
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
        # be supported for numeric fields. Setting the `numericIndexingSpec` allows
        # range queries to be supported.
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
      
        # A list of UserSchema objects.
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
      
        # Whether the application is registered with Google. The value is `true` if the
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
      
        # The type of the API resource. This is always `admin#directory#token`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the token is issued to an installed application. The value is `true`
        # if the application is installed to a desktop or mobile device.
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
      
        # The type of the API resource. This is always `admin#directory#tokenList`.
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
      
      # The Directory API allows you to create and manage your account's users, user
      # aliases, and user Gmail chat profile photos. For more information about common
      # tasks, see the [User Accounts Developer's Guide](/admin-sdk/directory/v1/
      # guides/manage-users.html) and the [User Aliases Developer's Guide](/admin-sdk/
      # directory/v1/guides/manage-user-aliases.html).
      class User
        include Google::Apis::Core::Hashable
      
        # The list of the user's addresses. The maximum allowed data size for this field
        # is 10KB.
        # Corresponds to the JSON property `addresses`
        # @return [Object]
        attr_accessor :addresses
      
        # Output only. This property is `true` if the user has completed an initial
        # login and accepted the Terms of Service agreement.
        # Corresponds to the JSON property `agreedToTerms`
        # @return [Boolean]
        attr_accessor :agreed_to_terms
        alias_method :agreed_to_terms?, :agreed_to_terms
      
        # Output only. The list of the user's alias email addresses.
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # Indicates if user is archived.
        # Corresponds to the JSON property `archived`
        # @return [Boolean]
        attr_accessor :archived
        alias_method :archived?, :archived
      
        # Indicates if the user is forced to change their password at next login. This
        # setting doesn't apply when [the user signs in via a third-party identity
        # provider](https://support.google.com/a/answer/60224).
        # Corresponds to the JSON property `changePasswordAtNextLogin`
        # @return [Boolean]
        attr_accessor :change_password_at_next_login
        alias_method :change_password_at_next_login?, :change_password_at_next_login
      
        # User's G Suite account creation time. (Read-only)
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # Custom fields of the user. The key is a `schema_name` and its values are `'
        # field_name': 'field_value'`.
        # Corresponds to the JSON property `customSchemas`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :custom_schemas
      
        # Output only. The customer ID to [retrieve all account users](/admin-sdk/
        # directory/v1/guides/manage-users.html#get_all_users). You can use the alias `
        # my_customer` to represent your account's `customerId`. As a reseller
        # administrator, you can use the resold customer account's `customerId`. To get
        # a `customerId`, use the account's primary domain in the `domain` parameter of
        # a [users.list](/admin-sdk/directory/v1/reference/users/list) request.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # 
        # Corresponds to the JSON property `deletionTime`
        # @return [DateTime]
        attr_accessor :deletion_time
      
        # The list of the user's email addresses. The maximum allowed data size for this
        # field is 10KB.
        # Corresponds to the JSON property `emails`
        # @return [Object]
        attr_accessor :emails
      
        # Output only. ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of external IDs for the user, such as an employee or network ID. The
        # maximum allowed data size for this field is 2KB.
        # Corresponds to the JSON property `externalIds`
        # @return [Object]
        attr_accessor :external_ids
      
        # The user's gender. The maximum allowed data size for this field is 1KB.
        # Corresponds to the JSON property `gender`
        # @return [Object]
        attr_accessor :gender
      
        # Stores the hash format of the `password` property. The following `hashFunction`
        # values are allowed: * `MD5` - Accepts simple hex-encoded values. * `SHA-1` -
        # Accepts simple hex-encoded values. * `crypt` - Compliant with the [C crypt
        # library](https://en.wikipedia.org/wiki/Crypt_%28C%29). Supports the DES, MD5 (
        # hash prefix `$1$`), SHA-256 (hash prefix `$5$`), and SHA-512 (hash prefix `$6$`
        # ) hash algorithms. If rounds are specified as part of the prefix, they must be
        # 10,000 or fewer.
        # Corresponds to the JSON property `hashFunction`
        # @return [String]
        attr_accessor :hash_function
      
        # The unique ID for the user. A user `id` can be used as a user request URI's `
        # userKey`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The list of the user's Instant Messenger (IM) accounts. A user account can
        # have multiple ims properties. But, only one of these ims properties can be the
        # primary IM contact. The maximum allowed data size for this field is 2KB.
        # Corresponds to the JSON property `ims`
        # @return [Object]
        attr_accessor :ims
      
        # Indicates if the user's profile is visible in the Google Workspace global
        # address list when the contact sharing feature is enabled for the domain. For
        # more information about excluding user profiles, see the [administration help
        # center](https://support.google.com/a/answer/1285988).
        # Corresponds to the JSON property `includeInGlobalAddressList`
        # @return [Boolean]
        attr_accessor :include_in_global_address_list
        alias_method :include_in_global_address_list?, :include_in_global_address_list
      
        # If `true`, the user's IP address is [whitelisted](https://support.google.com/a/
        # answer/60752).
        # Corresponds to the JSON property `ipWhitelisted`
        # @return [Boolean]
        attr_accessor :ip_whitelisted
        alias_method :ip_whitelisted?, :ip_whitelisted
      
        # Output only. Indicates a user with super admininistrator privileges. The `
        # isAdmin` property can only be edited in the [Make a user an administrator](/
        # admin-sdk/directory/v1/guides/manage-users.html#make_admin) operation ( [
        # makeAdmin](/admin-sdk/directory/v1/reference/users/makeAdmin.html) method). If
        # edited in the user [insert](/admin-sdk/directory/v1/reference/users/insert.
        # html) or [update](/admin-sdk/directory/v1/reference/users/update.html) methods,
        # the edit is ignored by the API service.
        # Corresponds to the JSON property `isAdmin`
        # @return [Boolean]
        attr_accessor :is_admin
        alias_method :is_admin?, :is_admin
      
        # Output only. Indicates if the user is a delegated administrator. Delegated
        # administrators are supported by the API but cannot create or undelete users,
        # or make users administrators. These requests are ignored by the API service.
        # Roles and privileges for administrators are assigned using the [Admin console](
        # https://support.google.com/a/answer/33325).
        # Corresponds to the JSON property `isDelegatedAdmin`
        # @return [Boolean]
        attr_accessor :is_delegated_admin
        alias_method :is_delegated_admin?, :is_delegated_admin
      
        # Output only. Is 2-step verification enforced (Read-only)
        # Corresponds to the JSON property `isEnforcedIn2Sv`
        # @return [Boolean]
        attr_accessor :is_enforced_in2_sv
        alias_method :is_enforced_in2_sv?, :is_enforced_in2_sv
      
        # Output only. Is enrolled in 2-step verification (Read-only)
        # Corresponds to the JSON property `isEnrolledIn2Sv`
        # @return [Boolean]
        attr_accessor :is_enrolled_in2_sv
        alias_method :is_enrolled_in2_sv?, :is_enrolled_in2_sv
      
        # Output only. Indicates if the user's Google mailbox is created. This property
        # is only applicable if the user has been assigned a Gmail license.
        # Corresponds to the JSON property `isMailboxSetup`
        # @return [Boolean]
        attr_accessor :is_mailbox_setup
        alias_method :is_mailbox_setup?, :is_mailbox_setup
      
        # The list of the user's keywords. The maximum allowed data size for this field
        # is 1KB.
        # Corresponds to the JSON property `keywords`
        # @return [Object]
        attr_accessor :keywords
      
        # Output only. The type of the API resource. For Users resources, the value is `
        # admin#directory#user`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's languages. The maximum allowed data size for this field is 1KB.
        # Corresponds to the JSON property `languages`
        # @return [Object]
        attr_accessor :languages
      
        # User's last login time. (Read-only)
        # Corresponds to the JSON property `lastLoginTime`
        # @return [DateTime]
        attr_accessor :last_login_time
      
        # The user's locations. The maximum allowed data size for this field is 10KB.
        # Corresponds to the JSON property `locations`
        # @return [Object]
        attr_accessor :locations
      
        # Holds the given and family names of the user, and the read-only `fullName`
        # value. The maximum number of characters in the `givenName` and in the `
        # familyName` values is 60. In addition, name values support unicode/UTF-8
        # characters, and can contain spaces, letters (a-z), numbers (0-9), dashes (-),
        # forward slashes (/), and periods (.). For more information about character
        # usage rules, see the [administration help center](https://support.google.com/a/
        # answer/9193374). Maximum allowed data size for this field is 1KB.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::AdminDirectoryV1::UserName]
        attr_accessor :name
      
        # Output only. The list of the user's non-editable alias email addresses. These
        # are typically outside the account's primary domain or sub-domain.
        # Corresponds to the JSON property `nonEditableAliases`
        # @return [Array<String>]
        attr_accessor :non_editable_aliases
      
        # Notes for the user.
        # Corresponds to the JSON property `notes`
        # @return [Object]
        attr_accessor :notes
      
        # The full path of the parent organization associated with the user. If the
        # parent organization is the top-level, it is represented as a forward slash (`/`
        # ).
        # Corresponds to the JSON property `orgUnitPath`
        # @return [String]
        attr_accessor :org_unit_path
      
        # The list of organizations the user belongs to. The maximum allowed data size
        # for this field is 10KB.
        # Corresponds to the JSON property `organizations`
        # @return [Object]
        attr_accessor :organizations
      
        # User's password
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The list of the user's phone numbers. The maximum allowed data size for this
        # field is 1KB.
        # Corresponds to the JSON property `phones`
        # @return [Object]
        attr_accessor :phones
      
        # The list of [POSIX](https://www.opengroup.org/austin/papers/posix_faq.html)
        # account information for the user.
        # Corresponds to the JSON property `posixAccounts`
        # @return [Object]
        attr_accessor :posix_accounts
      
        # The user's primary email address. This property is required in a request to
        # create a user account. The `primaryEmail` must be unique and cannot be an
        # alias of another user.
        # Corresponds to the JSON property `primaryEmail`
        # @return [String]
        attr_accessor :primary_email
      
        # Recovery email of the user.
        # Corresponds to the JSON property `recoveryEmail`
        # @return [String]
        attr_accessor :recovery_email
      
        # Recovery phone of the user. The phone number must be in the E.164 format,
        # starting with the plus sign (+). Example: *+16506661212*.
        # Corresponds to the JSON property `recoveryPhone`
        # @return [String]
        attr_accessor :recovery_phone
      
        # The list of the user's relationships to other users. The maximum allowed data
        # size for this field is 2KB.
        # Corresponds to the JSON property `relations`
        # @return [Object]
        attr_accessor :relations
      
        # A list of SSH public keys.
        # Corresponds to the JSON property `sshPublicKeys`
        # @return [Object]
        attr_accessor :ssh_public_keys
      
        # Indicates if user is suspended.
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
        # Output only. Has the reason a user account is suspended either by the
        # administrator or by Google at the time of suspension. The property is returned
        # only if the `suspended` property is `true`.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        # Output only. ETag of the user's photo (Read-only)
        # Corresponds to the JSON property `thumbnailPhotoEtag`
        # @return [String]
        attr_accessor :thumbnail_photo_etag
      
        # Output only. Photo Url of the user (Read-only)
        # Corresponds to the JSON property `thumbnailPhotoUrl`
        # @return [String]
        attr_accessor :thumbnail_photo_url
      
        # The user's websites. The maximum allowed data size for this field is 2KB.
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
          @archived = args[:archived] if args.key?(:archived)
          @change_password_at_next_login = args[:change_password_at_next_login] if args.key?(:change_password_at_next_login)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @custom_schemas = args[:custom_schemas] if args.key?(:custom_schemas)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @deletion_time = args[:deletion_time] if args.key?(:deletion_time)
          @emails = args[:emails] if args.key?(:emails)
          @etag = args[:etag] if args.key?(:etag)
          @external_ids = args[:external_ids] if args.key?(:external_ids)
          @gender = args[:gender] if args.key?(:gender)
          @hash_function = args[:hash_function] if args.key?(:hash_function)
          @id = args[:id] if args.key?(:id)
          @ims = args[:ims] if args.key?(:ims)
          @include_in_global_address_list = args[:include_in_global_address_list] if args.key?(:include_in_global_address_list)
          @ip_whitelisted = args[:ip_whitelisted] if args.key?(:ip_whitelisted)
          @is_admin = args[:is_admin] if args.key?(:is_admin)
          @is_delegated_admin = args[:is_delegated_admin] if args.key?(:is_delegated_admin)
          @is_enforced_in2_sv = args[:is_enforced_in2_sv] if args.key?(:is_enforced_in2_sv)
          @is_enrolled_in2_sv = args[:is_enrolled_in2_sv] if args.key?(:is_enrolled_in2_sv)
          @is_mailbox_setup = args[:is_mailbox_setup] if args.key?(:is_mailbox_setup)
          @keywords = args[:keywords] if args.key?(:keywords)
          @kind = args[:kind] if args.key?(:kind)
          @languages = args[:languages] if args.key?(:languages)
          @last_login_time = args[:last_login_time] if args.key?(:last_login_time)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @non_editable_aliases = args[:non_editable_aliases] if args.key?(:non_editable_aliases)
          @notes = args[:notes] if args.key?(:notes)
          @org_unit_path = args[:org_unit_path] if args.key?(:org_unit_path)
          @organizations = args[:organizations] if args.key?(:organizations)
          @password = args[:password] if args.key?(:password)
          @phones = args[:phones] if args.key?(:phones)
          @posix_accounts = args[:posix_accounts] if args.key?(:posix_accounts)
          @primary_email = args[:primary_email] if args.key?(:primary_email)
          @recovery_email = args[:recovery_email] if args.key?(:recovery_email)
          @recovery_phone = args[:recovery_phone] if args.key?(:recovery_phone)
          @relations = args[:relations] if args.key?(:relations)
          @ssh_public_keys = args[:ssh_public_keys] if args.key?(:ssh_public_keys)
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
        # at this time. You might be able to write structured addresses but any values
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
        # example address could be of home work etc. In addition to the standard type an
        # entry can have a custom type and can take any value. Such type should have the
        # CUSTOM value as type and also have a customType value.
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
      
      # The Directory API manages aliases, which are alternative email addresses.
      class UserAlias
        include Google::Apis::Core::Hashable
      
        # The alias email address.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique ID for the user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For Alias resources, the value is `admin#
        # directory#alias`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's primary email address.
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
      
      # 
      class UserGender
        include Google::Apis::Core::Hashable
      
        # AddressMeAs. A human-readable string containing the proper way to refer to the
        # profile owner by humans for example he/him/his or they/them/their.
        # Corresponds to the JSON property `addressMeAs`
        # @return [String]
        attr_accessor :address_me_as
      
        # Custom gender.
        # Corresponds to the JSON property `customGender`
        # @return [String]
        attr_accessor :custom_gender
      
        # Gender.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_me_as = args[:address_me_as] if args.key?(:address_me_as)
          @custom_gender = args[:custom_gender] if args.key?(:custom_gender)
          @type = args[:type] if args.key?(:type)
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
        # ImProtocolTypes map. Similar to type it can take a CUSTOM value and specify
        # the custom name in customProtocol field.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example instant messengers could be of home work etc. In addition to the
        # standard type an entry can have a custom type and can take any value. Such
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
      
      # JSON template for a keyword entry.
      class UserKeyword
        include Google::Apis::Core::Hashable
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # Each entry can have a type which indicates standard type of that entry. For
        # example keyword could be of type occupation or outlook. In addition to the
        # standard type an entry can have a custom type and can give it any name. Such
        # types should have the CUSTOM value as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Keyword.
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
      
      # JSON template for a language entry.
      class UserLanguage
        include Google::Apis::Core::Hashable
      
        # Other language. User can provide their own language name if there is no
        # corresponding ISO 639 language code. If this is set, `languageCode` can't be
        # set.
        # Corresponds to the JSON property `customLanguage`
        # @return [String]
        attr_accessor :custom_language
      
        # ISO 639 string representation of a language. See [Language Codes](/admin-sdk/
        # directory/v1/languages) for the list of supported codes. Valid language codes
        # outside the supported set will be accepted by the API but may lead to
        # unexpected behavior. Illegal values cause `SchemaException`. If this is set, `
        # customLanguage` can't be set.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. If present, controls whether the specified `languageCode` is the
        # user's preferred language. If `customLanguage` is set, this can't be set.
        # Allowed values are `preferred` and `not_preferred`.
        # Corresponds to the JSON property `preference`
        # @return [String]
        attr_accessor :preference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_language = args[:custom_language] if args.key?(:custom_language)
          @language_code = args[:language_code] if args.key?(:language_code)
          @preference = args[:preference] if args.key?(:preference)
        end
      end
      
      # JSON template for a location entry.
      class UserLocation
        include Google::Apis::Core::Hashable
      
        # Textual location. This is most useful for display purposes to concisely
        # describe the location. For example 'Mountain View, CA', 'Near Seattle', 'US-
        # NYC-9TH 9A209A.''
        # Corresponds to the JSON property `area`
        # @return [String]
        attr_accessor :area
      
        # Building Identifier.
        # Corresponds to the JSON property `buildingId`
        # @return [String]
        attr_accessor :building_id
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # Most specific textual code of individual desk location.
        # Corresponds to the JSON property `deskCode`
        # @return [String]
        attr_accessor :desk_code
      
        # Floor name/number.
        # Corresponds to the JSON property `floorName`
        # @return [String]
        attr_accessor :floor_name
      
        # Floor section. More specific location within the floor. For example if a floor
        # is divided into sections 'A', 'B' and 'C' this field would identify one of
        # those values.
        # Corresponds to the JSON property `floorSection`
        # @return [String]
        attr_accessor :floor_section
      
        # Each entry can have a type which indicates standard types of that entry. For
        # example location could be of types default and desk. In addition to standard
        # type an entry can have a custom type and can give it any name. Such types
        # should have 'custom' as type and also have a customType value.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @area = args[:area] if args.key?(:area)
          @building_id = args[:building_id] if args.key?(:building_id)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @desk_code = args[:desk_code] if args.key?(:desk_code)
          @floor_name = args[:floor_name] if args.key?(:floor_name)
          @floor_section = args[:floor_section] if args.key?(:floor_section)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class UserMakeAdmin
        include Google::Apis::Core::Hashable
      
        # Indicates the administrator status of the user.
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
      
      # 
      class UserName
        include Google::Apis::Core::Hashable
      
        # The user's display name. Limit: 256 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The user's last name. Required when creating a user account.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The user's full name formed by concatenating the first and last name values.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # The user's first name. Required when creating a user account.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
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
      
        # The full-time equivalent millipercent within the organization (100000 = 100%).
        # Corresponds to the JSON property `fullTimeEquivalent`
        # @return [Fixnum]
        attr_accessor :full_time_equivalent
      
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
        # example organization could be of school work etc. In addition to the standard
        # type an entry can have a custom type and can give it any name. Such types
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
          @full_time_equivalent = args[:full_time_equivalent] if args.key?(:full_time_equivalent)
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
        # example phone could be of home_fax work mobile etc. In addition to the
        # standard type an entry can have a custom type and can give it any name. Such
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
      
      # 
      class UserPhoto
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Height of the photo in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The ID the API uses to uniquely identify the user.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For Photo resources, this is `admin#directory#
        # user#photo`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The MIME type of the photo. Allowed values are `JPEG`, `PNG`, `GIF`, `BMP`, `
        # TIFF`, and web-safe base64 encoding.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The user photo's upload data in [web-safe Base64](https://en.wikipedia.org/
        # wiki/Base64#URL_applications) format in bytes. This means: * The slash (/)
        # character is replaced with the underscore (_) character. * The plus sign (+)
        # character is replaced with the hyphen (-) character. * The equals sign (=)
        # character is replaced with the asterisk (*). * For padding, the period (.)
        # character is used instead of the RFC-4648 baseURL definition which uses the
        # equals sign (=) for padding. This is done to simplify URL-parsing. * Whatever
        # the size of the photo being uploaded, the API downsizes it to 96x96 pixels.
        # Corresponds to the JSON property `photoData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :photo_data
      
        # The user's primary email address.
        # Corresponds to the JSON property `primaryEmail`
        # @return [String]
        attr_accessor :primary_email
      
        # Width of the photo in pixels.
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
      
      # JSON template for a POSIX account entry.
      class UserPosixAccount
        include Google::Apis::Core::Hashable
      
        # A POSIX account field identifier.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The GECOS (user information) for this account.
        # Corresponds to the JSON property `gecos`
        # @return [String]
        attr_accessor :gecos
      
        # The default group ID.
        # Corresponds to the JSON property `gid`
        # @return [Fixnum]
        attr_accessor :gid
      
        # The path to the home directory for this account.
        # Corresponds to the JSON property `homeDirectory`
        # @return [String]
        attr_accessor :home_directory
      
        # The operating system type for this account.
        # Corresponds to the JSON property `operatingSystemType`
        # @return [String]
        attr_accessor :operating_system_type
      
        # If this is user's primary account within the SystemId.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # The path to the login shell for this account.
        # Corresponds to the JSON property `shell`
        # @return [String]
        attr_accessor :shell
      
        # System identifier for which account Username or Uid apply to.
        # Corresponds to the JSON property `systemId`
        # @return [String]
        attr_accessor :system_id
      
        # The POSIX compliant user ID.
        # Corresponds to the JSON property `uid`
        # @return [Fixnum]
        attr_accessor :uid
      
        # The username of the account.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @gecos = args[:gecos] if args.key?(:gecos)
          @gid = args[:gid] if args.key?(:gid)
          @home_directory = args[:home_directory] if args.key?(:home_directory)
          @operating_system_type = args[:operating_system_type] if args.key?(:operating_system_type)
          @primary = args[:primary] if args.key?(:primary)
          @shell = args[:shell] if args.key?(:shell)
          @system_id = args[:system_id] if args.key?(:system_id)
          @uid = args[:uid] if args.key?(:uid)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # JSON template for a relation entry.
      class UserRelation
        include Google::Apis::Core::Hashable
      
        # Custom Type.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # The relation of the user. Some of the possible values are mother father sister
        # brother manager assistant partner.
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
      
      # JSON template for a POSIX account entry.
      class UserSshPublicKey
        include Google::Apis::Core::Hashable
      
        # An expiration time in microseconds since epoch.
        # Corresponds to the JSON property `expirationTimeUsec`
        # @return [Fixnum]
        attr_accessor :expiration_time_usec
      
        # A SHA-256 fingerprint of the SSH public key. (Read-only)
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # An SSH public key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time_usec = args[:expiration_time_usec] if args.key?(:expiration_time_usec)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # 
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
        # example website could be of home work blog etc. In addition to the standard
        # type an entry can have a custom type and can give it any name. Such types
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
      
      # 
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
      
        # A list of user objects.
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
      
      # The Directory API allows you to view, generate, and invalidate backup
      # verification codes for a user.
      class VerificationCode
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of the resource. This is always `admin#directory#verificationCode`.
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
      
      # JSON response template for list verification codes operation in Directory API.
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
      
        # The type of the resource. This is always `admin#directory#
        # verificationCodesList`.
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
