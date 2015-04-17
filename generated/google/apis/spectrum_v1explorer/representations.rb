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
      class AntennaCharacteristicsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DatabaseSpecRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DbUpdateSpecRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceCapabilitiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceDescriptorRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceOwnerRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceValidityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventTimeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FrequencyRangeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeoLocationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeoLocationEllipseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeoLocationPointRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeoLocationPolygonRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeoSpectrumScheduleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GetSpectrumBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GetSpectrumBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GetSpectrumRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GetSpectrumResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InitRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InitResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class NotifySpectrumUseRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class NotifySpectrumUseResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RegisterRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RegisterResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VerifyDeviceRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VerifyDeviceResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RulesetInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ScheduleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VcardRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VcardAddressRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VcardTelephoneRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VcardTypedTextRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AntennaCharacteristicsRepresentation < Google::Apis::Core::JsonRepresentation
        property :height, as: 'height'
        property :height_type, as: 'heightType'
        property :height_uncertainty, as: 'heightUncertainty'
      end

      # @private
      class DatabaseSpecRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :uri, as: 'uri'
      end

      # @private
      class DbUpdateSpecRepresentation < Google::Apis::Core::JsonRepresentation
        collection :databases, as: 'databases', class: Google::Apis::SpectrumV1explorer::DatabaseSpec, decorator: Google::Apis::SpectrumV1explorer::DatabaseSpecRepresentation
      end

      # @private
      class DeviceCapabilitiesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :frequency_ranges, as: 'frequencyRanges', class: Google::Apis::SpectrumV1explorer::FrequencyRange, decorator: Google::Apis::SpectrumV1explorer::FrequencyRangeRepresentation
      end

      # @private
      class DeviceDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
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

      # @private
      class DeviceOwnerRepresentation < Google::Apis::Core::JsonRepresentation
        property :operator, as: 'operator', class: Google::Apis::SpectrumV1explorer::Vcard, decorator: Google::Apis::SpectrumV1explorer::VcardRepresentation
        
        property :owner, as: 'owner', class: Google::Apis::SpectrumV1explorer::Vcard, decorator: Google::Apis::SpectrumV1explorer::VcardRepresentation
      end

      # @private
      class DeviceValidityRepresentation < Google::Apis::Core::JsonRepresentation
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :is_valid, as: 'isValid'
        property :reason, as: 'reason'
      end

      # @private
      class EventTimeRepresentation < Google::Apis::Core::JsonRepresentation
        property :start_time, as: 'startTime'
        property :stop_time, as: 'stopTime'
      end

      # @private
      class FrequencyRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :channel_id, as: 'channelId'
        property :max_power_d_bm, as: 'maxPowerDBm'
        property :start_hz, as: 'startHz'
        property :stop_hz, as: 'stopHz'
      end

      # @private
      class GeoLocationRepresentation < Google::Apis::Core::JsonRepresentation
        property :confidence, as: 'confidence'
        property :point, as: 'point', class: Google::Apis::SpectrumV1explorer::GeoLocationEllipse, decorator: Google::Apis::SpectrumV1explorer::GeoLocationEllipseRepresentation
        
        property :region, as: 'region', class: Google::Apis::SpectrumV1explorer::GeoLocationPolygon, decorator: Google::Apis::SpectrumV1explorer::GeoLocationPolygonRepresentation
      end

      # @private
      class GeoLocationEllipseRepresentation < Google::Apis::Core::JsonRepresentation
        property :center, as: 'center', class: Google::Apis::SpectrumV1explorer::GeoLocationPoint, decorator: Google::Apis::SpectrumV1explorer::GeoLocationPointRepresentation
        
        property :orientation, as: 'orientation'
        property :semi_major_axis, as: 'semiMajorAxis'
        property :semi_minor_axis, as: 'semiMinorAxis'
      end

      # @private
      class GeoLocationPointRepresentation < Google::Apis::Core::JsonRepresentation
        property :latitude, as: 'latitude'
        property :longitude, as: 'longitude'
      end

      # @private
      class GeoLocationPolygonRepresentation < Google::Apis::Core::JsonRepresentation
        collection :exterior, as: 'exterior', class: Google::Apis::SpectrumV1explorer::GeoLocationPoint, decorator: Google::Apis::SpectrumV1explorer::GeoLocationPointRepresentation
      end

      # @private
      class GeoSpectrumScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocationRepresentation
        
        collection :spectrum_schedules, as: 'spectrumSchedules', class: Google::Apis::SpectrumV1explorer::Schedule, decorator: Google::Apis::SpectrumV1explorer::ScheduleRepresentation
      end

      # @private
      class GetSpectrumBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :antenna, as: 'antenna', class: Google::Apis::SpectrumV1explorer::AntennaCharacteristics, decorator: Google::Apis::SpectrumV1explorer::AntennaCharacteristicsRepresentation
        
        property :capabilities, as: 'capabilities', class: Google::Apis::SpectrumV1explorer::DeviceCapabilities, decorator: Google::Apis::SpectrumV1explorer::DeviceCapabilitiesRepresentation
        
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        collection :locations, as: 'locations', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocationRepresentation
        
        
        property :master_device_desc, as: 'masterDeviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :owner, as: 'owner', class: Google::Apis::SpectrumV1explorer::DeviceOwner, decorator: Google::Apis::SpectrumV1explorer::DeviceOwnerRepresentation
        
        property :request_type, as: 'requestType'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class GetSpectrumBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpecRepresentation
        
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        collection :geo_spectrum_schedules, as: 'geoSpectrumSchedules', class: Google::Apis::SpectrumV1explorer::GeoSpectrumSchedule, decorator: Google::Apis::SpectrumV1explorer::GeoSpectrumScheduleRepresentation
        
        
        property :kind, as: 'kind'
        property :max_contiguous_bw_hz, as: 'maxContiguousBwHz'
        property :max_total_bw_hz, as: 'maxTotalBwHz'
        property :needs_spectrum_report, as: 'needsSpectrumReport'
        property :ruleset_info, as: 'rulesetInfo', class: Google::Apis::SpectrumV1explorer::RulesetInfo, decorator: Google::Apis::SpectrumV1explorer::RulesetInfoRepresentation
        
        property :timestamp, as: 'timestamp'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class GetSpectrumRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :antenna, as: 'antenna', class: Google::Apis::SpectrumV1explorer::AntennaCharacteristics, decorator: Google::Apis::SpectrumV1explorer::AntennaCharacteristicsRepresentation
        
        property :capabilities, as: 'capabilities', class: Google::Apis::SpectrumV1explorer::DeviceCapabilities, decorator: Google::Apis::SpectrumV1explorer::DeviceCapabilitiesRepresentation
        
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocationRepresentation
        
        property :master_device_desc, as: 'masterDeviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :owner, as: 'owner', class: Google::Apis::SpectrumV1explorer::DeviceOwner, decorator: Google::Apis::SpectrumV1explorer::DeviceOwnerRepresentation
        
        property :request_type, as: 'requestType'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class GetSpectrumResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpecRepresentation
        
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :kind, as: 'kind'
        property :max_contiguous_bw_hz, as: 'maxContiguousBwHz'
        property :max_total_bw_hz, as: 'maxTotalBwHz'
        property :needs_spectrum_report, as: 'needsSpectrumReport'
        property :ruleset_info, as: 'rulesetInfo', class: Google::Apis::SpectrumV1explorer::RulesetInfo, decorator: Google::Apis::SpectrumV1explorer::RulesetInfoRepresentation
        
        collection :spectrum_schedules, as: 'spectrumSchedules', class: Google::Apis::SpectrumV1explorer::Schedule, decorator: Google::Apis::SpectrumV1explorer::ScheduleRepresentation
        
        
        property :timestamp, as: 'timestamp'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class InitRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocationRepresentation
        
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class InitResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpecRepresentation
        
        property :kind, as: 'kind'
        property :ruleset_info, as: 'rulesetInfo', class: Google::Apis::SpectrumV1explorer::RulesetInfo, decorator: Google::Apis::SpectrumV1explorer::RulesetInfoRepresentation
        
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class NotifySpectrumUseRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocationRepresentation
        
        collection :spectra, as: 'spectra', class: Google::Apis::SpectrumV1explorer::Message, decorator: Google::Apis::SpectrumV1explorer::MessageRepresentation
        
        
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class NotifySpectrumUseResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class RegisterRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :antenna, as: 'antenna', class: Google::Apis::SpectrumV1explorer::AntennaCharacteristics, decorator: Google::Apis::SpectrumV1explorer::AntennaCharacteristicsRepresentation
        
        property :device_desc, as: 'deviceDesc', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        property :device_owner, as: 'deviceOwner', class: Google::Apis::SpectrumV1explorer::DeviceOwner, decorator: Google::Apis::SpectrumV1explorer::DeviceOwnerRepresentation
        
        property :location, as: 'location', class: Google::Apis::SpectrumV1explorer::GeoLocation, decorator: Google::Apis::SpectrumV1explorer::GeoLocationRepresentation
        
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class RegisterResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpecRepresentation
        
        property :kind, as: 'kind'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class VerifyDeviceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :device_descs, as: 'deviceDescs', class: Google::Apis::SpectrumV1explorer::DeviceDescriptor, decorator: Google::Apis::SpectrumV1explorer::DeviceDescriptorRepresentation
        
        
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class VerifyDeviceResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :database_change, as: 'databaseChange', class: Google::Apis::SpectrumV1explorer::DbUpdateSpec, decorator: Google::Apis::SpectrumV1explorer::DbUpdateSpecRepresentation
        
        collection :device_validities, as: 'deviceValidities', class: Google::Apis::SpectrumV1explorer::DeviceValidity, decorator: Google::Apis::SpectrumV1explorer::DeviceValidityRepresentation
        
        
        property :kind, as: 'kind'
        property :type, as: 'type'
        property :version, as: 'version'
      end

      # @private
      class RulesetInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :authority, as: 'authority'
        property :max_location_change, as: 'maxLocationChange'
        property :max_polling_secs, as: 'maxPollingSecs'
        collection :ruleset_ids, as: 'rulesetIds'
      end

      # @private
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        property :bandwidth, as: 'bandwidth'
        collection :frequency_ranges, as: 'frequencyRanges', class: Google::Apis::SpectrumV1explorer::FrequencyRange, decorator: Google::Apis::SpectrumV1explorer::FrequencyRangeRepresentation
      end

      # @private
      class ScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        property :event_time, as: 'eventTime', class: Google::Apis::SpectrumV1explorer::EventTime, decorator: Google::Apis::SpectrumV1explorer::EventTimeRepresentation
        
        collection :spectra, as: 'spectra', class: Google::Apis::SpectrumV1explorer::Message, decorator: Google::Apis::SpectrumV1explorer::MessageRepresentation
      end

      # @private
      class VcardRepresentation < Google::Apis::Core::JsonRepresentation
        property :adr, as: 'adr', class: Google::Apis::SpectrumV1explorer::VcardAddress, decorator: Google::Apis::SpectrumV1explorer::VcardAddressRepresentation
        
        property :email, as: 'email', class: Google::Apis::SpectrumV1explorer::VcardTypedText, decorator: Google::Apis::SpectrumV1explorer::VcardTypedTextRepresentation
        
        property :fn, as: 'fn'
        property :org, as: 'org', class: Google::Apis::SpectrumV1explorer::VcardTypedText, decorator: Google::Apis::SpectrumV1explorer::VcardTypedTextRepresentation
        
        property :tel, as: 'tel', class: Google::Apis::SpectrumV1explorer::VcardTelephone, decorator: Google::Apis::SpectrumV1explorer::VcardTelephoneRepresentation
      end

      # @private
      class VcardAddressRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :country, as: 'country'
        property :locality, as: 'locality'
        property :pobox, as: 'pobox'
        property :region, as: 'region'
        property :street, as: 'street'
      end

      # @private
      class VcardTelephoneRepresentation < Google::Apis::Core::JsonRepresentation
        property :uri, as: 'uri'
      end

      # @private
      class VcardTypedTextRepresentation < Google::Apis::Core::JsonRepresentation
        property :text, as: 'text'
      end
    end
  end
end
