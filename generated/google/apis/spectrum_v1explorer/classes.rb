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
          @height = args[:height] unless args[:height].nil?
          @height_type = args[:height_type] unless args[:height_type].nil?
          @height_uncertainty = args[:height_uncertainty] unless args[:height_uncertainty].nil?
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
          @name = args[:name] unless args[:name].nil?
          @uri = args[:uri] unless args[:uri].nil?
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
          @databases = args[:databases] unless args[:databases].nil?
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
          @frequency_ranges = args[:frequency_ranges] unless args[:frequency_ranges].nil?
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
          @etsi_en_device_category = args[:etsi_en_device_category] unless args[:etsi_en_device_category].nil?
          @etsi_en_device_emissions_class = args[:etsi_en_device_emissions_class] unless args[:etsi_en_device_emissions_class].nil?
          @etsi_en_device_type = args[:etsi_en_device_type] unless args[:etsi_en_device_type].nil?
          @etsi_en_technology_id = args[:etsi_en_technology_id] unless args[:etsi_en_technology_id].nil?
          @fcc_id = args[:fcc_id] unless args[:fcc_id].nil?
          @fcc_tvbd_device_type = args[:fcc_tvbd_device_type] unless args[:fcc_tvbd_device_type].nil?
          @manufacturer_id = args[:manufacturer_id] unless args[:manufacturer_id].nil?
          @model_id = args[:model_id] unless args[:model_id].nil?
          @ruleset_ids = args[:ruleset_ids] unless args[:ruleset_ids].nil?
          @serial_number = args[:serial_number] unless args[:serial_number].nil?
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
      
        # The vCard contact information for the device operator is optional, but may be
        # required by specific regulatory domains.
        # Corresponds to the JSON property `operator`
        # @return [Google::Apis::SpectrumV1explorer::Vcard]
        attr_accessor :operator
      
        # The vCard contact information for the individual or business that owns the
        # device is required.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::SpectrumV1explorer::Vcard]
        attr_accessor :owner
      
        def initialize(**args)
          @operator = args[:operator] unless args[:operator].nil?
          @owner = args[:owner] unless args[:owner].nil?
        end
      end

      # The device validity element describes whether a particular device is valid to
      # operate in the regulatory domain.
      class DeviceValidity
        include Google::Apis::Core::Hashable
      
        # The descriptor of the device for which the validity check was requested. It
        # will always be present.
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
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @is_valid = args[:is_valid] unless args[:is_valid].nil?
          @reason = args[:reason] unless args[:reason].nil?
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
          @start_time = args[:start_time] unless args[:start_time].nil?
          @stop_time = args[:stop_time] unless args[:stop_time].nil?
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
          @channel_id = args[:channel_id] unless args[:channel_id].nil?
          @max_power_d_bm = args[:max_power_d_bm] unless args[:max_power_d_bm].nil?
          @start_hz = args[:start_hz] unless args[:start_hz].nil?
          @stop_hz = args[:stop_hz] unless args[:stop_hz].nil?
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
      
        # If present, indicates that the geolocation represents a point. Paradoxically,
        # a point is parameterized using an ellipse, where the center represents the
        # location of the point and the distances along the major and minor axes
        # represent the uncertainty. The uncertainty values may be required, depending
        # on the regulatory domain.
        # Corresponds to the JSON property `point`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocationEllipse]
        attr_accessor :point
      
        # If present, indicates that the geolocation represents a region. Database
        # support for regions is optional.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocationPolygon]
        attr_accessor :region
      
        def initialize(**args)
          @confidence = args[:confidence] unless args[:confidence].nil?
          @point = args[:point] unless args[:point].nil?
          @region = args[:region] unless args[:region].nil?
        end
      end

      # A "point" with uncertainty is represented using the Ellipse shape.
      class GeoLocationEllipse
        include Google::Apis::Core::Hashable
      
        # A required geo-spatial point representing the center of the ellipse.
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
          @center = args[:center] unless args[:center].nil?
          @orientation = args[:orientation] unless args[:orientation].nil?
          @semi_major_axis = args[:semi_major_axis] unless args[:semi_major_axis].nil?
          @semi_minor_axis = args[:semi_minor_axis] unless args[:semi_minor_axis].nil?
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
          @latitude = args[:latitude] unless args[:latitude].nil?
          @longitude = args[:longitude] unless args[:longitude].nil?
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
          @exterior = args[:exterior] unless args[:exterior].nil?
        end
      end

      # The schedule of spectrum profiles available at a particular geolocation.
      class GeoSpectrumSchedule
        include Google::Apis::Core::Hashable
      
        # The geolocation identifies the location at which the spectrum schedule applies.
        # It will always be present.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # A list of available spectrum profiles and associated times. It will always be
        # present, and at least one schedule must be included (though it may be empty if
        # there is no available spectrum). More than one schedule may be included to
        # represent future changes to the available spectrum.
        # Corresponds to the JSON property `spectrumSchedules`
        # @return [Array<Google::Apis::SpectrumV1explorer::Schedule>]
        attr_accessor :spectrum_schedules
      
        def initialize(**args)
          @location = args[:location] unless args[:location].nil?
          @spectrum_schedules = args[:spectrum_schedules] unless args[:spectrum_schedules].nil?
        end
      end

      # The request message for a batch available spectrum query protocol.
      class GetSpectrumBatchRequest
        include Google::Apis::Core::Hashable
      
        # Depending on device type and regulatory domain, antenna characteristics may be
        # required.
        # Corresponds to the JSON property `antenna`
        # @return [Google::Apis::SpectrumV1explorer::AntennaCharacteristics]
        attr_accessor :antenna
      
        # The master device may include its device capabilities to limit the available-
        # spectrum batch response to the spectrum that is compatible with its
        # capabilities. The database should not return spectrum that is incompatible
        # with the specified capabilities.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::SpectrumV1explorer::DeviceCapabilities]
        attr_accessor :capabilities
      
        # When the available spectrum request is made on behalf of a specific device (a
        # master or slave device), device descriptor information for the device on whose
        # behalf the request is made is required (in such cases, the requestType
        # parameter must be empty). When a requestType value is specified, device
        # descriptor information may be optional or required according to the rules of
        # the applicable regulatory domain.
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
      
        # When an available spectrum batch request is made by the master device (a
        # device with geolocation capability) on behalf of a slave device (a device
        # without geolocation capability), the rules of the applicable regulatory domain
        # may require the master device to provide its own device descriptor information
        # (in addition to device descriptor information for the slave device in a
        # separate parameter).
        # Corresponds to the JSON property `masterDeviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :master_device_desc
      
        # Depending on device type and regulatory domain, device owner information may
        # be included in an available spectrum batch request. This allows the device to
        # register and get spectrum-availability information in a single request.
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
          @antenna = args[:antenna] unless args[:antenna].nil?
          @capabilities = args[:capabilities] unless args[:capabilities].nil?
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @locations = args[:locations] unless args[:locations].nil?
          @master_device_desc = args[:master_device_desc] unless args[:master_device_desc].nil?
          @owner = args[:owner] unless args[:owner].nil?
          @request_type = args[:request_type] unless args[:request_type].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The response message for the batch available spectrum query contains a
      # schedule of available spectrum for the device at multiple locations.
      class GetSpectrumBatchResponse
        include Google::Apis::Core::Hashable
      
        # A database may include the databaseChange parameter to notify a device of a
        # change to its database URI, providing one or more alternate database URIs. The
        # device should use this information to update its list of pre-configured
        # databases by (only) replacing its entry for the responding database with the
        # list of alternate URIs.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # The database must return in its available spectrum response the device
        # descriptor information it received in the master device's available spectrum
        # batch request.
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
      
        # The database should return ruleset information, which identifies the
        # applicable regulatory authority and ruleset for the available spectrum batch
        # response. If included, the device must use the corresponding ruleset to
        # interpret the response. Values provided in the returned ruleset information,
        # such as maxLocationChange, take precedence over any conflicting values
        # provided in the ruleset information returned in a prior initialization
        # response sent by the database to the device.
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
          @database_change = args[:database_change] unless args[:database_change].nil?
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @geo_spectrum_schedules = args[:geo_spectrum_schedules] unless args[:geo_spectrum_schedules].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_contiguous_bw_hz = args[:max_contiguous_bw_hz] unless args[:max_contiguous_bw_hz].nil?
          @max_total_bw_hz = args[:max_total_bw_hz] unless args[:max_total_bw_hz].nil?
          @needs_spectrum_report = args[:needs_spectrum_report] unless args[:needs_spectrum_report].nil?
          @ruleset_info = args[:ruleset_info] unless args[:ruleset_info].nil?
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The request message for the available spectrum query protocol which must
      # include the device's geolocation.
      class GetSpectrumRequest
        include Google::Apis::Core::Hashable
      
        # Depending on device type and regulatory domain, the characteristics of the
        # antenna may be required.
        # Corresponds to the JSON property `antenna`
        # @return [Google::Apis::SpectrumV1explorer::AntennaCharacteristics]
        attr_accessor :antenna
      
        # The master device may include its device capabilities to limit the available-
        # spectrum response to the spectrum that is compatible with its capabilities.
        # The database should not return spectrum that is incompatible with the
        # specified capabilities.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::SpectrumV1explorer::DeviceCapabilities]
        attr_accessor :capabilities
      
        # When the available spectrum request is made on behalf of a specific device (a
        # master or slave device), device descriptor information for that device is
        # required (in such cases, the requestType parameter must be empty). When a
        # requestType value is specified, device descriptor information may be optional
        # or required according to the rules of the applicable regulatory domain.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # The geolocation of the master device (a device with geolocation capability
        # that makes an available spectrum request) is required whether the master
        # device is making the request on its own behalf or on behalf of a slave device (
        # one without geolocation capability). The location must be the location of the
        # radiation center of the master device's antenna. To support mobile devices, a
        # regulatory domain may allow the anticipated position of the master device to
        # be given instead. If the location specifies a region, rather than a point, the
        # database may return an UNIMPLEMENTED error code if it does not support query
        # by region.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SpectrumV1explorer::GeoLocation]
        attr_accessor :location
      
        # When an available spectrum request is made by the master device (a device with
        # geolocation capability) on behalf of a slave device (a device without
        # geolocation capability), the rules of the applicable regulatory domain may
        # require the master device to provide its own device descriptor information (in
        # addition to device descriptor information for the slave device, which is
        # provided in a separate parameter).
        # Corresponds to the JSON property `masterDeviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :master_device_desc
      
        # Depending on device type and regulatory domain, device owner information may
        # be included in an available spectrum request. This allows the device to
        # register and get spectrum-availability information in a single request.
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
          @antenna = args[:antenna] unless args[:antenna].nil?
          @capabilities = args[:capabilities] unless args[:capabilities].nil?
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @location = args[:location] unless args[:location].nil?
          @master_device_desc = args[:master_device_desc] unless args[:master_device_desc].nil?
          @owner = args[:owner] unless args[:owner].nil?
          @request_type = args[:request_type] unless args[:request_type].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The response message for the available spectrum query which contains a
      # schedule of available spectrum for the device.
      class GetSpectrumResponse
        include Google::Apis::Core::Hashable
      
        # A database may include the databaseChange parameter to notify a device of a
        # change to its database URI, providing one or more alternate database URIs. The
        # device should use this information to update its list of pre-configured
        # databases by (only) replacing its entry for the responding database with the
        # list of alternate URIs.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # The database must return, in its available spectrum response, the device
        # descriptor information it received in the master device's available spectrum
        # request.
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
      
        # The database should return ruleset information, which identifies the
        # applicable regulatory authority and ruleset for the available spectrum
        # response. If included, the device must use the corresponding ruleset to
        # interpret the response. Values provided in the returned ruleset information,
        # such as maxLocationChange, take precedence over any conflicting values
        # provided in the ruleset information returned in a prior initialization
        # response sent by the database to the device.
        # Corresponds to the JSON property `rulesetInfo`
        # @return [Google::Apis::SpectrumV1explorer::RulesetInfo]
        attr_accessor :ruleset_info
      
        # The available spectrum response must contain a spectrum schedule list. The
        # list may be empty if spectrum is not available. The database may return more
        # than one spectrum schedule to represent future changes to the available
        # spectrum. How far in advance a schedule may be provided depends on the
        # applicable regulatory domain.
        # Corresponds to the JSON property `spectrumSchedules`
        # @return [Array<Google::Apis::SpectrumV1explorer::Schedule>]
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
          @database_change = args[:database_change] unless args[:database_change].nil?
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_contiguous_bw_hz = args[:max_contiguous_bw_hz] unless args[:max_contiguous_bw_hz].nil?
          @max_total_bw_hz = args[:max_total_bw_hz] unless args[:max_total_bw_hz].nil?
          @needs_spectrum_report = args[:needs_spectrum_report] unless args[:needs_spectrum_report].nil?
          @ruleset_info = args[:ruleset_info] unless args[:ruleset_info].nil?
          @spectrum_schedules = args[:spectrum_schedules] unless args[:spectrum_schedules].nil?
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The initialization request message allows the master device to initiate
      # exchange of capabilities with the database.
      class InitRequest
        include Google::Apis::Core::Hashable
      
        # The DeviceDescriptor parameter is required. If the database does not support
        # the device or any of the rulesets specified in the device descriptor, it must
        # return an UNSUPPORTED error code in the error response.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # A device's geolocation is required.
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
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @location = args[:location] unless args[:location].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The initialization response message communicates database parameters to the
      # requesting device.
      class InitResponse
        include Google::Apis::Core::Hashable
      
        # A database may include the databaseChange parameter to notify a device of a
        # change to its database URI, providing one or more alternate database URIs. The
        # device should use this information to update its list of pre-configured
        # databases by (only) replacing its entry for the responding database with the
        # list of alternate URIs.
        # Corresponds to the JSON property `databaseChange`
        # @return [Google::Apis::SpectrumV1explorer::DbUpdateSpec]
        attr_accessor :database_change
      
        # Identifies what kind of resource this is. Value: the fixed string "spectrum#
        # pawsInitResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The rulesetInfo parameter must be included in the response. This parameter
        # specifies the regulatory domain and parameters applicable to that domain. The
        # database must include the authority field, which defines the regulatory domain
        # for the location specified in the INIT_REQ message.
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
          @database_change = args[:database_change] unless args[:database_change].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @ruleset_info = args[:ruleset_info] unless args[:ruleset_info].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The spectrum-use notification message which must contain the geolocation of
      # the Device and parameters required by the regulatory domain.
      class NotifySpectrumUseRequest
        include Google::Apis::Core::Hashable
      
        # Device descriptor information is required in the spectrum-use notification
        # message.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # The geolocation of the master device (the device that is sending the spectrum-
        # use notification) to the database is required in the spectrum-use notification
        # message.
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
        # @return [Array<Google::Apis::SpectrumV1explorer::Message>]
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
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @location = args[:location] unless args[:location].nil?
          @spectra = args[:spectra] unless args[:spectra].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # An empty response to the notification.
      class NotifySpectrumUseResponse
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
          @kind = args[:kind] unless args[:kind].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The registration request message contains the required registration parameters.
      class RegisterRequest
        include Google::Apis::Core::Hashable
      
        # Antenna characteristics, including its height and height type.
        # Corresponds to the JSON property `antenna`
        # @return [Google::Apis::SpectrumV1explorer::AntennaCharacteristics]
        attr_accessor :antenna
      
        # A DeviceDescriptor is required.
        # Corresponds to the JSON property `deviceDesc`
        # @return [Google::Apis::SpectrumV1explorer::DeviceDescriptor]
        attr_accessor :device_desc
      
        # Device owner information is required.
        # Corresponds to the JSON property `deviceOwner`
        # @return [Google::Apis::SpectrumV1explorer::DeviceOwner]
        attr_accessor :device_owner
      
        # A device's geolocation is required.
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
          @antenna = args[:antenna] unless args[:antenna].nil?
          @device_desc = args[:device_desc] unless args[:device_desc].nil?
          @device_owner = args[:device_owner] unless args[:device_owner].nil?
          @location = args[:location] unless args[:location].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The registration response message simply acknowledges receipt of the request
      # and is otherwise empty.
      class RegisterResponse
        include Google::Apis::Core::Hashable
      
        # A database may include the databaseChange parameter to notify a device of a
        # change to its database URI, providing one or more alternate database URIs. The
        # device should use this information to update its list of pre-configured
        # databases by (only) replacing its entry for the responding database with the
        # list of alternate URIs.
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
          @database_change = args[:database_change] unless args[:database_change].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The device validation request message.
      class VerifyDeviceRequest
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
          @device_descs = args[:device_descs] unless args[:device_descs].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # The device validation response message.
      class VerifyDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A database may include the databaseChange parameter to notify a device of a
        # change to its database URI, providing one or more alternate database URIs. The
        # device should use this information to update its list of pre-configured
        # databases by (only) replacing its entry for the responding database with the
        # list of alternate URIs.
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
          @database_change = args[:database_change] unless args[:database_change].nil?
          @device_validities = args[:device_validities] unless args[:device_validities].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @type = args[:type] unless args[:type].nil?
          @version = args[:version] unless args[:version].nil?
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
          @authority = args[:authority] unless args[:authority].nil?
          @max_location_change = args[:max_location_change] unless args[:max_location_change].nil?
          @max_polling_secs = args[:max_polling_secs] unless args[:max_polling_secs].nil?
          @ruleset_ids = args[:ruleset_ids] unless args[:ruleset_ids].nil?
        end
      end

      # Available spectrum can be logically characterized by a list of frequency
      # ranges and permissible power levels for each range.
      class Message
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
          @bandwidth = args[:bandwidth] unless args[:bandwidth].nil?
          @frequency_ranges = args[:frequency_ranges] unless args[:frequency_ranges].nil?
        end
      end

      # The spectrum schedule element combines an event time with spectrum profile to
      # define a time period in which the profile is valid.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # The event time expresses when the spectrum profile is valid. It will always be
        # present.
        # Corresponds to the JSON property `eventTime`
        # @return [Google::Apis::SpectrumV1explorer::EventTime]
        attr_accessor :event_time
      
        # A list of spectrum messages representing the usable profile. It will always be
        # present, but may be empty when there is no available spectrum.
        # Corresponds to the JSON property `spectra`
        # @return [Array<Google::Apis::SpectrumV1explorer::Message>]
        attr_accessor :spectra
      
        def initialize(**args)
          @event_time = args[:event_time] unless args[:event_time].nil?
          @spectra = args[:spectra] unless args[:spectra].nil?
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
      
        # The street address of the entity.
        # Corresponds to the JSON property `adr`
        # @return [Google::Apis::SpectrumV1explorer::VcardAddress]
        attr_accessor :adr
      
        # An email address that can be used to reach the contact.
        # Corresponds to the JSON property `email`
        # @return [Google::Apis::SpectrumV1explorer::VcardTypedText]
        attr_accessor :email
      
        # The full name of the contact person. For example: John A. Smith.
        # Corresponds to the JSON property `fn`
        # @return [String]
        attr_accessor :fn
      
        # The organization associated with the registering entity.
        # Corresponds to the JSON property `org`
        # @return [Google::Apis::SpectrumV1explorer::VcardTypedText]
        attr_accessor :org
      
        # A telephone number that can be used to call the contact.
        # Corresponds to the JSON property `tel`
        # @return [Google::Apis::SpectrumV1explorer::VcardTelephone]
        attr_accessor :tel
      
        def initialize(**args)
          @adr = args[:adr] unless args[:adr].nil?
          @email = args[:email] unless args[:email].nil?
          @fn = args[:fn] unless args[:fn].nil?
          @org = args[:org] unless args[:org].nil?
          @tel = args[:tel] unless args[:tel].nil?
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
          @code = args[:code] unless args[:code].nil?
          @country = args[:country] unless args[:country].nil?
          @locality = args[:locality] unless args[:locality].nil?
          @pobox = args[:pobox] unless args[:pobox].nil?
          @region = args[:region] unless args[:region].nil?
          @street = args[:street] unless args[:street].nil?
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
          @uri = args[:uri] unless args[:uri].nil?
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
          @text = args[:text] unless args[:text].nil?
        end
      end
    end
  end
end
