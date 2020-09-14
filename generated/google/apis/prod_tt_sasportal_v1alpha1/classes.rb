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
    module ProdTtSasportalV1alpha1
      
      # Associates `members` with a `role`.
      class SasPortalAssignment
        include Google::Apis::Core::Hashable
      
        # The identities the role is assigned to. It can have the following values: * ``
        # user_email``: An email address that represents a specific Google account. For
        # example: `alice@gmail.com`. * ``group_email``: An email address that
        # represents a Google group. For example, `viewers@gmail.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Required. Role that is assigned to `members`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request for BulkCreateDevice method.
      class SasPortalBulkCreateDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Required. A csv with each row representing a [device]. Each row must conform
        # to the regulations described on CreateDeviceRequest's device field.
        # Corresponds to the JSON property `csv`
        # @return [String]
        attr_accessor :csv
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv = args[:csv] if args.key?(:csv)
        end
      end
      
      # Response for BulkCreateDevice method.
      class SasPortalBulkCreateDeviceResponse
        include Google::Apis::Core::Hashable
      
        # Required. The devices that were imported.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice>]
        attr_accessor :devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
        end
      end
      
      # Request for CreateSignedDevice method.
      class SasPortalCreateSignedDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Required. JSON Web Token signed using a CPI private key. Payload must be the
        # JSON encoding of the [Device]. The user_id field must be set.
        # Corresponds to the JSON property `encodedDevice`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_device
      
        # Required. Unique installer id (cpiId) from the Certified Professional
        # Installers database.
        # Corresponds to the JSON property `installerId`
        # @return [String]
        attr_accessor :installer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_device = args[:encoded_device] if args.key?(:encoded_device)
          @installer_id = args[:installer_id] if args.key?(:installer_id)
        end
      end
      
      # Entity representing a SAS customer.
      class SasPortalCustomer
        include Google::Apis::Core::Hashable
      
        # Required. Name of the organization that the customer entity represents.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of the customer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User IDs used by the devices belonging to this customer.
        # Corresponds to the JSON property `sasUserIds`
        # @return [Array<String>]
        attr_accessor :sas_user_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @sas_user_ids = args[:sas_user_ids] if args.key?(:sas_user_ids)
        end
      end
      
      # 
      class SasPortalDevice
        include Google::Apis::Core::Hashable
      
        # Information about the device configuration.
        # Corresponds to the JSON property `activeConfig`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceConfig]
        attr_accessor :active_config
      
        # Device data overridable by both SAS Portal and registration requests.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceMetadata]
        attr_accessor :device_metadata
      
        # Device display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The FCC identifier of the device.
        # Corresponds to the JSON property `fccId`
        # @return [String]
        attr_accessor :fcc_id
      
        # Output only. Grants held by the device.
        # Corresponds to the JSON property `grants`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceGrant>]
        attr_accessor :grants
      
        # Output only. The resource path name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information about the device configuration.
        # Corresponds to the JSON property `preloadedConfig`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceConfig]
        attr_accessor :preloaded_config
      
        # A serial number assigned to the device by the device manufacturer.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Output only. Device state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_config = args[:active_config] if args.key?(:active_config)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fcc_id = args[:fcc_id] if args.key?(:fcc_id)
          @grants = args[:grants] if args.key?(:grants)
          @name = args[:name] if args.key?(:name)
          @preloaded_config = args[:preloaded_config] if args.key?(:preloaded_config)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about the device's air interface.
      class SasPortalDeviceAirInterface
        include Google::Apis::Core::Hashable
      
        # This field specifies the radio access technology that is used for the CBSD.
        # Conditional
        # Corresponds to the JSON property `radioTechnology`
        # @return [String]
        attr_accessor :radio_technology
      
        # This field is related to the radioTechnology field and provides the air
        # interface specification that the CBSD is compliant with at the time of
        # registration. Optional
        # Corresponds to the JSON property `supportedSpec`
        # @return [String]
        attr_accessor :supported_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @radio_technology = args[:radio_technology] if args.key?(:radio_technology)
          @supported_spec = args[:supported_spec] if args.key?(:supported_spec)
        end
      end
      
      # Information about the device configuration.
      class SasPortalDeviceConfig
        include Google::Apis::Core::Hashable
      
        # Information about the device's air interface.
        # Corresponds to the JSON property `airInterface`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceAirInterface]
        attr_accessor :air_interface
      
        # The call sign of the device operator.
        # Corresponds to the JSON property `callSign`
        # @return [String]
        attr_accessor :call_sign
      
        # FCC category of the device.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Information about the device installation parameters.
        # Corresponds to the JSON property `installationParams`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalInstallationParams]
        attr_accessor :installation_params
      
        # Output-only. Whether the configuration has been signed by a CPI.
        # Corresponds to the JSON property `isSigned`
        # @return [Boolean]
        attr_accessor :is_signed
        alias_method :is_signed?, :is_signed
      
        # Measurement reporting capabilities of the device.
        # Corresponds to the JSON property `measurementCapabilities`
        # @return [Array<String>]
        attr_accessor :measurement_capabilities
      
        # Information about the model of the device.
        # Corresponds to the JSON property `model`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDeviceModel]
        attr_accessor :model
      
        # State of the configuration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output-only. The last time the device configuration was edited.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The identifier of a device user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @air_interface = args[:air_interface] if args.key?(:air_interface)
          @call_sign = args[:call_sign] if args.key?(:call_sign)
          @category = args[:category] if args.key?(:category)
          @installation_params = args[:installation_params] if args.key?(:installation_params)
          @is_signed = args[:is_signed] if args.key?(:is_signed)
          @measurement_capabilities = args[:measurement_capabilities] if args.key?(:measurement_capabilities)
          @model = args[:model] if args.key?(:model)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Device grant. It is an authorization provided by the Spectrum Access System to
      # a device to transmit using specified operating parameters after a successful
      # heartbeat by the device.
      class SasPortalDeviceGrant
        include Google::Apis::Core::Hashable
      
        # Type of channel used.
        # Corresponds to the JSON property `channelType`
        # @return [String]
        attr_accessor :channel_type
      
        # The expiration time of the grant.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Frequency range from `low_frequency` to `high_frequency`.
        # Corresponds to the JSON property `frequencyRange`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalFrequencyRange]
        attr_accessor :frequency_range
      
        # Grant Id.
        # Corresponds to the JSON property `grantId`
        # @return [String]
        attr_accessor :grant_id
      
        # Maximum Equivalent Isotropically Radiated Power (EIRP) permitted by the grant.
        # The maximum EIRP is in units of dBm/MHz. The value of maxEirp represents the
        # average (RMS) EIRP that would be measured by the procedure defined in FCC part
        # 96.41(e)(3).
        # Corresponds to the JSON property `maxEirp`
        # @return [Float]
        attr_accessor :max_eirp
      
        # The DPA move lists on which this grant appears.
        # Corresponds to the JSON property `moveList`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalDpaMoveList>]
        attr_accessor :move_list
      
        # State of the grant.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # If the grant is suspended, the reason(s) for suspension.
        # Corresponds to the JSON property `suspensionReason`
        # @return [Array<String>]
        attr_accessor :suspension_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_type = args[:channel_type] if args.key?(:channel_type)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @frequency_range = args[:frequency_range] if args.key?(:frequency_range)
          @grant_id = args[:grant_id] if args.key?(:grant_id)
          @max_eirp = args[:max_eirp] if args.key?(:max_eirp)
          @move_list = args[:move_list] if args.key?(:move_list)
          @state = args[:state] if args.key?(:state)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
        end
      end
      
      # Device data overridable by both SAS Portal and registration requests.
      class SasPortalDeviceMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information about the model of the device.
      class SasPortalDeviceModel
        include Google::Apis::Core::Hashable
      
        # The firmware version of the device.
        # Corresponds to the JSON property `firmwareVersion`
        # @return [String]
        attr_accessor :firmware_version
      
        # The hardware version of the device.
        # Corresponds to the JSON property `hardwareVersion`
        # @return [String]
        attr_accessor :hardware_version
      
        # The name of the device model.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The software version of the device.
        # Corresponds to the JSON property `softwareVersion`
        # @return [String]
        attr_accessor :software_version
      
        # The name of the device vendor.
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firmware_version = args[:firmware_version] if args.key?(:firmware_version)
          @hardware_version = args[:hardware_version] if args.key?(:hardware_version)
          @name = args[:name] if args.key?(:name)
          @software_version = args[:software_version] if args.key?(:software_version)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # An entry in a DPA's move list.
      class SasPortalDpaMoveList
        include Google::Apis::Core::Hashable
      
        # The ID of the DPA.
        # Corresponds to the JSON property `dpaId`
        # @return [String]
        attr_accessor :dpa_id
      
        # Frequency range from `low_frequency` to `high_frequency`.
        # Corresponds to the JSON property `frequencyRange`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalFrequencyRange]
        attr_accessor :frequency_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dpa_id = args[:dpa_id] if args.key?(:dpa_id)
          @frequency_range = args[:frequency_range] if args.key?(:frequency_range)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class SasPortalEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Frequency range from `low_frequency` to `high_frequency`.
      class SasPortalFrequencyRange
        include Google::Apis::Core::Hashable
      
        # The highest frequency of the frequency range in MHz.
        # Corresponds to the JSON property `highFrequencyMhz`
        # @return [Float]
        attr_accessor :high_frequency_mhz
      
        # The lowest frequency of the frequency range in MHz.
        # Corresponds to the JSON property `lowFrequencyMhz`
        # @return [Float]
        attr_accessor :low_frequency_mhz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_frequency_mhz = args[:high_frequency_mhz] if args.key?(:high_frequency_mhz)
          @low_frequency_mhz = args[:low_frequency_mhz] if args.key?(:low_frequency_mhz)
        end
      end
      
      # Request for GenerateSecret method] [spectrum.sas.portal.v1alpha1.DeviceManager.
      # GenerateSecret].
      class SasPortalGenerateSecretRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for GenerateSecret method.
      class SasPortalGenerateSecretResponse
        include Google::Apis::Core::Hashable
      
        # The secret generated by the string and used by [ValidateInstaller] method.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # Request message for `GetPolicy` method.
      class SasPortalGetPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource for which the policy is being requested.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information about the device installation parameters.
      class SasPortalInstallationParams
        include Google::Apis::Core::Hashable
      
        # Boresight direction of the horizontal plane of the antenna in degrees with
        # respect to true north. The value of this parameter is an integer with a value
        # between 0 and 359 inclusive. A value of 0 degrees means true north; a value of
        # 90 degrees means east. This parameter is optional for Category A devices and
        # conditional for Category B devices.
        # Corresponds to the JSON property `antennaAzimuth`
        # @return [Fixnum]
        attr_accessor :antenna_azimuth
      
        # 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees. This
        # parameter is an unsigned integer having a value between 0 and 360 (degrees)
        # inclusive; it is optional for Category A devices and conditional for Category
        # B devices.
        # Corresponds to the JSON property `antennaBeamwidth`
        # @return [Fixnum]
        attr_accessor :antenna_beamwidth
      
        # Antenna downtilt in degrees and is an integer with a value between -90 and +90
        # inclusive; a negative value means the antenna is tilted up (above horizontal).
        # This parameter is optional for Category A devices and conditional for Category
        # B devices.
        # Corresponds to the JSON property `antennaDowntilt`
        # @return [Fixnum]
        attr_accessor :antenna_downtilt
      
        # Peak antenna gain in dBi. This parameter is an integer with a value between -
        # 127 and +128 (dBi) inclusive.
        # Corresponds to the JSON property `antennaGain`
        # @return [Fixnum]
        attr_accessor :antenna_gain
      
        # If an external antenna is used, the antenna model is optionally provided in
        # this field. The string has a maximum length of 128 octets.
        # Corresponds to the JSON property `antennaModel`
        # @return [String]
        attr_accessor :antenna_model
      
        # If present, this parameter specifies whether the CBSD is a CPE-CBSD or not.
        # Corresponds to the JSON property `cpeCbsdIndication`
        # @return [Boolean]
        attr_accessor :cpe_cbsd_indication
        alias_method :cpe_cbsd_indication?, :cpe_cbsd_indication
      
        # This parameter is the maximum device EIRP in units of dBm/10MHz and is an
        # integer with a value between -127 and +47 (dBm/10 MHz) inclusive. If not
        # included, SAS interprets it as maximum allowable EIRP in units of dBm/10MHz
        # for device category.
        # Corresponds to the JSON property `eirpCapability`
        # @return [Fixnum]
        attr_accessor :eirp_capability
      
        # Device antenna height in meters. When the heightType parameter value is "AGL",
        # the antenna height should be given relative to ground level. When the
        # heightType parameter value is "AMSL", it is given with respect to WGS84 datum.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Specifies how the height is measured.
        # Corresponds to the JSON property `heightType`
        # @return [String]
        attr_accessor :height_type
      
        # A positive number in meters to indicate accuracy of the device antenna
        # horizontal location. This optional parameter should only be present if its
        # value is less than the FCC requirement of 50 meters.
        # Corresponds to the JSON property `horizontalAccuracy`
        # @return [Float]
        attr_accessor :horizontal_accuracy
      
        # Whether the device antenna is indoor or not. True: indoor. False: outdoor.
        # Corresponds to the JSON property `indoorDeployment`
        # @return [Boolean]
        attr_accessor :indoor_deployment
        alias_method :indoor_deployment?, :indoor_deployment
      
        # Latitude of the device antenna location in degrees relative to the WGS 84
        # datum. The allowed range is from -90.000000 to +90.000000. Positive values
        # represent latitudes north of the equator; negative values south of the equator.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # Longitude of the device antenna location. in degrees relative to the WGS 84
        # datum. The allowed range is from -180.000000 to +180.000000. Positive values
        # represent longitudes east of the prime meridian; negative values west of the
        # prime meridian.
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        # A positive number in meters to indicate accuracy of the device antenna
        # vertical location. This optional parameter should only be present if its value
        # is less than the FCC requirement of 3 meters.
        # Corresponds to the JSON property `verticalAccuracy`
        # @return [Float]
        attr_accessor :vertical_accuracy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @antenna_azimuth = args[:antenna_azimuth] if args.key?(:antenna_azimuth)
          @antenna_beamwidth = args[:antenna_beamwidth] if args.key?(:antenna_beamwidth)
          @antenna_downtilt = args[:antenna_downtilt] if args.key?(:antenna_downtilt)
          @antenna_gain = args[:antenna_gain] if args.key?(:antenna_gain)
          @antenna_model = args[:antenna_model] if args.key?(:antenna_model)
          @cpe_cbsd_indication = args[:cpe_cbsd_indication] if args.key?(:cpe_cbsd_indication)
          @eirp_capability = args[:eirp_capability] if args.key?(:eirp_capability)
          @height = args[:height] if args.key?(:height)
          @height_type = args[:height_type] if args.key?(:height_type)
          @horizontal_accuracy = args[:horizontal_accuracy] if args.key?(:horizontal_accuracy)
          @indoor_deployment = args[:indoor_deployment] if args.key?(:indoor_deployment)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
          @vertical_accuracy = args[:vertical_accuracy] if args.key?(:vertical_accuracy)
        end
      end
      
      # Response for `ListCustomers`.
      class SasPortalListCustomersResponse
        include Google::Apis::Core::Hashable
      
        # The list of customers that match the request.
        # Corresponds to the JSON property `customers`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer>]
        attr_accessor :customers
      
        # A pagination token returned from a previous call to ListCustomers method that
        # indicates from where listing should continue. If the field is missing or empty,
        # it means there are no more customers.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customers = args[:customers] if args.key?(:customers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListDevices method.
      class SasPortalListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The devices that match the request.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice>]
        attr_accessor :devices
      
        # A pagination token returned from a previous call to ListDevices method that
        # indicates from where listing should continue. If the field is missing or empty,
        # it means there is no more devices.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListNodes method.
      class SasPortalListNodesResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token returned from a previous call to ListNodes method that
        # indicates from where listing should continue. If the field is missing or empty,
        # it means there is no more nodes.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The nodes that match the request.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @nodes = args[:nodes] if args.key?(:nodes)
        end
      end
      
      # Request for MoveDeployment method.
      class SasPortalMoveDeploymentRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the new parent resource Node or Customer to reparent the
        # deployment under.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # Request for MoveDevice method.
      class SasPortalMoveDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the new parent resource (Node or Customer) to reparent
        # the device under.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # Request for MoveNode method.
      class SasPortalMoveNodeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the new parent resource node or Customer) to reparent
        # the node under.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # The Node.
      class SasPortalNode
        include Google::Apis::Core::Hashable
      
        # The node's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User ids used by the devices belonging to this node.
        # Corresponds to the JSON property `sasUserIds`
        # @return [Array<String>]
        attr_accessor :sas_user_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @sas_user_ids = args[:sas_user_ids] if args.key?(:sas_user_ids)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class SasPortalOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Defines an access control policy to the resources.
      class SasPortalPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assignments`
        # @return [Array<Google::Apis::ProdTtSasportalV1alpha1::SasPortalAssignment>]
        attr_accessor :assignments
      
        # The [etag] is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the [etag] in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An [etag] is
        # returned in the response to [GetPolicy], and systems are expected to put that
        # etag in the request to [SetPolicy] to ensure that their change will be applied
        # to the same version of the policy. If no [etag] is provided in the call to [
        # SetPolicy], then the existing policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignments = args[:assignments] if args.key?(:assignments)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # Request message for `SetPolicy` method.
      class SasPortalSetPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an access control policy to the resources.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy]
        attr_accessor :policy
      
        # Required. The resource for which the policy is being specified. This policy
        # replaces any existing policy.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Request for SignDevice method.
      class SasPortalSignDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The device to sign. The device fields name, fcc_id and serial_number
        # must be set. The user_id field must be set.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class SasPortalStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Request message for `TestPermissions` method.
      class SasPortalTestPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Required. The resource for which the permissions are being requested.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Response message for `TestPermissions` method.
      class SasPortalTestPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A set of permissions that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Request for UpdateSignedDevice method.
      class SasPortalUpdateSignedDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The JSON Web Token signed using a CPI private key. Payload must be
        # the JSON encoding of the device. The user_id field must be set.
        # Corresponds to the JSON property `encodedDevice`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_device
      
        # Required. Unique installer ID (CPI ID) from the Certified Professional
        # Installers database.
        # Corresponds to the JSON property `installerId`
        # @return [String]
        attr_accessor :installer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_device = args[:encoded_device] if args.key?(:encoded_device)
          @installer_id = args[:installer_id] if args.key?(:installer_id)
        end
      end
      
      # Request for ValidateInstaller method.
      class SasPortalValidateInstallerRequest
        include Google::Apis::Core::Hashable
      
        # Required. JSON Web Token signed using a CPI private key. Payload must include
        # a "secret" claim whose value is the secret.
        # Corresponds to the JSON property `encodedSecret`
        # @return [String]
        attr_accessor :encoded_secret
      
        # Required. Unique installer id (cpiId) from the Certified Professional
        # Installers database.
        # Corresponds to the JSON property `installerId`
        # @return [String]
        attr_accessor :installer_id
      
        # Required. Secret returned by the GenerateSecret method.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_secret = args[:encoded_secret] if args.key?(:encoded_secret)
          @installer_id = args[:installer_id] if args.key?(:installer_id)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # Response for ValidateInstaller method] [spectrum.sas.portal.v1alpha1.
      # DeviceManager.ValidateInstaller].
      class SasPortalValidateInstallerResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
