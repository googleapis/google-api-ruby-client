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
      
      class AntennaCharacteristics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbUpdateSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceOwner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceValidity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FrequencyRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoLocationEllipse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoLocationPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoLocationPolygon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoSpectrumSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsGetSpectrumBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsGetSpectrumBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsGetSpectrumRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsGetSpectrumResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsInitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsInitResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsNotifySpectrumUseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsNotifySpectrumUseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsRegisterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsRegisterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsVerifyDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PawsVerifyDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RulesetInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpectrumMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpectrumSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vcard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VcardAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VcardTelephone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VcardTypedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AntennaCharacteristics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :height_type, as: 'heightType'
          property :height_uncertainty, as: 'heightUncertainty'
        end
      end
      
      class DatabaseSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class DbUpdateSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases', class: Google::Apis::SpectrumV1explorer::DatabaseSpec, decorator: Google::Apis::SpectrumV1explorer::DatabaseSpec::Representation
      
        end
      end
      
      class DeviceCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frequency_ranges, as: 'frequencyRanges', class: Google::Apis::SpectrumV1explorer::FrequencyRange, decorator: Google::Apis::SpectrumV1explorer::FrequencyRange::Representation
      
        end
      end
      
      class DeviceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etsi_en_device_category, as: 'etsiEnDeviceCategory'
          property :etsi_en_device_emissions_class, as: 'etsiEnDeviceEmissionsClass'
          property :etsi_en_device_type, as: 'etsiEnDeviceType'
          property :etsi_en_technology_id, as: 'etsiEnTechnologyId'
          property :fcc_id, as: 'fccId'
          property :fcc_tvbd_device_type, as: 'fccTvbdDeviceType'
          property :manufacturer_id, as: 'manufacturerId'
          property :model_id, as: 'modelId'
          collection :ruleset_ids, as: 'rulesetIds'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class DeviceOwner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator, as: 'operator', class: Google::Apis::SpectrumV1explorer::Vcard, decorator: Google::Apis::SpectrumV1explorer::Vcard::Representation
      
          property :owner, as: 'owner', class: Google::Apis::SpectrumV1explorer::Vcard, decorator: Google::Apis::SpectrumV1explorer::Vcard::Representation
      
        end
      end
      
      class DeviceValidity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :is_valid, as: 'isValid'
          property :reason, as: 'reason'
        end
      end
      
      class EventTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          property :stop_time, as: 'stopTime'
        end
      end
      
      class FrequencyRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :max_power_d_bm, as: 'maxPowerDBm'
          property :start_hz, as: 'startHz'
          property :stop_hz, as: 'stopHz'
        end
      end
      
      class GeoLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :point, as: 'point', class: Google::Apis::SpectrumV1explorer::GeoLocationEllipse, decorator: Google::Apis::SpectrumV1explorer::GeoLocationEllipse::Representation
      
          property :region, as: 'region', class: Google::Apis::SpectrumV1explorer::GeoLocationPolygon, decorator: Google::Apis::SpectrumV1explorer::GeoLocationPolygon::Representation
      
        end
      end
      
      class GeoLocationEllipse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :center, as: 'center', class: Google::Apis::SpectrumV1explorer::GeoLocationPoint, decorator: Google::Apis::SpectrumV1explorer::GeoLocationPoint::Representation
      
          property :orientation, as: 'orientation'
          property :semi_major_axis, as: 'semiMajorAxis'
          property :semi_minor_axis, as: 'semiMinorAxis'
        end
      end
      
      class GeoLocationPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class GeoLocationPolygon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exterior, as: 'exterior', class: Google::Apis::SpectrumV1explorer::GeoLocationPoint, decorator: Google::Apis::SpectrumV1explorer::GeoLocationPoint::Representation
      
        end
      end
      
      class GeoSpectrumSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocation::Representation
      
          collection :spectrum_schedules, as: 'spectrumSchedules', class: Google::Apis::SpectrumV1explorer::SpectrumSchedule, decorator: Google::Apis::SpectrumV1explorer::SpectrumSchedule::Representation
      
        end
      end
      
      class PawsGetSpectrumBatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :antenna, as: 'antenna', class: Google::Apis::SpectrumV1explorer::AntennaCharacteristics, decorator: Google::Apis::SpectrumV1explorer::AntennaCharacteristics::Representation
      
          property :capabilities, as: 'capabilities', class: Google::Apis::SpectrumV1explorer::DeviceCapabilities, decorator: Google::Apis::SpectrumV1explorer::DeviceCapabilities::Representation
      
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocation::Representation
      
          property :master_device_desc, as: 'masterDeviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :owner, as: 'owner', class: Google::Apis::SpectrumV1explorer::DeviceOwner, decorator: Google::Apis::SpectrumV1explorer::DeviceOwner::Representation
      
          property :request_type, as: 'requestType'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsGetSpectrumBatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpec::Representation
      
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          collection :geo_spectrum_schedules, as: 'geoSpectrumSchedules', class: Google::Apis::SpectrumV1explorer::GeoSpectrumSchedule, decorator: Google::Apis::SpectrumV1explorer::GeoSpectrumSchedule::Representation
      
          property :kind, as: 'kind'
          property :max_contiguous_bw_hz, as: 'maxContiguousBwHz'
          property :max_total_bw_hz, as: 'maxTotalBwHz'
          property :needs_spectrum_report, as: 'needsSpectrumReport'
          property :ruleset_info, as: 'rulesetInfo', class: Google::Apis::SpectrumV1explorer::RulesetInfo, decorator: Google::Apis::SpectrumV1explorer::RulesetInfo::Representation
      
          property :timestamp, as: 'timestamp'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsGetSpectrumRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :antenna, as: 'antenna', class: Google::Apis::SpectrumV1explorer::AntennaCharacteristics, decorator: Google::Apis::SpectrumV1explorer::AntennaCharacteristics::Representation
      
          property :capabilities, as: 'capabilities', class: Google::Apis::SpectrumV1explorer::DeviceCapabilities, decorator: Google::Apis::SpectrumV1explorer::DeviceCapabilities::Representation
      
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocation::Representation
      
          property :master_device_desc, as: 'masterDeviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :owner, as: 'owner', class: Google::Apis::SpectrumV1explorer::DeviceOwner, decorator: Google::Apis::SpectrumV1explorer::DeviceOwner::Representation
      
          property :request_type, as: 'requestType'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsGetSpectrumResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpec::Representation
      
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :kind, as: 'kind'
          property :max_contiguous_bw_hz, as: 'maxContiguousBwHz'
          property :max_total_bw_hz, as: 'maxTotalBwHz'
          property :needs_spectrum_report, as: 'needsSpectrumReport'
          property :ruleset_info, as: 'rulesetInfo', class: Google::Apis::SpectrumV1explorer::RulesetInfo, decorator: Google::Apis::SpectrumV1explorer::RulesetInfo::Representation
      
          collection :spectrum_schedules, as: 'spectrumSchedules', class: Google::Apis::SpectrumV1explorer::SpectrumSchedule, decorator: Google::Apis::SpectrumV1explorer::SpectrumSchedule::Representation
      
          property :timestamp, as: 'timestamp'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsInitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocation::Representation
      
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsInitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpec::Representation
      
          property :kind, as: 'kind'
          property :ruleset_info, as: 'rulesetInfo', class: Google::Apis::SpectrumV1explorer::RulesetInfo, decorator: Google::Apis::SpectrumV1explorer::RulesetInfo::Representation
      
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsNotifySpectrumUseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocation::Representation
      
          collection :spectra, as: 'spectra', class: Google::Apis::SpectrumV1explorer::SpectrumMessage, decorator: Google::Apis::SpectrumV1explorer::SpectrumMessage::Representation
      
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsNotifySpectrumUseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsRegisterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :antenna, as: 'antenna', class: Google::Apis::SpectrumV1explorer::AntennaCharacteristics, decorator: Google::Apis::SpectrumV1explorer::AntennaCharacteristics::Representation
      
          property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :device_owner, as: 'deviceOwner', class: Google::Apis::SpectrumV1explorer::DeviceOwner, decorator: Google::Apis::SpectrumV1explorer::DeviceOwner::Representation
      
          property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocation::Representation
      
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsRegisterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpec::Representation
      
          property :kind, as: 'kind'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsVerifyDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_descs, as: 'deviceDescs', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptor::Representation
      
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class PawsVerifyDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpec::Representation
      
          collection :device_validities, as: 'deviceValidities', class: Google::Apis::SpectrumV1explorer::DeviceValidity, decorator: Google::Apis::SpectrumV1explorer::DeviceValidity::Representation
      
          property :kind, as: 'kind'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class RulesetInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority'
          property :max_location_change, as: 'maxLocationChange'
          property :max_polling_secs, as: 'maxPollingSecs'
          collection :ruleset_ids, as: 'rulesetIds'
        end
      end
      
      class SpectrumMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth, as: 'bandwidth'
          collection :frequency_ranges, as: 'frequencyRanges', class: Google::Apis::SpectrumV1explorer::FrequencyRange, decorator: Google::Apis::SpectrumV1explorer::FrequencyRange::Representation
      
        end
      end
      
      class SpectrumSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_time, as: 'eventTime', class: Google::Apis::SpectrumV1explorer::EventTime, decorator: Google::Apis::SpectrumV1explorer::EventTime::Representation
      
          collection :spectra, as: 'spectra', class: Google::Apis::SpectrumV1explorer::SpectrumMessage, decorator: Google::Apis::SpectrumV1explorer::SpectrumMessage::Representation
      
        end
      end
      
      class Vcard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adr, as: 'adr', class: Google::Apis::SpectrumV1explorer::VcardAddress, decorator: Google::Apis::SpectrumV1explorer::VcardAddress::Representation
      
          property :email, as: 'email', class: Google::Apis::SpectrumV1explorer::VcardTypedText, decorator: Google::Apis::SpectrumV1explorer::VcardTypedText::Representation
      
          property :fn, as: 'fn'
          property :org, as: 'org', class: Google::Apis::SpectrumV1explorer::VcardTypedText, decorator: Google::Apis::SpectrumV1explorer::VcardTypedText::Representation
      
          property :tel, as: 'tel', class: Google::Apis::SpectrumV1explorer::VcardTelephone, decorator: Google::Apis::SpectrumV1explorer::VcardTelephone::Representation
      
        end
      end
      
      class VcardAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :country, as: 'country'
          property :locality, as: 'locality'
          property :pobox, as: 'pobox'
          property :region, as: 'region'
          property :street, as: 'street'
        end
      end
      
      class VcardTelephone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class VcardTypedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
    end
  end
end
