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
    module SpectrumV1explorer
      
      # Antenna characteristics provide additional information, such as the antenna
      # height, antenna type, etc. Whether antenna characteristics must be provided in
      # a request depends on the device type and regulatory domain.
      class AntennaCharacteristics
        include Google::Apis::Core::Hashable
      
        # The antenna height in meters. Whether the antenna height is required depends
        # on the device type and the regulatory domain. Note that the height may be
        # negative.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # If the height is required, then the height type (AGL for above ground level or
        # AMSL for above mean sea level) is also required. The default is AGL.
        # Corresponds to the JSON property `heightType`
        # @return [String]
        attr_accessor :height_type
      
        # The height uncertainty in meters. Whether this is required depends on the
        # regulatory domain.
        # Corresponds to the JSON property `heightUncertainty`
        # @return [Float]
        attr_accessor :height_uncertainty
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @height_type = args[:height_type] if args.key?(:height_type)
          @height_uncertainty = args[:height_uncertainty] if args.key?(:height_uncertainty)
        end
      end
      
      # This message contains the name and URI of a database.
      class DatabaseSpec
        include Google::Apis::Core::Hashable
      
        # The display name for a database.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The corresponding URI of the database.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # This message is provided by the database to notify devices of an upcoming
      # change to the database URI.
      class DbUpdateSpec
        include Google::Apis::Core::Hashable
      
        # A required list of one or more databases. A device should update its
        # preconfigured list of databases to replace (only) the database that provided
        # the response with the specified entries.
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::SpectrumV1explorer::DatabaseSpec>]
        attr_accessor :databases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
        end
      end
      
      # Device capabilities provide additional information that may be used by a
      # device to provide additional information to the database that may help it to
      # determine available spectrum. If the database does not support device
      # capabilities it will ignore the parameter altogether.
      class DeviceCapabilities
        include Google::Apis::Core::Hashable
      
        # An optional list of frequency ranges supported by the device. Each element
        # must contain start and stop frequencies in which the device can operate.
        # Channel identifiers are optional. When specified, the database should not
        # return available spectrum that falls outside these ranges or channel IDs.
        # Corresponds to the JSON property `frequencyRanges`
        # @return [Array<Google::Apis::SpectrumV1explorer::FrequencyRange>]
        attr_accessor :frequency_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency_ranges = args[:frequency_ranges] if args.key?(:frequency_ranges)
        end
      end
      
      # The device descriptor contains parameters that identify the specific device,
      # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
      # FCC ID), and any other device characteristics required by regulatory domains.
      class DeviceDescriptor
        include Google::Apis::Core::Hashable
      
        # Specifies the ETSI white space device category. Valid values are the strings
        # master and slave. This field is case-insensitive. Consult the ETSI
        # documentation for details about the device types.
        # Corresponds to the JSON property `etsiEnDeviceCategory`
        # @return [String]
        attr_accessor :etsi_en_device_category
      
        # Specifies the ETSI white space device emissions class. The values are
        # represented by numeric strings, such as 1, 2, etc. Consult the ETSI
        # documentation for details about the device types.
        # Corresponds to the JSON property `etsiEnDeviceEmissionsClass`
        # @return [String]
        attr_accessor :etsi_en_device_emissions_class
      
        # Specifies the ETSI white space device type. Valid values are single-letter
        # strings, such as A, B, etc. Consult the ETSI documentation for details about
        # the device types.
        # Corresponds to the JSON property `etsiEnDeviceType`
        # @return [String]
        attr_accessor :etsi_en_device_type
      
        # Specifies the ETSI white space device technology identifier. The string value
        # must not exceed 64 characters in length. Consult the ETSI documentation for
        # details about the device types.
        # Corresponds to the JSON property `etsiEnTechnologyId`
        # @return [String]
        attr_accessor :etsi_en_technology_id
      
        # Specifies the device's FCC certification identifier. The value is an
        # identifier string whose length should not exceed 32 characters. Note that, in
        # practice, a valid FCC ID may be limited to 19 characters.
        # Corresponds to the JSON property `fccId`
        # @return [String]
        attr_accessor :fcc_id
      
        # Specifies the TV Band White Space device type, as defined by the FCC. Valid
        # values are FIXED, MODE_1, MODE_2.
        # Corresponds to the JSON property `fccTvbdDeviceType`
        # @return [String]
        attr_accessor :fcc_tvbd_device_type
      
        # The manufacturer's ID may be required by the regulatory domain. This should
        # represent the name of the device manufacturer, should be consistent across all
        # devices from the same manufacturer, and should be distinct from that of other
        # manufacturers. The string value must not exceed 64 characters in length.
        # Corresponds to the JSON property `manufacturerId`
        # @return [String]
        attr_accessor :manufacturer_id
      
        # The device's model ID may be required by the regulatory domain. The string
        # value must not exceed 64 characters in length.
        # Corresponds to the JSON property `modelId`
        # @return [String]
        attr_accessor :model_id
      
        # The list of identifiers for rulesets supported by the device. A database may
        # require that the device provide this list before servicing the device requests.
        # If the database does not support any of the rulesets specified in the list,
        # the database may refuse to service the device requests. If present, the list
        # must contain at least one entry.
        # For information about the valid requests, see section 9.2 of the PAWS
        # specification. Currently, FccTvBandWhiteSpace-2010 is the only supported
        # ruleset.
        # Corresponds to the JSON property `rulesetIds`
        # @return [Array<String>]
        attr_accessor :ruleset_ids
      
        # The manufacturer's device serial number; required by the applicable regulatory
        # domain. The length of the value must not exceed 64 characters.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etsi_en_device_category = args[:etsi_en_device_category] if args.key?(:etsi_en_device_category)
          @etsi_en_device_emissions_class = args[:etsi_en_device_emissions_class] if args.key?(:etsi_en_device_emissions_class)
          @etsi_en_device_type = args[:etsi_en_device_type] if args.key?(:etsi_en_device_type)
          @etsi_en_technology_id = args[:etsi_en_technology_id] if args.key?(:etsi_en_technology_id)
          @fcc_id = args[:fcc_id] if args.key?(:fcc_id)
          @fcc_tvbd_device_type = args[:fcc_tvbd_device_type] if args.key?(:fcc_tvbd_device_type)
          @manufacturer_id = args[:manufacturer_id] if args.key?(:manufacturer_id)
          @model_id = args[:model_id] if args.key?(:model_id)
          @ruleset_ids = args[:ruleset_ids] if args.key?(:ruleset_ids)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # This parameter contains device-owner information required as part of device
      # registration. The regulatory domains may require additional parameters.
      # All contact information must be expressed using the structure defined by the
      # vCard format specification. Only the contact fields of vCard are supported:
      # - fn: Full name of an individual
      # - org: Name of the organization
      # - adr: Address fields
      # - tel: Telephone numbers
      # - email: Email addresses
      # Note that the vCard specification defines maximum lengths for each field.
      class DeviceOwner
        include Google::Apis::Core::Hashable
      
        # A vCard-in-JSON message that contains only the fields needed for PAWS:
        # - fn: Full name of an individual
        # - org: Name of the organization
        # - adr: Address fields
        # - tel: Telephone numbers
        # - email: Email addresses
        # Corresponds to the JSON property `operator`
        # @return [Google::Apis::SpectrumV1explorer::Vcard]
        attr_accessor :operator
      
        # A vCard-in-JSON message that contains only the fields needed for PAWS:
        # - fn: Full name of an individual
        # - org: Name of the organization
        # - adr: Address fields
        # - tel: Telephone numbers
        # - email: Email addresses
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::SpectrumV1explorer::Vcard]
        attr_accessor :owner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator = args[:operator] if args.key?(:operator)
          @owner = args[:owner] if args.key?(:owner)
        end
      end
      
      # The device validity element describes whether a particular device is valid to
      # operate in the regulatory domain.
      class DeviceValidity
        include Google::Apis::Core::Hashable
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # The validity status: true if the device is valid for operation, false
        # otherwise. It will always be present.
        # Corresponds to the JSON property `isValid`
        # @return [Boolean]
        attr_accessor :is_valid
        alias_method :is_valid?, :is_valid
      
        # If the device identifier is not valid, the database may include a reason. The
        # reason may be in any language. The length of the value should not exceed 128
        # characters.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @is_valid = args[:is_valid] if args.key?(:is_valid)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # The start and stop times of an event. This is used to indicate the time period
      # for which a spectrum profile is valid.
      # Both times are expressed using the format, YYYY-MM-DDThh:mm:ssZ, as defined in
      # RFC3339. The times must be expressed using UTC.
      class EventTime
        include Google::Apis::Core::Hashable
      
        # The inclusive start of the event. It will be present.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The exclusive end of the event. It will be present.
        # Corresponds to the JSON property `stopTime`
        # @return [String]
        attr_accessor :stop_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @stop_time = args[:stop_time] if args.key?(:stop_time)
        end
      end
      
      # A specific range of frequencies together with the associated maximum power
      # level and channel identifier.
      class FrequencyRange
        include Google::Apis::Core::Hashable
      
        # The database may include a channel identifier, when applicable. When it is
        # included, the device should treat it as informative. The length of the
        # identifier should not exceed 16 characters.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # The maximum total power level (EIRP)—computed over the corresponding operating
        # bandwidth—that is permitted within the frequency range. Depending on the
        # context in which the frequency-range element appears, this value may be
        # required. For example, it is required in the available-spectrum response,
        # available-spectrum-batch response, and spectrum-use notification message, but
        # it should not be present (it is not applicable) when the frequency range
        # appears inside a device-capabilities message.
        # Corresponds to the JSON property `maxPowerDBm`
        # @return [Float]
        attr_accessor :max_power_d_bm
      
        # The required inclusive start of the frequency range (in Hertz).
        # Corresponds to the JSON property `startHz`
        # @return [Float]
        attr_accessor :start_hz
      
        # The required exclusive end of the frequency range (in Hertz).
        # Corresponds to the JSON property `stopHz`
        # @return [Float]
        attr_accessor :stop_hz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @max_power_d_bm = args[:max_power_d_bm] if args.key?(:max_power_d_bm)
          @start_hz = args[:start_hz] if args.key?(:start_hz)
          @stop_hz = args[:stop_hz] if args.key?(:stop_hz)
        end
      end
      
      # This parameter is used to specify the geolocation of the device.
      class GeoLocation
        include Google::Apis::Core::Hashable
      
        # The location confidence level, as an integer percentage, may be required,
        # depending on the regulatory domain. When the parameter is optional and not
        # provided, its value is assumed to be 95. Valid values range from 0 to 99,
        # since, in practice, 100-percent confidence is not achievable. The confidence
        # value is meaningful only when geolocation refers to a point with uncertainty.
        # Corresponds to the JSON property `confidence`
        # @return [Fixnum]
        attr_accessor :confidence
      
        # A "point" with uncertainty is represented using the Ellipse shape.
        # Corresponds to the JSON property `point`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocationEllipse]
        attr_accessor :point
      
        # A region is represented using the polygonal shape.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocationPolygon]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @point = args[:point] if args.key?(:point)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # A "point" with uncertainty is represented using the Ellipse shape.
      class GeoLocationEllipse
        include Google::Apis::Core::Hashable
      
        # A single geolocation on the globe.
        # Corresponds to the JSON property `center`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocationPoint]
        attr_accessor :center
      
        # A floating-point number that expresses the orientation of the ellipse,
        # representing the rotation, in degrees, of the semi-major axis from North
        # towards the East. For example, when the uncertainty is greatest along the
        # North-South direction, orientation is 0 degrees; conversely, if the
        # uncertainty is greatest along the East-West direction, orientation is 90
        # degrees. When orientation is not present, the orientation is assumed to be 0.
        # Corresponds to the JSON property `orientation`
        # @return [Float]
        attr_accessor :orientation
      
        # A floating-point number that expresses the location uncertainty along the
        # major axis of the ellipse. May be required by the regulatory domain. When the
        # uncertainty is optional, the default value is 0.
        # Corresponds to the JSON property `semiMajorAxis`
        # @return [Float]
        attr_accessor :semi_major_axis
      
        # A floating-point number that expresses the location uncertainty along the
        # minor axis of the ellipse. May be required by the regulatory domain. When the
        # uncertainty is optional, the default value is 0.
        # Corresponds to the JSON property `semiMinorAxis`
        # @return [Float]
        attr_accessor :semi_minor_axis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @center = args[:center] if args.key?(:center)
          @orientation = args[:orientation] if args.key?(:orientation)
          @semi_major_axis = args[:semi_major_axis] if args.key?(:semi_major_axis)
          @semi_minor_axis = args[:semi_minor_axis] if args.key?(:semi_minor_axis)
        end
      end
      
      # A single geolocation on the globe.
      class GeoLocationPoint
        include Google::Apis::Core::Hashable
      
        # A required floating-point number that expresses the latitude in degrees using
        # the WGS84 datum. For details on this encoding, see the National Imagery and
        # Mapping Agency's Technical Report TR8350.2.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # A required floating-point number that expresses the longitude in degrees using
        # the WGS84 datum. For details on this encoding, see the National Imagery and
        # Mapping Agency's Technical Report TR8350.2.
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
      
      # A region is represented using the polygonal shape.
      class GeoLocationPolygon
        include Google::Apis::Core::Hashable
      
        # When the geolocation describes a region, the exterior field refers to a list
        # of latitude/longitude points that represent the vertices of a polygon. The
        # first and last points must be the same. Thus, a minimum of four points is
        # required. The following polygon restrictions from RFC5491 apply:
        # - A connecting line shall not cross another connecting line of the same
        # polygon.
        # - The vertices must be defined in a counterclockwise order.
        # - The edges of a polygon are defined by the shortest path between two points
        # in space (not a geodesic curve). Consequently, the length between two adjacent
        # vertices should be restricted to a maximum of 130 km.
        # - All vertices are assumed to be at the same altitude.
        # - Polygon shapes should be restricted to a maximum of 15 vertices (16 points
        # that include the repeated vertex).
        # Corresponds to the JSON property `exterior`
        # @return [Array<Google::Apis::SpectrumV1explorer::GeoLocationPoint>]
        attr_accessor :exterior
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exterior = args[:exterior] if args.key?(:exterior)
        end
      end
      
      # The schedule of spectrum profiles available at a particular geolocation.
      class GeoSpectrumSchedule
        include Google::Apis::Core::Hashable
      
        # This parameter is used to specify the geolocation of the device.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # A list of available spectrum profiles and associated times. It will always be
        # present, and at least one schedule must be included (though it may be empty if
        # there is no available spectrum). More than one schedule may be included to
        # represent future changes to the available spectrum.
        # Corresponds to the JSON property `spectrumSchedules`
        # @return [Array<Google::Apis::SpectrumV1explorer::SpectrumSchedule>]
        attr_accessor :spectrum_schedules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @spectrum_schedules = args[:spectrum_schedules] if args.key?(:spectrum_schedules)
        end
      end
      
      # The request message for a batch available spectrum query protocol.
      class PawsGetSpectrumBatchRequest
        include Google::Apis::Core::Hashable
      
        # Antenna characteristics provide additional information, such as the antenna
        # height, antenna type, etc. Whether antenna characteristics must be provided in
        # a request depends on the device type and regulatory domain.
        # Corresponds to the JSON property `antenna`
        # @return [Google::Apis::SpectrumV1explorer::AntennaCharacteristics]
        attr_accessor :antenna
      
        # Device capabilities provide additional information that may be used by a
        # device to provide additional information to the database that may help it to
        # determine available spectrum. If the database does not support device
        # capabilities it will ignore the parameter altogether.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::SpectrumV1explorer::DeviceCapabilities]
        attr_accessor :capabilities
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # A geolocation list is required. This allows a device to specify its current
        # location plus additional anticipated locations when allowed by the regulatory
        # domain. At least one location must be included. Geolocation must be given as
        # the location of the radiation center of the device's antenna. If a location
        # specifies a region, rather than a point, the database may return an
        # UNIMPLEMENTED error if it does not support query by region.
        # There is no upper limit on the number of locations included in a available
        # spectrum batch request, but the database may restrict the number of locations
        # it supports by returning a response with fewer locations than specified in the
        # batch request. Note that geolocations must be those of the master device (a
        # device with geolocation capability that makes an available spectrum batch
        # request), whether the master device is making the request on its own behalf or
        # on behalf of a slave device (one without geolocation capability).
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::SpectrumV1explorer::GeoLocation>]
        attr_accessor :locations
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `masterDeviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :master_device_desc
      
        # This parameter contains device-owner information required as part of device
        # registration. The regulatory domains may require additional parameters.
        # All contact information must be expressed using the structure defined by the
        # vCard format specification. Only the contact fields of vCard are supported:
        # - fn: Full name of an individual
        # - org: Name of the organization
        # - adr: Address fields
        # - tel: Telephone numbers
        # - email: Email addresses
        # Note that the vCard specification defines maximum lengths for each field.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::SpectrumV1explorer::DeviceOwner]
        attr_accessor :owner
      
        # The request type parameter is an optional parameter that can be used to modify
        # an available spectrum batch request, but its use depends on applicable
        # regulatory rules. For example, It may be used to request generic slave device
        # parameters without having to specify the device descriptor for a specific
        # device. When the requestType parameter is missing, the request is for a
        # specific device (master or slave), and the device descriptor parameter for the
        # device on whose behalf the batch request is made is required.
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @antenna = args[:antenna] if args.key?(:antenna)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @locations = args[:locations] if args.key?(:locations)
          @master_device_desc = args[:master_device_desc] if args.key?(:master_device_desc)
          @owner = args[:owner] if args.key?(:owner)
          @request_type = args[:request_type] if args.key?(:request_type)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The response message for the batch available spectrum query contains a
      # schedule of available spectrum for the device at multiple locations.
      class PawsGetSpectrumBatchResponse
        include Google::Apis::Core::Hashable
      
        # This message is provided by the database to notify devices of an upcoming
        # change to the database URI.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # The available spectrum batch response must contain a geo-spectrum schedule
        # list, The list may be empty if spectrum is not available. The database may
        # return more than one geo-spectrum schedule to represent future changes to the
        # available spectrum. How far in advance a schedule may be provided depends upon
        # the applicable regulatory domain. The database may return available spectrum
        # for fewer geolocations than requested. The device must not make assumptions
        # about the order of the entries in the list, and must use the geolocation value
        # in each geo-spectrum schedule entry to match available spectrum to a location.
        # Corresponds to the JSON property `geoSpectrumSchedules`
        # @return [Array<Google::Apis::SpectrumV1explorer::GeoSpectrumSchedule>]
        attr_accessor :geo_spectrum_schedules
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsGetSpectrumBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The database may return a constraint on the allowed maximum contiguous
        # bandwidth (in Hertz). A regulatory domain may require the database to return
        # this parameter. When this parameter is present in the response, the device
        # must apply this constraint to its spectrum-selection logic to ensure that no
        # single block of spectrum has bandwidth that exceeds this value.
        # Corresponds to the JSON property `maxContiguousBwHz`
        # @return [Float]
        attr_accessor :max_contiguous_bw_hz
      
        # The database may return a constraint on the allowed maximum total bandwidth (
        # in Hertz), which does not need to be contiguous. A regulatory domain may
        # require the database to return this parameter. When this parameter is present
        # in the available spectrum batch response, the device must apply this
        # constraint to its spectrum-selection logic to ensure that total bandwidth does
        # not exceed this value.
        # Corresponds to the JSON property `maxTotalBwHz`
        # @return [Float]
        attr_accessor :max_total_bw_hz
      
        # For regulatory domains that require a spectrum-usage report from devices, the
        # database must return true for this parameter if the geo-spectrum schedules
        # list is not empty; otherwise, the database should either return false or omit
        # this parameter. If this parameter is present and its value is true, the device
        # must send a spectrum use notify message to the database; otherwise, the device
        # should not send the notification.
        # Corresponds to the JSON property `needsSpectrumReport`
        # @return [Boolean]
        attr_accessor :needs_spectrum_report
        alias_method :needs_spectrum_report?, :needs_spectrum_report
      
        # This contains parameters for the ruleset of a regulatory domain that is
        # communicated using the initialization and available-spectrum processes.
        # Corresponds to the JSON property `rulesetInfo`
        # @return [Google::Apis::SpectrumV1explorer::RulesetInfo]
        attr_accessor :ruleset_info
      
        # The database includes a timestamp of the form, YYYY-MM-DDThh:mm:ssZ (Internet
        # timestamp format per RFC3339), in its available spectrum batch response. The
        # timestamp should be used by the device as a reference for the start and stop
        # times specified in the response spectrum schedules.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_change = args[:database_change] if args.key?(:database_change)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @geo_spectrum_schedules = args[:geo_spectrum_schedules] if args.key?(:geo_spectrum_schedules)
          @kind = args[:kind] if args.key?(:kind)
          @max_contiguous_bw_hz = args[:max_contiguous_bw_hz] if args.key?(:max_contiguous_bw_hz)
          @max_total_bw_hz = args[:max_total_bw_hz] if args.key?(:max_total_bw_hz)
          @needs_spectrum_report = args[:needs_spectrum_report] if args.key?(:needs_spectrum_report)
          @ruleset_info = args[:ruleset_info] if args.key?(:ruleset_info)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The request message for the available spectrum query protocol which must
      # include the device's geolocation.
      class PawsGetSpectrumRequest
        include Google::Apis::Core::Hashable
      
        # Antenna characteristics provide additional information, such as the antenna
        # height, antenna type, etc. Whether antenna characteristics must be provided in
        # a request depends on the device type and regulatory domain.
        # Corresponds to the JSON property `antenna`
        # @return [Google::Apis::SpectrumV1explorer::AntennaCharacteristics]
        attr_accessor :antenna
      
        # Device capabilities provide additional information that may be used by a
        # device to provide additional information to the database that may help it to
        # determine available spectrum. If the database does not support device
        # capabilities it will ignore the parameter altogether.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::SpectrumV1explorer::DeviceCapabilities]
        attr_accessor :capabilities
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # This parameter is used to specify the geolocation of the device.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `masterDeviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :master_device_desc
      
        # This parameter contains device-owner information required as part of device
        # registration. The regulatory domains may require additional parameters.
        # All contact information must be expressed using the structure defined by the
        # vCard format specification. Only the contact fields of vCard are supported:
        # - fn: Full name of an individual
        # - org: Name of the organization
        # - adr: Address fields
        # - tel: Telephone numbers
        # - email: Email addresses
        # Note that the vCard specification defines maximum lengths for each field.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::SpectrumV1explorer::DeviceOwner]
        attr_accessor :owner
      
        # The request type parameter is an optional parameter that can be used to modify
        # an available spectrum request, but its use depends on applicable regulatory
        # rules. It may be used, for example, to request generic slave device parameters
        # without having to specify the device descriptor for a specific device. When
        # the requestType parameter is missing, the request is for a specific device (
        # master or slave), and the deviceDesc parameter for the device on whose behalf
        # the request is made is required.
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @antenna = args[:antenna] if args.key?(:antenna)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @location = args[:location] if args.key?(:location)
          @master_device_desc = args[:master_device_desc] if args.key?(:master_device_desc)
          @owner = args[:owner] if args.key?(:owner)
          @request_type = args[:request_type] if args.key?(:request_type)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The response message for the available spectrum query which contains a
      # schedule of available spectrum for the device.
      class PawsGetSpectrumResponse
        include Google::Apis::Core::Hashable
      
        # This message is provided by the database to notify devices of an upcoming
        # change to the database URI.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsGetSpectrumResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The database may return a constraint on the allowed maximum contiguous
        # bandwidth (in Hertz). A regulatory domain may require the database to return
        # this parameter. When this parameter is present in the response, the device
        # must apply this constraint to its spectrum-selection logic to ensure that no
        # single block of spectrum has bandwidth that exceeds this value.
        # Corresponds to the JSON property `maxContiguousBwHz`
        # @return [Float]
        attr_accessor :max_contiguous_bw_hz
      
        # The database may return a constraint on the allowed maximum total bandwidth (
        # in Hertz), which need not be contiguous. A regulatory domain may require the
        # database to return this parameter. When this parameter is present in the
        # available spectrum response, the device must apply this constraint to its
        # spectrum-selection logic to ensure that total bandwidth does not exceed this
        # value.
        # Corresponds to the JSON property `maxTotalBwHz`
        # @return [Float]
        attr_accessor :max_total_bw_hz
      
        # For regulatory domains that require a spectrum-usage report from devices, the
        # database must return true for this parameter if the spectrum schedule list is
        # not empty; otherwise, the database will either return false or omit this
        # parameter. If this parameter is present and its value is true, the device must
        # send a spectrum use notify message to the database; otherwise, the device must
        # not send the notification.
        # Corresponds to the JSON property `needsSpectrumReport`
        # @return [Boolean]
        attr_accessor :needs_spectrum_report
        alias_method :needs_spectrum_report?, :needs_spectrum_report
      
        # This contains parameters for the ruleset of a regulatory domain that is
        # communicated using the initialization and available-spectrum processes.
        # Corresponds to the JSON property `rulesetInfo`
        # @return [Google::Apis::SpectrumV1explorer::RulesetInfo]
        attr_accessor :ruleset_info
      
        # The available spectrum response must contain a spectrum schedule list. The
        # list may be empty if spectrum is not available. The database may return more
        # than one spectrum schedule to represent future changes to the available
        # spectrum. How far in advance a schedule may be provided depends on the
        # applicable regulatory domain.
        # Corresponds to the JSON property `spectrumSchedules`
        # @return [Array<Google::Apis::SpectrumV1explorer::SpectrumSchedule>]
        attr_accessor :spectrum_schedules
      
        # The database includes a timestamp of the form YYYY-MM-DDThh:mm:ssZ (Internet
        # timestamp format per RFC3339) in its available spectrum response. The
        # timestamp should be used by the device as a reference for the start and stop
        # times specified in the response spectrum schedules.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_change = args[:database_change] if args.key?(:database_change)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @kind = args[:kind] if args.key?(:kind)
          @max_contiguous_bw_hz = args[:max_contiguous_bw_hz] if args.key?(:max_contiguous_bw_hz)
          @max_total_bw_hz = args[:max_total_bw_hz] if args.key?(:max_total_bw_hz)
          @needs_spectrum_report = args[:needs_spectrum_report] if args.key?(:needs_spectrum_report)
          @ruleset_info = args[:ruleset_info] if args.key?(:ruleset_info)
          @spectrum_schedules = args[:spectrum_schedules] if args.key?(:spectrum_schedules)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The initialization request message allows the master device to initiate
      # exchange of capabilities with the database.
      class PawsInitRequest
        include Google::Apis::Core::Hashable
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # This parameter is used to specify the geolocation of the device.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @location = args[:location] if args.key?(:location)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The initialization response message communicates database parameters to the
      # requesting device.
      class PawsInitResponse
        include Google::Apis::Core::Hashable
      
        # This message is provided by the database to notify devices of an upcoming
        # change to the database URI.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsInitResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This contains parameters for the ruleset of a regulatory domain that is
        # communicated using the initialization and available-spectrum processes.
        # Corresponds to the JSON property `rulesetInfo`
        # @return [Google::Apis::SpectrumV1explorer::RulesetInfo]
        attr_accessor :ruleset_info
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_change = args[:database_change] if args.key?(:database_change)
          @kind = args[:kind] if args.key?(:kind)
          @ruleset_info = args[:ruleset_info] if args.key?(:ruleset_info)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The spectrum-use notification message which must contain the geolocation of
      # the Device and parameters required by the regulatory domain.
      class PawsNotifySpectrumUseRequest
        include Google::Apis::Core::Hashable
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # This parameter is used to specify the geolocation of the device.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # A spectrum list is required in the spectrum-use notification. The list
        # specifies the spectrum that the device expects to use, which includes
        # frequency ranges and maximum power levels. The list may be empty if the device
        # decides not to use any of spectrum. For consistency, the psdBandwidthHz value
        # should match that from one of the spectrum elements in the corresponding
        # available spectrum response previously sent to the device by the database.
        # Note that maximum power levels in the spectrum element must be expressed as
        # power spectral density over the specified psdBandwidthHz value. The actual
        # bandwidth to be used (as computed from the start and stop frequencies) may be
        # different from the psdBandwidthHz value. As an example, when regulatory rules
        # express maximum power spectral density in terms of maximum power over any 100
        # kHz band, then the psdBandwidthHz value should be set to 100 kHz, even though
        # the actual bandwidth used can be 20 kHz.
        # Corresponds to the JSON property `spectra`
        # @return [Array<Google::Apis::SpectrumV1explorer::SpectrumMessage>]
        attr_accessor :spectra
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @location = args[:location] if args.key?(:location)
          @spectra = args[:spectra] if args.key?(:spectra)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # An empty response to the notification.
      class PawsNotifySpectrumUseResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsNotifySpectrumUseResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The registration request message contains the required registration parameters.
      class PawsRegisterRequest
        include Google::Apis::Core::Hashable
      
        # Antenna characteristics provide additional information, such as the antenna
        # height, antenna type, etc. Whether antenna characteristics must be provided in
        # a request depends on the device type and regulatory domain.
        # Corresponds to the JSON property `antenna`
        # @return [Google::Apis::SpectrumV1explorer::AntennaCharacteristics]
        attr_accessor :antenna
      
        # The device descriptor contains parameters that identify the specific device,
        # such as its manufacturer serial number, regulatory-specific identifier (e.g.,
        # FCC ID), and any other device characteristics required by regulatory domains.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # This parameter contains device-owner information required as part of device
        # registration. The regulatory domains may require additional parameters.
        # All contact information must be expressed using the structure defined by the
        # vCard format specification. Only the contact fields of vCard are supported:
        # - fn: Full name of an individual
        # - org: Name of the organization
        # - adr: Address fields
        # - tel: Telephone numbers
        # - email: Email addresses
        # Note that the vCard specification defines maximum lengths for each field.
        # Corresponds to the JSON property `deviceOwner`
        # @return [Google::Apis::SpectrumV1explorer::DeviceOwner]
        attr_accessor :device_owner
      
        # This parameter is used to specify the geolocation of the device.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @antenna = args[:antenna] if args.key?(:antenna)
          @device_desc = args[:device_desc] if args.key?(:device_desc)
          @device_owner = args[:device_owner] if args.key?(:device_owner)
          @location = args[:location] if args.key?(:location)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The registration response message simply acknowledges receipt of the request
      # and is otherwise empty.
      class PawsRegisterResponse
        include Google::Apis::Core::Hashable
      
        # This message is provided by the database to notify devices of an upcoming
        # change to the database URI.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsRegisterResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_change = args[:database_change] if args.key?(:database_change)
          @kind = args[:kind] if args.key?(:kind)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The device validation request message.
      class PawsVerifyDeviceRequest
        include Google::Apis::Core::Hashable
      
        # A list of device descriptors, which specifies the slave devices to be
        # validated, is required.
        # Corresponds to the JSON property `deviceDescs`
        # @return [Array<Google::Apis::SpectrumV1explorer::DeviceDescriptor>]
        attr_accessor :device_descs
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_descs = args[:device_descs] if args.key?(:device_descs)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The device validation response message.
      class PawsVerifyDeviceResponse
        include Google::Apis::Core::Hashable
      
        # This message is provided by the database to notify devices of an upcoming
        # change to the database URI.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # A device validities list is required in the device validation response to
        # report whether each slave device listed in a previous device validation
        # request is valid. The number of entries must match the number of device
        # descriptors listed in the previous device validation request.
        # Corresponds to the JSON property `deviceValidities`
        # @return [Array<Google::Apis::SpectrumV1explorer::DeviceValidity>]
        attr_accessor :device_validities
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsVerifyDeviceResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).
        # Required field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The PAWS version. Must be exactly 1.0.
        # Required field.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_change = args[:database_change] if args.key?(:database_change)
          @device_validities = args[:device_validities] if args.key?(:device_validities)
          @kind = args[:kind] if args.key?(:kind)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # This contains parameters for the ruleset of a regulatory domain that is
      # communicated using the initialization and available-spectrum processes.
      class RulesetInfo
        include Google::Apis::Core::Hashable
      
        # The regulatory domain to which the ruleset belongs is required. It must be a 2-
        # letter country code. The device should use this to determine additional device
        # behavior required by the associated regulatory domain.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # The maximum location change in meters is required in the initialization
        # response, but optional otherwise. When the device changes location by more
        # than this specified distance, it must contact the database to get the
        # available spectrum for the new location. If the device is using spectrum that
        # is no longer available, it must immediately cease use of the spectrum under
        # rules for database-managed spectrum. If this value is provided within the
        # context of an available-spectrum response, it takes precedence over the value
        # within the initialization response.
        # Corresponds to the JSON property `maxLocationChange`
        # @return [Float]
        attr_accessor :max_location_change
      
        # The maximum duration, in seconds, between requests for available spectrum. It
        # is required in the initialization response, but optional otherwise. The device
        # must contact the database to get available spectrum no less frequently than
        # this duration. If the new spectrum information indicates that the device is
        # using spectrum that is no longer available, it must immediately cease use of
        # those frequencies under rules for database-managed spectrum. If this value is
        # provided within the context of an available-spectrum response, it takes
        # precedence over the value within the initialization response.
        # Corresponds to the JSON property `maxPollingSecs`
        # @return [Fixnum]
        attr_accessor :max_polling_secs
      
        # The identifiers of the rulesets supported for the device's location. The
        # database should include at least one applicable ruleset in the initialization
        # response. The device may use the ruleset identifiers to determine parameters
        # to include in subsequent requests. Within the context of the available-
        # spectrum responses, the database should include the identifier of the ruleset
        # that it used to determine the available-spectrum response. If included, the
        # device must use the specified ruleset to interpret the response. If the device
        # does not support the indicated ruleset, it must not operate in the spectrum
        # governed by the ruleset.
        # Corresponds to the JSON property `rulesetIds`
        # @return [Array<String>]
        attr_accessor :ruleset_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @max_location_change = args[:max_location_change] if args.key?(:max_location_change)
          @max_polling_secs = args[:max_polling_secs] if args.key?(:max_polling_secs)
          @ruleset_ids = args[:ruleset_ids] if args.key?(:ruleset_ids)
        end
      end
      
      # Available spectrum can be logically characterized by a list of frequency
      # ranges and permissible power levels for each range.
      class SpectrumMessage
        include Google::Apis::Core::Hashable
      
        # The bandwidth (in Hertz) for which permissible power levels are specified. For
        # example, FCC regulation would require only one spectrum specification at 6MHz
        # bandwidth, but Ofcom regulation would require two specifications, at 0.1MHz
        # and 8MHz. This parameter may be empty if there is no available spectrum. It
        # will be present otherwise.
        # Corresponds to the JSON property `bandwidth`
        # @return [Float]
        attr_accessor :bandwidth
      
        # The list of frequency ranges and permissible power levels. The list may be
        # empty if there is no available spectrum, otherwise it will be present.
        # Corresponds to the JSON property `frequencyRanges`
        # @return [Array<Google::Apis::SpectrumV1explorer::FrequencyRange>]
        attr_accessor :frequency_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bandwidth = args[:bandwidth] if args.key?(:bandwidth)
          @frequency_ranges = args[:frequency_ranges] if args.key?(:frequency_ranges)
        end
      end
      
      # The spectrum schedule element combines an event time with spectrum profile to
      # define a time period in which the profile is valid.
      class SpectrumSchedule
        include Google::Apis::Core::Hashable
      
        # The start and stop times of an event. This is used to indicate the time period
        # for which a spectrum profile is valid.
        # Both times are expressed using the format, YYYY-MM-DDThh:mm:ssZ, as defined in
        # RFC3339. The times must be expressed using UTC.
        # Corresponds to the JSON property `eventTime`
        # @return [Google::Apis::SpectrumV1explorer::EventTime]
        attr_accessor :event_time
      
        # A list of spectrum messages representing the usable profile. It will always be
        # present, but may be empty when there is no available spectrum.
        # Corresponds to the JSON property `spectra`
        # @return [Array<Google::Apis::SpectrumV1explorer::SpectrumMessage>]
        attr_accessor :spectra
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_time = args[:event_time] if args.key?(:event_time)
          @spectra = args[:spectra] if args.key?(:spectra)
        end
      end
      
      # A vCard-in-JSON message that contains only the fields needed for PAWS:
      # - fn: Full name of an individual
      # - org: Name of the organization
      # - adr: Address fields
      # - tel: Telephone numbers
      # - email: Email addresses
      class Vcard
        include Google::Apis::Core::Hashable
      
        # The structure used to represent a street address.
        # Corresponds to the JSON property `adr`
        # @return [Google::Apis::SpectrumV1explorer::VcardAddress]
        attr_accessor :adr
      
        # The structure used to represent an organization and an email address.
        # Corresponds to the JSON property `email`
        # @return [Google::Apis::SpectrumV1explorer::VcardTypedText]
        attr_accessor :email
      
        # The full name of the contact person. For example: John A. Smith.
        # Corresponds to the JSON property `fn`
        # @return [String]
        attr_accessor :fn
      
        # The structure used to represent an organization and an email address.
        # Corresponds to the JSON property `org`
        # @return [Google::Apis::SpectrumV1explorer::VcardTypedText]
        attr_accessor :org
      
        # The structure used to represent a telephone number.
        # Corresponds to the JSON property `tel`
        # @return [Google::Apis::SpectrumV1explorer::VcardTelephone]
        attr_accessor :tel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adr = args[:adr] if args.key?(:adr)
          @email = args[:email] if args.key?(:email)
          @fn = args[:fn] if args.key?(:fn)
          @org = args[:org] if args.key?(:org)
          @tel = args[:tel] if args.key?(:tel)
        end
      end
      
      # The structure used to represent a street address.
      class VcardAddress
        include Google::Apis::Core::Hashable
      
        # The postal code associated with the address. For example: 94423.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The country name. For example: US.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The city or local equivalent portion of the address. For example: San Jose.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # An optional post office box number.
        # Corresponds to the JSON property `pobox`
        # @return [String]
        attr_accessor :pobox
      
        # The state or local equivalent portion of the address. For example: CA.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The street number and name. For example: 123 Any St.
        # Corresponds to the JSON property `street`
        # @return [String]
        attr_accessor :street
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @country = args[:country] if args.key?(:country)
          @locality = args[:locality] if args.key?(:locality)
          @pobox = args[:pobox] if args.key?(:pobox)
          @region = args[:region] if args.key?(:region)
          @street = args[:street] if args.key?(:street)
        end
      end
      
      # The structure used to represent a telephone number.
      class VcardTelephone
        include Google::Apis::Core::Hashable
      
        # A nested telephone URI of the form: tel:+1-123-456-7890.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The structure used to represent an organization and an email address.
      class VcardTypedText
        include Google::Apis::Core::Hashable
      
        # The text string associated with this item. For example, for an org field: ACME,
        # inc. For an email field: smith@example.com.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
    end
  end
end
