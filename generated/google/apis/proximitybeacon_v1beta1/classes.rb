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
    module ProximitybeaconV1beta1
      
      # Details of a beacon device.
      class Beacon
        include Google::Apis::Core::Hashable
      
        # Resource name of this beacon. A beacon name has the format "beacons/N!beaconId"
        # where the beaconId is the base16 ID broadcast by the beacon and N is a code
        # for the beacon's type. Possible values are `3` for Eddystone, `1` for iBeacon,
        # or `5` for AltBeacon. This field must be left empty when registering. After
        # reading a beacon, clients can use the name for future operations.
        # Corresponds to the JSON property `beaconName`
        # @return [String]
        attr_accessor :beacon_name
      
        # Defines a unique identifier of a beacon as broadcast by the device.
        # Corresponds to the JSON property `advertisedId`
        # @return [Google::Apis::ProximitybeaconV1beta1::AdvertisedId]
        attr_accessor :advertised_id
      
        # Current status of the beacon. Required.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The [Google Places API](/places/place-id) Place ID of the place where the
        # beacon is deployed. This is given when the beacon is registered or updated,
        # not automatically detected in any way. Optional.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges. Example of normalization code in Python: def
        # NormalizeLongitude(longitude): """Wrapsdecimal degrees longitude to [-180.0,
        # 180.0].""" q, r = divmod(longitude, 360.0) if r > 180.0 or (r == 180.0 and q <=
        # -1.0): return r - 360.0 return r def NormalizeLatLng(latitude, longitude): """
        # Wraps decimal degrees latitude and longitude to [-180.0, 180.0] and [-90.0, 90.
        # 0], respectively.""" r = latitude % 360.0 if r = 270.0: return r - 360,
        # NormalizeLongitude(longitude) else: return 180 - r, NormalizeLongitude(
        # longitude + 180.0) assert 180.0 == NormalizeLongitude(180.0) assert -180.0 ==
        # NormalizeLongitude(-180.0) assert -179.0 == NormalizeLongitude(181.0) assert (
        # 0.0, 0.0) == NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-
        # 360.0, 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0, -
        # 170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) == NormalizeLatLng(
        # 90.0, 10.0) assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0) assert (0.0,
        # -170.0) == NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
        # NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.
        # 0) assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::ProximitybeaconV1beta1::LatLng]
        attr_accessor :lat_lng
      
        # Indoor level, a human-readable string as returned by Google Maps APIs, useful
        # to indicate which floor of a building a beacon is located on.
        # Corresponds to the JSON property `indoorLevel`
        # @return [Google::Apis::ProximitybeaconV1beta1::IndoorLevel]
        attr_accessor :indoor_level
      
        # Expected location stability. This is set when the beacon is registered or
        # updated, not automatically detected in any way. Optional.
        # Corresponds to the JSON property `expectedStability`
        # @return [String]
        attr_accessor :expected_stability
      
        # Free text used to identify and describe the beacon. Maximum length 140
        # characters. Optional.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Properties of the beacon device, for example battery type or firmware version.
        # Optional.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beacon_name = args[:beacon_name] unless args[:beacon_name].nil?
          @advertised_id = args[:advertised_id] unless args[:advertised_id].nil?
          @status = args[:status] unless args[:status].nil?
          @place_id = args[:place_id] unless args[:place_id].nil?
          @lat_lng = args[:lat_lng] unless args[:lat_lng].nil?
          @indoor_level = args[:indoor_level] unless args[:indoor_level].nil?
          @expected_stability = args[:expected_stability] unless args[:expected_stability].nil?
          @description = args[:description] unless args[:description].nil?
          @properties = args[:properties] unless args[:properties].nil?
        end
      end
      
      # Defines a unique identifier of a beacon as broadcast by the device.
      class AdvertisedId
        include Google::Apis::Core::Hashable
      
        # Specifies the identifier type. Required.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The actual beacon identifier, as broadcast by the beacon hardware. Must be [
        # base64](http://tools.ietf.org/html/rfc4648#section-4) encoded in HTTP requests,
        # and will be so encoded (with padding) in responses. The base64 encoding
        # should be of the binary byte-stream and not any textual (such as hex)
        # representation thereof. Required.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] unless args[:type].nil?
          @id = args[:id] unless args[:id].nil?
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the WGS84 standard. Values must be
      # within normalized ranges. Example of normalization code in Python: def
      # NormalizeLongitude(longitude): """Wrapsdecimal degrees longitude to [-180.0,
      # 180.0].""" q, r = divmod(longitude, 360.0) if r > 180.0 or (r == 180.0 and q <=
      # -1.0): return r - 360.0 return r def NormalizeLatLng(latitude, longitude): """
      # Wraps decimal degrees latitude and longitude to [-180.0, 180.0] and [-90.0, 90.
      # 0], respectively.""" r = latitude % 360.0 if r = 270.0: return r - 360,
      # NormalizeLongitude(longitude) else: return 180 - r, NormalizeLongitude(
      # longitude + 180.0) assert 180.0 == NormalizeLongitude(180.0) assert -180.0 ==
      # NormalizeLongitude(-180.0) assert -179.0 == NormalizeLongitude(181.0) assert (
      # 0.0, 0.0) == NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-
      # 360.0, 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0, -
      # 170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) == NormalizeLatLng(
      # 90.0, 10.0) assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0) assert (0.0,
      # -170.0) == NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
      # NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.
      # 0) assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] unless args[:latitude].nil?
          @longitude = args[:longitude] unless args[:longitude].nil?
        end
      end
      
      # Indoor level, a human-readable string as returned by Google Maps APIs, useful
      # to indicate which floor of a building a beacon is located on.
      class IndoorLevel
        include Google::Apis::Core::Hashable
      
        # The name of this level.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response that contains list beacon results and pagination help.
      class ListBeaconsResponse
        include Google::Apis::Core::Hashable
      
        # The beacons that matched the search criteria.
        # Corresponds to the JSON property `beacons`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::Beacon>]
        attr_accessor :beacons
      
        # An opaque pagination token that the client may provide in their next request
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Estimate of the total number of beacons matched by the query. Higher values
        # may be less accurate.
        # Corresponds to the JSON property `totalCount`
        # @return [String]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beacons = args[:beacons] unless args[:beacons].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @total_count = args[:total_count] unless args[:total_count].nil?
        end
      end
      
      # Project-specific data associated with a beacon.
      class BeaconAttachment
        include Google::Apis::Core::Hashable
      
        # Resource name of this attachment. Attachment names have the format: beacons/
        # beacon_id/attachments/attachment_id. Leave this empty on creation.
        # Corresponds to the JSON property `attachmentName`
        # @return [String]
        attr_accessor :attachment_name
      
        # Specifies what kind of attachment this is. Tells a client how to interpret the
        # `data` field. Format is namespace/type. Namespace provides type separation
        # between clients. Type describes the type of `data`, for use by the client when
        # parsing the `data` field. Required.
        # Corresponds to the JSON property `namespacedType`
        # @return [String]
        attr_accessor :namespaced_type
      
        # An opaque data container for client-provided data. Must be [base64](http://
        # tools.ietf.org/html/rfc4648#section-4) encoded in HTTP requests, and will be
        # so encoded (with padding) in responses. Required.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_name = args[:attachment_name] unless args[:attachment_name].nil?
          @namespaced_type = args[:namespaced_type] unless args[:namespaced_type].nil?
          @data = args[:data] unless args[:data].nil?
        end
      end
      
      # Response to ListBeaconAttachments that contains the requested attachments.
      class ListBeaconAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # The attachments that corresponded to the request params.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::BeaconAttachment>]
        attr_accessor :attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] unless args[:attachments].nil?
        end
      end
      
      # Response for a request to delete attachments.
      class DeleteAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # The number of attachments that were deleted.
        # Corresponds to the JSON property `numDeleted`
        # @return [Fixnum]
        attr_accessor :num_deleted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_deleted = args[:num_deleted] unless args[:num_deleted].nil?
        end
      end
      
      # Response to ListNamespacesRequest that contains all the project's namespaces.
      class ListNamespacesResponse
        include Google::Apis::Core::Hashable
      
        # The attachments that corresponded to the request params.
        # Corresponds to the JSON property `namespaces`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::Namespace>]
        attr_accessor :namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaces = args[:namespaces] unless args[:namespaces].nil?
        end
      end
      
      # An attachment namespace defines read and write access for all the attachments
      # created under it. Each namespace is globally unique, and owned by one project
      # which is the only project that can create attachments under it.
      class Namespace
        include Google::Apis::Core::Hashable
      
        # Resource name of this namespace. Namespaces names have the format: namespaces/
        # namespace.
        # Corresponds to the JSON property `namespaceName`
        # @return [String]
        attr_accessor :namespace_name
      
        # Specifies what clients may receive attachments under this namespace via `
        # beaconinfo.getforobserved`.
        # Corresponds to the JSON property `servingVisibility`
        # @return [String]
        attr_accessor :serving_visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespace_name = args[:namespace_name] unless args[:namespace_name].nil?
          @serving_visibility = args[:serving_visibility] unless args[:serving_visibility].nil?
        end
      end
      
      # Response that contains the requested diagnostics.
      class ListDiagnosticsResponse
        include Google::Apis::Core::Hashable
      
        # The diagnostics matching the given request.
        # Corresponds to the JSON property `diagnostics`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::Diagnostics>]
        attr_accessor :diagnostics
      
        # Token that can be used for pagination. Returned only if the request matches
        # more beacons than can be returned in this response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnostics = args[:diagnostics] unless args[:diagnostics].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Diagnostics for a single beacon.
      class Diagnostics
        include Google::Apis::Core::Hashable
      
        # Resource name of the beacon.
        # Corresponds to the JSON property `beaconName`
        # @return [String]
        attr_accessor :beacon_name
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and time
        # zone are either specified elsewhere or are not significant. The date is
        # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
        # year and month where the day is not significant, e.g. credit card expiration
        # date. The year may be 0 to represent a month and day independent of year, e.g.
        # anniversary date. Related types are [google.type.TimeOfDay][] and `google.
        # protobuf.Timestamp`.
        # Corresponds to the JSON property `estimatedLowBatteryDate`
        # @return [Google::Apis::ProximitybeaconV1beta1::Date]
        attr_accessor :estimated_low_battery_date
      
        # An unordered list of Alerts that the beacon has.
        # Corresponds to the JSON property `alerts`
        # @return [Array<String>]
        attr_accessor :alerts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beacon_name = args[:beacon_name] unless args[:beacon_name].nil?
          @estimated_low_battery_date = args[:estimated_low_battery_date] unless args[:estimated_low_battery_date].nil?
          @alerts = args[:alerts] unless args[:alerts].nil?
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and time
      # zone are either specified elsewhere or are not significant. The date is
      # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
      # year and month where the day is not significant, e.g. credit card expiration
      # date. The year may be 0 to represent a month and day independent of year, e.g.
      # anniversary date. Related types are [google.type.TimeOfDay][] and `google.
      # protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Year of date. Must be from 1 to 9,999, or 0 if specifying a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Month of year of date. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if
        # specifying a year/month where the day is not sigificant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @year = args[:year] unless args[:year].nil?
          @month = args[:month] unless args[:month].nil?
          @day = args[:day] unless args[:day].nil?
        end
      end
      
      # Request for beacon and attachment information about beacons that a mobile
      # client has encountered "in the wild".
      class GetInfoForObservedBeaconsRequest
        include Google::Apis::Core::Hashable
      
        # The beacons that the client has encountered. At least one must be given.
        # Corresponds to the JSON property `observations`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::Observation>]
        attr_accessor :observations
      
        # Specifies what kind of attachments to include in the response. When given, the
        # response will include only attachments of the given types. When empty, no
        # attachments will be returned. Must be in the format namespace/type. Accepts `*`
        # to specify all types in all namespaces. Optional.
        # Corresponds to the JSON property `namespacedTypes`
        # @return [Array<String>]
        attr_accessor :namespaced_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @observations = args[:observations] unless args[:observations].nil?
          @namespaced_types = args[:namespaced_types] unless args[:namespaced_types].nil?
        end
      end
      
      # Represents one beacon observed once.
      class Observation
        include Google::Apis::Core::Hashable
      
        # Defines a unique identifier of a beacon as broadcast by the device.
        # Corresponds to the JSON property `advertisedId`
        # @return [Google::Apis::ProximitybeaconV1beta1::AdvertisedId]
        attr_accessor :advertised_id
      
        # The array of telemetry bytes received from the beacon. The server is
        # responsible for parsing it. This field may frequently be empty, as with a
        # beacon that transmits telemetry only occasionally.
        # Corresponds to the JSON property `telemetry`
        # @return [String]
        attr_accessor :telemetry
      
        # Time when the beacon was observed. Being sourced from a mobile device, this
        # time may be suspect.
        # Corresponds to the JSON property `timestampMs`
        # @return [String]
        attr_accessor :timestamp_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertised_id = args[:advertised_id] unless args[:advertised_id].nil?
          @telemetry = args[:telemetry] unless args[:telemetry].nil?
          @timestamp_ms = args[:timestamp_ms] unless args[:timestamp_ms].nil?
        end
      end
      
      # Information about the requested beacons, optionally including attachment data.
      class GetInfoForObservedBeaconsResponse
        include Google::Apis::Core::Hashable
      
        # Public information about beacons. May be empty if the request matched no
        # beacons.
        # Corresponds to the JSON property `beacons`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::BeaconInfo>]
        attr_accessor :beacons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beacons = args[:beacons] unless args[:beacons].nil?
        end
      end
      
      # A subset of beacon information served via the `beaconinfo.getforobserved`
      # method, which you call when users of your app encounter your beacons.
      class BeaconInfo
        include Google::Apis::Core::Hashable
      
        # Defines a unique identifier of a beacon as broadcast by the device.
        # Corresponds to the JSON property `advertisedId`
        # @return [Google::Apis::ProximitybeaconV1beta1::AdvertisedId]
        attr_accessor :advertised_id
      
        # The name under which the beacon is registered.
        # Corresponds to the JSON property `beaconName`
        # @return [String]
        attr_accessor :beacon_name
      
        # Free text used to identify or describe the beacon in a registered
        # establishment. For example: "entrance", "room 101", etc. May be empty.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Attachments matching the type(s) requested. May be empty if no attachment
        # types were requested, or if none matched.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::ProximitybeaconV1beta1::AttachmentInfo>]
        attr_accessor :attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertised_id = args[:advertised_id] unless args[:advertised_id].nil?
          @beacon_name = args[:beacon_name] unless args[:beacon_name].nil?
          @description = args[:description] unless args[:description].nil?
          @attachments = args[:attachments] unless args[:attachments].nil?
        end
      end
      
      # A subset of attachment information served via the `beaconinfo.getforobserved`
      # method, used when your users encounter your beacons.
      class AttachmentInfo
        include Google::Apis::Core::Hashable
      
        # Specifies what kind of attachment this is. Tells a client how to interpret the
        # `data` field. Format is namespace/type, for example scrupulous-wombat-12345/
        # welcome-message
        # Corresponds to the JSON property `namespacedType`
        # @return [String]
        attr_accessor :namespaced_type
      
        # An opaque data container for client-provided data.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaced_type = args[:namespaced_type] unless args[:namespaced_type].nil?
          @data = args[:data] unless args[:data].nil?
        end
      end
    end
  end
end
