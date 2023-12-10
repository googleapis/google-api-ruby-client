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
    module WalletobjectsV1
      
      # ActivationOptions for the class
      class ActivationOptions
        include Google::Apis::Core::Hashable
      
        # HTTPS URL that supports REST semantics. Would be used for requesting
        # activation from partners for given valuable, triggered by the users.
        # Corresponds to the JSON property `activationUrl`
        # @return [String]
        attr_accessor :activation_url
      
        # Flag to allow users to make activation call from different device. This allows
        # client to render the activation button enabled even if the activationStatus is
        # ACTIVATED but the requested device is different than the current device.
        # Corresponds to the JSON property `allowReactivation`
        # @return [Boolean]
        attr_accessor :allow_reactivation
        alias_method :allow_reactivation?, :allow_reactivation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_url = args[:activation_url] if args.key?(:activation_url)
          @allow_reactivation = args[:allow_reactivation] if args.key?(:allow_reactivation)
        end
      end
      
      # The activation status of the object. This field includes activation status if
      # valuable supports activation.
      class ActivationStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Resource used when the AddMessage endpoints are called.
      class AddMessageRequest
        include Google::Apis::Core::Hashable
      
        # A message that will be displayed with a Valuable
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WalletobjectsV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class AirportInfo
        include Google::Apis::Core::Hashable
      
        # Three character IATA airport code. This is a required field for `origin` and `
        # destination`. Eg: "SFO"
        # Corresponds to the JSON property `airportIataCode`
        # @return [String]
        attr_accessor :airport_iata_code
      
        # Optional field that overrides the airport city name defined by IATA. By
        # default, Google takes the `airportIataCode` provided and maps it to the
        # official airport city name defined by IATA. Official IATA airport city names
        # can be found at IATA airport city names website. For example, for the airport
        # IATA code "LTN", IATA website tells us that the corresponding airport city is "
        # London". If this field is not populated, Google would display "London".
        # However, populating this field with a custom name (eg: "London Luton") would
        # override it.
        # Corresponds to the JSON property `airportNameOverride`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :airport_name_override
      
        # A name of the gate. Eg: "B59" or "59"
        # Corresponds to the JSON property `gate`
        # @return [String]
        attr_accessor :gate
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#airportInfo"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Terminal name. Eg: "INTL" or "I"
        # Corresponds to the JSON property `terminal`
        # @return [String]
        attr_accessor :terminal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airport_iata_code = args[:airport_iata_code] if args.key?(:airport_iata_code)
          @airport_name_override = args[:airport_name_override] if args.key?(:airport_name_override)
          @gate = args[:gate] if args.key?(:gate)
          @kind = args[:kind] if args.key?(:kind)
          @terminal = args[:terminal] if args.key?(:terminal)
        end
      end
      
      # 
      class AppLinkData
        include Google::Apis::Core::Hashable
      
        # Optional information about the partner app link. If included, the app link
        # link module will be rendered on the valuable details on the android client.
        # Corresponds to the JSON property `androidAppLinkInfo`
        # @return [Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo]
        attr_accessor :android_app_link_info
      
        # Optional information about the partner app link. If included, the app link
        # link module will be rendered on the valuable details on the ios client.
        # Corresponds to the JSON property `iosAppLinkInfo`
        # @return [Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo]
        attr_accessor :ios_app_link_info
      
        # Optional information about the partner app link. If included, the app link
        # link module will be rendered on the valuable details on the web client.
        # Corresponds to the JSON property `webAppLinkInfo`
        # @return [Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo]
        attr_accessor :web_app_link_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_link_info = args[:android_app_link_info] if args.key?(:android_app_link_info)
          @ios_app_link_info = args[:ios_app_link_info] if args.key?(:ios_app_link_info)
          @web_app_link_info = args[:web_app_link_info] if args.key?(:web_app_link_info)
        end
      end
      
      # 
      class AppLinkDataAppLinkInfo
        include Google::Apis::Core::Hashable
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `appLogoImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :app_logo_image
      
        # Url to follow when opening the App Link Module on clients. It will be used by
        # partners to open their webpage or deeplink into their app.
        # Corresponds to the JSON property `appTarget`
        # @return [Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfoAppTarget]
        attr_accessor :app_target
      
        # String to be displayed in the description of the App Link Module Required
        # Corresponds to the JSON property `description`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :description
      
        # String to be displayed in the title of the App Link Module Required
        # Corresponds to the JSON property `title`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_logo_image = args[:app_logo_image] if args.key?(:app_logo_image)
          @app_target = args[:app_target] if args.key?(:app_target)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class AppLinkDataAppLinkInfoAppTarget
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `targetUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :target_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_uri = args[:target_uri] if args.key?(:target_uri)
        end
      end
      
      # 
      class AuthenticationKey
        include Google::Apis::Core::Hashable
      
        # Available only to Smart Tap enabled partners. Contact support for additional
        # guidance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Available only to Smart Tap enabled partners. Contact support for additional
        # guidance.
        # Corresponds to the JSON property `publicKeyPem`
        # @return [String]
        attr_accessor :public_key_pem
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @public_key_pem = args[:public_key_pem] if args.key?(:public_key_pem)
        end
      end
      
      # 
      class Barcode
        include Google::Apis::Core::Hashable
      
        # An optional text that will override the default text that shows under the
        # barcode. This field is intended for a human readable equivalent of the barcode
        # value, used when the barcode cannot be scanned.
        # Corresponds to the JSON property `alternateText`
        # @return [String]
        attr_accessor :alternate_text
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#barcode"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The render encoding for the barcode. When specified, barcode is rendered in
        # the given encoding. Otherwise best known encoding is chosen by Google.
        # Corresponds to the JSON property `renderEncoding`
        # @return [String]
        attr_accessor :render_encoding
      
        # Optional text that will be shown when the barcode is hidden behind a click
        # action. This happens in cases where a pass has Smart Tap enabled. If not
        # specified, a default is chosen by Google.
        # Corresponds to the JSON property `showCodeText`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :show_code_text
      
        # The type of barcode.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value encoded in the barcode.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_text = args[:alternate_text] if args.key?(:alternate_text)
          @kind = args[:kind] if args.key?(:kind)
          @render_encoding = args[:render_encoding] if args.key?(:render_encoding)
          @show_code_text = args[:show_code_text] if args.key?(:show_code_text)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class BarcodeSectionDetail
        include Google::Apis::Core::Hashable
      
        # Custom field selector to use with field overrides.
        # Corresponds to the JSON property `fieldSelector`
        # @return [Google::Apis::WalletobjectsV1::FieldSelector]
        attr_accessor :field_selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_selector = args[:field_selector] if args.key?(:field_selector)
        end
      end
      
      # Information to read/write to blobstore2.
      class Blobstore2Info
        include Google::Apis::Core::Hashable
      
        # The blob generation id.
        # Corresponds to the JSON property `blobGeneration`
        # @return [Fixnum]
        attr_accessor :blob_generation
      
        # The blob id, e.g., /blobstore/prod/playground/scotty
        # Corresponds to the JSON property `blobId`
        # @return [String]
        attr_accessor :blob_id
      
        # Read handle passed from Bigstore -> Scotty for a GCS download. This is a
        # signed, serialized blobstore2.ReadHandle proto which must never be set outside
        # of Bigstore, and is not applicable to non-GCS media downloads.
        # Corresponds to the JSON property `downloadReadHandle`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :download_read_handle
      
        # The blob read token. Needed to read blobs that have not been replicated. Might
        # not be available until the final call.
        # Corresponds to the JSON property `readToken`
        # @return [String]
        attr_accessor :read_token
      
        # Metadata passed from Blobstore -> Scotty for a new GCS upload. This is a
        # signed, serialized blobstore2.BlobMetadataContainer proto which must never be
        # consumed outside of Bigstore, and is not applicable to non-GCS media uploads.
        # Corresponds to the JSON property `uploadMetadataContainer`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :upload_metadata_container
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_generation = args[:blob_generation] if args.key?(:blob_generation)
          @blob_id = args[:blob_id] if args.key?(:blob_id)
          @download_read_handle = args[:download_read_handle] if args.key?(:download_read_handle)
          @read_token = args[:read_token] if args.key?(:read_token)
          @upload_metadata_container = args[:upload_metadata_container] if args.key?(:upload_metadata_container)
        end
      end
      
      # 
      class BoardingAndSeatingInfo
        include Google::Apis::Core::Hashable
      
        # Set this field only if this flight boards through more than one door or bridge
        # and you want to explicitly print the door location on the boarding pass. Most
        # airlines route their passengers to the right door or bridge by refering to
        # doors/bridges by the `seatClass`. In those cases `boardingDoor` should not be
        # set.
        # Corresponds to the JSON property `boardingDoor`
        # @return [String]
        attr_accessor :boarding_door
      
        # The value of boarding group (or zone) this passenger shall board with. eg: "B"
        # The label for this value will be determined by the `boardingPolicy` field in
        # the `flightClass` referenced by this object.
        # Corresponds to the JSON property `boardingGroup`
        # @return [String]
        attr_accessor :boarding_group
      
        # The value of boarding position. eg: "76"
        # Corresponds to the JSON property `boardingPosition`
        # @return [String]
        attr_accessor :boarding_position
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `boardingPrivilegeImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :boarding_privilege_image
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#boardingAndSeatingInfo"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The passenger's seat assignment. To be used when there is no specific
        # identifier to use in `seatNumber`. eg: "assigned at gate"
        # Corresponds to the JSON property `seatAssignment`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :seat_assignment
      
        # The value of the seat class. eg: "Economy" or "Economy Plus"
        # Corresponds to the JSON property `seatClass`
        # @return [String]
        attr_accessor :seat_class
      
        # The value of passenger seat. If there is no specific identifier, use `
        # seatAssignment` instead. eg: "25A"
        # Corresponds to the JSON property `seatNumber`
        # @return [String]
        attr_accessor :seat_number
      
        # The sequence number on the boarding pass. This usually matches the sequence in
        # which the passengers checked in. Airline might use the number for manual
        # boarding and bag tags. eg: "49"
        # Corresponds to the JSON property `sequenceNumber`
        # @return [String]
        attr_accessor :sequence_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boarding_door = args[:boarding_door] if args.key?(:boarding_door)
          @boarding_group = args[:boarding_group] if args.key?(:boarding_group)
          @boarding_position = args[:boarding_position] if args.key?(:boarding_position)
          @boarding_privilege_image = args[:boarding_privilege_image] if args.key?(:boarding_privilege_image)
          @kind = args[:kind] if args.key?(:kind)
          @seat_assignment = args[:seat_assignment] if args.key?(:seat_assignment)
          @seat_class = args[:seat_class] if args.key?(:seat_class)
          @seat_number = args[:seat_number] if args.key?(:seat_number)
          @sequence_number = args[:sequence_number] if args.key?(:sequence_number)
        end
      end
      
      # 
      class BoardingAndSeatingPolicy
        include Google::Apis::Core::Hashable
      
        # Indicates the policy the airline uses for boarding. If unset, Google will
        # default to `zoneBased`.
        # Corresponds to the JSON property `boardingPolicy`
        # @return [String]
        attr_accessor :boarding_policy
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#boardingAndSeatingPolicy"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Seating policy which dictates how we display the seat class. If unset, Google
        # will default to `cabinBased`.
        # Corresponds to the JSON property `seatClassPolicy`
        # @return [String]
        attr_accessor :seat_class_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boarding_policy = args[:boarding_policy] if args.key?(:boarding_policy)
          @kind = args[:kind] if args.key?(:kind)
          @seat_class_policy = args[:seat_class_policy] if args.key?(:seat_class_policy)
        end
      end
      
      # 
      class CallbackOptions
        include Google::Apis::Core::Hashable
      
        # URL for the merchant endpoint that would be called to request updates. The URL
        # should be hosted on HTTPS and robots.txt should allow the URL path to be
        # accessible by UserAgent:Google-Valuables. Deprecated.
        # Corresponds to the JSON property `updateRequestUrl`
        # @return [String]
        attr_accessor :update_request_url
      
        # The HTTPS url configured by the merchant. The URL should be hosted on HTTPS
        # and robots.txt should allow the URL path to be accessible by UserAgent:Google-
        # Valuables.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_request_url = args[:update_request_url] if args.key?(:update_request_url)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class CardBarcodeSectionDetails
        include Google::Apis::Core::Hashable
      
        # Optional information to display below the barcode.
        # Corresponds to the JSON property `firstBottomDetail`
        # @return [Google::Apis::WalletobjectsV1::BarcodeSectionDetail]
        attr_accessor :first_bottom_detail
      
        # Optional information to display above the barcode. If `secondTopDetail` is
        # defined, this will be displayed to the start side of this detail section.
        # Corresponds to the JSON property `firstTopDetail`
        # @return [Google::Apis::WalletobjectsV1::BarcodeSectionDetail]
        attr_accessor :first_top_detail
      
        # Optional second piece of information to display above the barcode. If `
        # firstTopDetail` is defined, this will be displayed to the end side of this
        # detail section.
        # Corresponds to the JSON property `secondTopDetail`
        # @return [Google::Apis::WalletobjectsV1::BarcodeSectionDetail]
        attr_accessor :second_top_detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_bottom_detail = args[:first_bottom_detail] if args.key?(:first_bottom_detail)
          @first_top_detail = args[:first_top_detail] if args.key?(:first_top_detail)
          @second_top_detail = args[:second_top_detail] if args.key?(:second_top_detail)
        end
      end
      
      # 
      class CardRowOneItem
        include Google::Apis::Core::Hashable
      
        # The item to be displayed in the row. This item will be automatically centered.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # 
      class CardRowTemplateInfo
        include Google::Apis::Core::Hashable
      
        # Template for a row containing one item. Exactly one of "one_item", "two_items",
        # "three_items" must be set.
        # Corresponds to the JSON property `oneItem`
        # @return [Google::Apis::WalletobjectsV1::CardRowOneItem]
        attr_accessor :one_item
      
        # Template for a row containing three items. Exactly one of "one_item", "
        # two_items", "three_items" must be set.
        # Corresponds to the JSON property `threeItems`
        # @return [Google::Apis::WalletobjectsV1::CardRowThreeItems]
        attr_accessor :three_items
      
        # Template for a row containing two items. Exactly one of "one_item", "two_items"
        # , "three_items" must be set.
        # Corresponds to the JSON property `twoItems`
        # @return [Google::Apis::WalletobjectsV1::CardRowTwoItems]
        attr_accessor :two_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @one_item = args[:one_item] if args.key?(:one_item)
          @three_items = args[:three_items] if args.key?(:three_items)
          @two_items = args[:two_items] if args.key?(:two_items)
        end
      end
      
      # 
      class CardRowThreeItems
        include Google::Apis::Core::Hashable
      
        # The item to be displayed at the end of the row. This item will be aligned to
        # the right.
        # Corresponds to the JSON property `endItem`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :end_item
      
        # The item to be displayed in the middle of the row. This item will be centered
        # between the start and end items.
        # Corresponds to the JSON property `middleItem`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :middle_item
      
        # The item to be displayed at the start of the row. This item will be aligned to
        # the left.
        # Corresponds to the JSON property `startItem`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :start_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_item = args[:end_item] if args.key?(:end_item)
          @middle_item = args[:middle_item] if args.key?(:middle_item)
          @start_item = args[:start_item] if args.key?(:start_item)
        end
      end
      
      # 
      class CardRowTwoItems
        include Google::Apis::Core::Hashable
      
        # The item to be displayed at the end of the row. This item will be aligned to
        # the right.
        # Corresponds to the JSON property `endItem`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :end_item
      
        # The item to be displayed at the start of the row. This item will be aligned to
        # the left.
        # Corresponds to the JSON property `startItem`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :start_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_item = args[:end_item] if args.key?(:end_item)
          @start_item = args[:start_item] if args.key?(:start_item)
        end
      end
      
      # 
      class CardTemplateOverride
        include Google::Apis::Core::Hashable
      
        # Template information for rows in the card view. At most three rows are allowed
        # to be specified.
        # Corresponds to the JSON property `cardRowTemplateInfos`
        # @return [Array<Google::Apis::WalletobjectsV1::CardRowTemplateInfo>]
        attr_accessor :card_row_template_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_row_template_infos = args[:card_row_template_infos] if args.key?(:card_row_template_infos)
        end
      end
      
      # 
      class ClassTemplateInfo
        include Google::Apis::Core::Hashable
      
        # Specifies extra information to be displayed above and below the barcode.
        # Corresponds to the JSON property `cardBarcodeSectionDetails`
        # @return [Google::Apis::WalletobjectsV1::CardBarcodeSectionDetails]
        attr_accessor :card_barcode_section_details
      
        # Override for the card view.
        # Corresponds to the JSON property `cardTemplateOverride`
        # @return [Google::Apis::WalletobjectsV1::CardTemplateOverride]
        attr_accessor :card_template_override
      
        # Override for the details view (beneath the card view).
        # Corresponds to the JSON property `detailsTemplateOverride`
        # @return [Google::Apis::WalletobjectsV1::DetailsTemplateOverride]
        attr_accessor :details_template_override
      
        # Override for the passes list view.
        # Corresponds to the JSON property `listTemplateOverride`
        # @return [Google::Apis::WalletobjectsV1::ListTemplateOverride]
        attr_accessor :list_template_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_barcode_section_details = args[:card_barcode_section_details] if args.key?(:card_barcode_section_details)
          @card_template_override = args[:card_template_override] if args.key?(:card_template_override)
          @details_template_override = args[:details_template_override] if args.key?(:details_template_override)
          @list_template_override = args[:list_template_override] if args.key?(:list_template_override)
        end
      end
      
      # A sequence of media data references representing composite data. Introduced to
      # support Bigstore composite objects. For details, visit http://go/bigstore-
      # composites.
      class CompositeMedia
        include Google::Apis::Core::Hashable
      
        # Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be
        # the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating
        # v1, use blobstore2_info instead. For now, any v2 blob will also be represented
        # in this field as v1 BlobRef.
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # Information to read/write to blobstore2.
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::WalletobjectsV1::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # A binary data reference for a media download. Serves as a technology-agnostic
        # binary reference in some Google infrastructure. This value is a serialized
        # storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get
        # around the fact that the cosmo proto (as well as others it includes) doesn't
        # support JavaScript. This prevents us from including the actual type of this
        # field.
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # crc32.c hash for the payload.
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # Media data, set if reference_type is INLINE
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # Size of the data, in bytes
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # MD5 hash for the payload.
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # This is a copy of the tech.blob.ObjectId proto, which could not be used
        # directly here due to transitive closure issues with JavaScript support; see
        # http://b/8801763.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::WalletobjectsV1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Path to the data, set if reference_type is PATH
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Describes what the field reference contains.
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # SHA-1 hash for the payload.
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @inline = args[:inline] if args.key?(:inline)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
        end
      end
      
      # Detailed Content-Type information from Scotty. The Content-Type of the media
      # will typically be filled in by the header or Scotty's best_guess, but this
      # extended information provides the backend with more information so that it can
      # make a better decision if needed. This is only used on media upload requests
      # from Scotty.
      class ContentTypeInfo
        include Google::Apis::Core::Hashable
      
        # Scotty's best guess of what the content type of the file is.
        # Corresponds to the JSON property `bestGuess`
        # @return [String]
        attr_accessor :best_guess
      
        # The content type of the file derived by looking at specific bytes (i.e. "magic
        # bytes") of the actual file.
        # Corresponds to the JSON property `fromBytes`
        # @return [String]
        attr_accessor :from_bytes
      
        # The content type of the file derived from the file extension of the original
        # file name used by the client.
        # Corresponds to the JSON property `fromFileName`
        # @return [String]
        attr_accessor :from_file_name
      
        # The content type of the file as specified in the request headers, multipart
        # headers, or RUPIO start request.
        # Corresponds to the JSON property `fromHeader`
        # @return [String]
        attr_accessor :from_header
      
        # The content type of the file derived from the file extension of the URL path.
        # The URL path is assumed to represent a file name (which is typically only true
        # for agents that are providing a REST API).
        # Corresponds to the JSON property `fromUrlPath`
        # @return [String]
        attr_accessor :from_url_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_guess = args[:best_guess] if args.key?(:best_guess)
          @from_bytes = args[:from_bytes] if args.key?(:from_bytes)
          @from_file_name = args[:from_file_name] if args.key?(:from_file_name)
          @from_header = args[:from_header] if args.key?(:from_header)
          @from_url_path = args[:from_url_path] if args.key?(:from_url_path)
        end
      end
      
      # 
      class DateTime
        include Google::Apis::Core::Hashable
      
        # An ISO 8601 extended format date/time. Offset may or may not be required (
        # refer to the parent field's documentation). Time may be specified up to
        # nanosecond precision. Offsets may be specified with seconds precision (even
        # though offset seconds is not part of ISO 8601). For example: `1985-04-12T23:20:
        # 50.52Z` would be 20 minutes and 50.52 seconds after the 23rd hour of April
        # 12th, 1985 in UTC. `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.
        # 52 seconds after the 19th hour of April 12th, 1985, 4 hours before UTC (same
        # instant in time as the above example). If the date/time is intended for a
        # physical location in New York, this would be the equivalent of Eastern
        # Daylight Time (EDT). Remember that offset varies in regions that observe
        # Daylight Saving Time (or Summer Time), depending on the time of the year. `
        # 1985-04-12T19:20:50.52` would be 20 minutes and 50.52 seconds after the 19th
        # hour of April 12th, 1985 with no offset information. Providing an offset makes
        # this an absolute instant in time around the world. The date/time will be
        # adjusted based on the user's time zone. For example, a time of `2018-06-19T18:
        # 30:00-04:00` will be 18:30:00 for a user in New York and 15:30:00 for a user
        # in Los Angeles. Omitting the offset makes this a local date/time, representing
        # several instants in time around the world. The date/time will always be in the
        # user's current time zone. For example, a time of `2018-06-19T18:30:00` will be
        # 18:30:00 for a user in New York and also 18:30:00 for a user in Los Angeles.
        # This is useful when the same local date/time should apply to many physical
        # locations across several time zones.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # 
      class DetailsItemInfo
        include Google::Apis::Core::Hashable
      
        # The item to be displayed in the details list.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::WalletobjectsV1::TemplateItem]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # 
      class DetailsTemplateOverride
        include Google::Apis::Core::Hashable
      
        # Information for the "nth" item displayed in the details list.
        # Corresponds to the JSON property `detailsItemInfos`
        # @return [Array<Google::Apis::WalletobjectsV1::DetailsItemInfo>]
        attr_accessor :details_item_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details_item_infos = args[:details_item_infos] if args.key?(:details_item_infos)
        end
      end
      
      # Device context associated with the object.
      class DeviceContext
        include Google::Apis::Core::Hashable
      
        # If set, redemption information will only be returned to the given device upon
        # activation of the object. This should not be used as a stable identifier to
        # trace a user's device. It can change across different passes for the same
        # device or even across different activations for the same device. When setting
        # this, callers must also set has_linked_device on the object being activated.
        # Corresponds to the JSON property `deviceToken`
        # @return [String]
        attr_accessor :device_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_token = args[:device_token] if args.key?(:device_token)
        end
      end
      
      # Backend response for a Diff get checksums response. For details on the Scotty
      # Diff protocol, visit http://go/scotty-diff-protocol.
      class DiffChecksumsResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `checksumsLocation`
        # @return [Google::Apis::WalletobjectsV1::CompositeMedia]
        attr_accessor :checksums_location
      
        # The chunk size of checksums. Must be a multiple of 256KB.
        # Corresponds to the JSON property `chunkSizeBytes`
        # @return [Fixnum]
        attr_accessor :chunk_size_bytes
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::WalletobjectsV1::CompositeMedia]
        attr_accessor :object_location
      
        # The total size of the server object.
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # The object version of the object the checksums are being returned for.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_location = args[:checksums_location] if args.key?(:checksums_location)
          @chunk_size_bytes = args[:chunk_size_bytes] if args.key?(:chunk_size_bytes)
          @object_location = args[:object_location] if args.key?(:object_location)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Backend response for a Diff download response. For details on the Scotty Diff
      # protocol, visit http://go/scotty-diff-protocol.
      class DiffDownloadResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::WalletobjectsV1::CompositeMedia]
        attr_accessor :object_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_location = args[:object_location] if args.key?(:object_location)
        end
      end
      
      # A Diff upload request. For details on the Scotty Diff protocol, visit http://
      # go/scotty-diff-protocol.
      class DiffUploadRequest
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `checksumsInfo`
        # @return [Google::Apis::WalletobjectsV1::CompositeMedia]
        attr_accessor :checksums_info
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectInfo`
        # @return [Google::Apis::WalletobjectsV1::CompositeMedia]
        attr_accessor :object_info
      
        # The object version of the object that is the base version the incoming diff
        # script will be applied to. This field will always be filled in.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_info = args[:checksums_info] if args.key?(:checksums_info)
          @object_info = args[:object_info] if args.key?(:object_info)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Backend response for a Diff upload request. For details on the Scotty Diff
      # protocol, visit http://go/scotty-diff-protocol.
      class DiffUploadResponse
        include Google::Apis::Core::Hashable
      
        # The object version of the object at the server. Must be included in the end
        # notification response. The version in the end notification response must
        # correspond to the new version of the object that is now stored at the server,
        # after the upload.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `originalObject`
        # @return [Google::Apis::WalletobjectsV1::CompositeMedia]
        attr_accessor :original_object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_version = args[:object_version] if args.key?(:object_version)
          @original_object = args[:original_object] if args.key?(:original_object)
        end
      end
      
      # Backend response for a Diff get version response. For details on the Scotty
      # Diff protocol, visit http://go/scotty-diff-protocol.
      class DiffVersionResponse
        include Google::Apis::Core::Hashable
      
        # The total size of the server object.
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # The version of the object stored at the server.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Information about how a class may be discovered and instantiated from within
      # the Android Pay app. This is done by searching for a loyalty or gift card
      # program and scanning or manually entering.
      class DiscoverableProgram
        include Google::Apis::Core::Hashable
      
        # Information about the merchant hosted signin flow for a program.
        # Corresponds to the JSON property `merchantSigninInfo`
        # @return [Google::Apis::WalletobjectsV1::DiscoverableProgramMerchantSigninInfo]
        attr_accessor :merchant_signin_info
      
        # Information about the merchant hosted signup flow for a program.
        # Corresponds to the JSON property `merchantSignupInfo`
        # @return [Google::Apis::WalletobjectsV1::DiscoverableProgramMerchantSignupInfo]
        attr_accessor :merchant_signup_info
      
        # Visibility state of the discoverable program.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merchant_signin_info = args[:merchant_signin_info] if args.key?(:merchant_signin_info)
          @merchant_signup_info = args[:merchant_signup_info] if args.key?(:merchant_signup_info)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about the merchant hosted signin flow for a program.
      class DiscoverableProgramMerchantSigninInfo
        include Google::Apis::Core::Hashable
      
        # The URL to direct the user to for the merchant's signin site.
        # Corresponds to the JSON property `signinWebsite`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :signin_website
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signin_website = args[:signin_website] if args.key?(:signin_website)
        end
      end
      
      # Information about the merchant hosted signup flow for a program.
      class DiscoverableProgramMerchantSignupInfo
        include Google::Apis::Core::Hashable
      
        # User data that is sent in a POST request to the signup website URL. This
        # information is encoded and then shared so that the merchant's website can
        # prefill fields used to enroll the user for the discoverable program.
        # Corresponds to the JSON property `signupSharedDatas`
        # @return [Array<String>]
        attr_accessor :signup_shared_datas
      
        # The URL to direct the user to for the merchant's signup site.
        # Corresponds to the JSON property `signupWebsite`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :signup_website
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signup_shared_datas = args[:signup_shared_datas] if args.key?(:signup_shared_datas)
          @signup_website = args[:signup_website] if args.key?(:signup_website)
        end
      end
      
      # Parameters specific to media downloads.
      class DownloadParameters
        include Google::Apis::Core::Hashable
      
        # A boolean to be returned in the response to Scotty. Allows/disallows gzip
        # encoding of the payload content when the server thinks it's advantageous (
        # hence, does not guarantee compression) which allows Scotty to GZip the
        # response to the client.
        # Corresponds to the JSON property `allowGzipCompression`
        # @return [Boolean]
        attr_accessor :allow_gzip_compression
        alias_method :allow_gzip_compression?, :allow_gzip_compression
      
        # Determining whether or not Apiary should skip the inclusion of any Content-
        # Range header on its response to Scotty.
        # Corresponds to the JSON property `ignoreRange`
        # @return [Boolean]
        attr_accessor :ignore_range
        alias_method :ignore_range?, :ignore_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_gzip_compression = args[:allow_gzip_compression] if args.key?(:allow_gzip_compression)
          @ignore_range = args[:ignore_range] if args.key?(:ignore_range)
        end
      end
      
      # 
      class EventDateTime
        include Google::Apis::Core::Hashable
      
        # A custom label to use for the doors open value (`doorsOpen`) on the card
        # detail view. This should only be used if the default "Doors Open" label or one
        # of the `doorsOpenLabel` options is not sufficient. Both `doorsOpenLabel` and `
        # customDoorsOpenLabel` may not be set. If neither is set, the label will
        # default to "Doors Open", localized. If the doors open field is unset, this
        # label will not be used.
        # Corresponds to the JSON property `customDoorsOpenLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_doors_open_label
      
        # The date/time when the doors open at the venue. This is an ISO 8601 extended
        # format date/time, with or without an offset. Time may be specified up to
        # nanosecond precision. Offsets may be specified with seconds precision (even
        # though offset seconds is not part of ISO 8601). For example: `1985-04-12T23:20:
        # 50.52Z` would be 20 minutes and 50.52 seconds after the 23rd hour of April
        # 12th, 1985 in UTC. `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.
        # 52 seconds after the 19th hour of April 12th, 1985, 4 hours before UTC (same
        # instant in time as the above example). If the event were in New York, this
        # would be the equivalent of Eastern Daylight Time (EDT). Remember that offset
        # varies in regions that observe Daylight Saving Time (or Summer Time),
        # depending on the time of the year. `1985-04-12T19:20:50.52` would be 20
        # minutes and 50.52 seconds after the 19th hour of April 12th, 1985 with no
        # offset information. The portion of the date/time without the offset is
        # considered the "local date/time". This should be the local date/time at the
        # venue. For example, if the event occurs at the 20th hour of June 5th, 2018 at
        # the venue, the local date/time portion should be `2018-06-05T20:00:00`. If the
        # local date/time at the venue is 4 hours before UTC, an offset of `-04:00` may
        # be appended. Without offset information, some rich features may not be
        # available.
        # Corresponds to the JSON property `doorsOpen`
        # @return [String]
        attr_accessor :doors_open
      
        # The label to use for the doors open value (`doorsOpen`) on the card detail
        # view. Each available option maps to a set of localized strings, so that
        # translations are shown to the user based on their locale. Both `doorsOpenLabel`
        # and `customDoorsOpenLabel` may not be set. If neither is set, the label will
        # default to "Doors Open", localized. If the doors open field is unset, this
        # label will not be used.
        # Corresponds to the JSON property `doorsOpenLabel`
        # @return [String]
        attr_accessor :doors_open_label
      
        # The date/time when the event ends. If the event spans multiple days, it should
        # be the end date/time on the last day. This is an ISO 8601 extended format date/
        # time, with or without an offset. Time may be specified up to nanosecond
        # precision. Offsets may be specified with seconds precision (even though offset
        # seconds is not part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would
        # be 20 minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
        # `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
        # the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in time as
        # the above example). If the event were in New York, this would be the
        # equivalent of Eastern Daylight Time (EDT). Remember that offset varies in
        # regions that observe Daylight Saving Time (or Summer Time), depending on the
        # time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and 50.52
        # seconds after the 19th hour of April 12th, 1985 with no offset information.
        # The portion of the date/time without the offset is considered the "local date/
        # time". This should be the local date/time at the venue. For example, if the
        # event occurs at the 20th hour of June 5th, 2018 at the venue, the local date/
        # time portion should be `2018-06-05T20:00:00`. If the local date/time at the
        # venue is 4 hours before UTC, an offset of `-04:00` may be appended. Without
        # offset information, some rich features may not be available.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#eventDateTime"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date/time when the event starts. If the event spans multiple days, it
        # should be the start date/time on the first day. This is an ISO 8601 extended
        # format date/time, with or without an offset. Time may be specified up to
        # nanosecond precision. Offsets may be specified with seconds precision (even
        # though offset seconds is not part of ISO 8601). For example: `1985-04-12T23:20:
        # 50.52Z` would be 20 minutes and 50.52 seconds after the 23rd hour of April
        # 12th, 1985 in UTC. `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.
        # 52 seconds after the 19th hour of April 12th, 1985, 4 hours before UTC (same
        # instant in time as the above example). If the event were in New York, this
        # would be the equivalent of Eastern Daylight Time (EDT). Remember that offset
        # varies in regions that observe Daylight Saving Time (or Summer Time),
        # depending on the time of the year. `1985-04-12T19:20:50.52` would be 20
        # minutes and 50.52 seconds after the 19th hour of April 12th, 1985 with no
        # offset information. The portion of the date/time without the offset is
        # considered the "local date/time". This should be the local date/time at the
        # venue. For example, if the event occurs at the 20th hour of June 5th, 2018 at
        # the venue, the local date/time portion should be `2018-06-05T20:00:00`. If the
        # local date/time at the venue is 4 hours before UTC, an offset of `-04:00` may
        # be appended. Without offset information, some rich features may not be
        # available.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_doors_open_label = args[:custom_doors_open_label] if args.key?(:custom_doors_open_label)
          @doors_open = args[:doors_open] if args.key?(:doors_open)
          @doors_open_label = args[:doors_open_label] if args.key?(:doors_open_label)
          @end = args[:end] if args.key?(:end)
          @kind = args[:kind] if args.key?(:kind)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # 
      class EventReservationInfo
        include Google::Apis::Core::Hashable
      
        # The confirmation code of the event reservation. This may also take the form of
        # an "order number", "confirmation number", "reservation number", or other
        # equivalent.
        # Corresponds to the JSON property `confirmationCode`
        # @return [String]
        attr_accessor :confirmation_code
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#eventReservationInfo"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confirmation_code = args[:confirmation_code] if args.key?(:confirmation_code)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class EventSeat
        include Google::Apis::Core::Hashable
      
        # The gate the ticket holder should enter to get to their seat, such as "A" or "
        # West". This field is localizable so you may translate words or use different
        # alphabets for the characters in an identifier.
        # Corresponds to the JSON property `gate`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :gate
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#eventSeat"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The row of the seat, such as "1", E", "BB", or "A5". This field is localizable
        # so you may translate words or use different alphabets for the characters in an
        # identifier.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :row
      
        # The seat number, such as "1", "2", "3", or any other seat identifier. This
        # field is localizable so you may translate words or use different alphabets for
        # the characters in an identifier.
        # Corresponds to the JSON property `seat`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :seat
      
        # The section of the seat, such as "121". This field is localizable so you may
        # translate words or use different alphabets for the characters in an identifier.
        # Corresponds to the JSON property `section`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :section
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gate = args[:gate] if args.key?(:gate)
          @kind = args[:kind] if args.key?(:kind)
          @row = args[:row] if args.key?(:row)
          @seat = args[:seat] if args.key?(:seat)
          @section = args[:section] if args.key?(:section)
        end
      end
      
      # 
      class EventTicketClass
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
        # Corresponds to the JSON property `allowMultipleUsersPerObject`
        # @return [Boolean]
        attr_accessor :allow_multiple_users_per_object
        alias_method :allow_multiple_users_per_object?, :allow_multiple_users_per_object
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # The label to use for the confirmation code value (`eventTicketObject.
        # reservationInfo.confirmationCode`) on the card detail view. Each available
        # option maps to a set of localized strings, so that translations are shown to
        # the user based on their locale. Both `confirmationCodeLabel` and `
        # customConfirmationCodeLabel` may not be set. If neither is set, the label will
        # default to "Confirmation Code", localized. If the confirmation code field is
        # unset, this label will not be used.
        # Corresponds to the JSON property `confirmationCodeLabel`
        # @return [String]
        attr_accessor :confirmation_code_label
      
        # Country code used to display the card's country (when the user is not in that
        # country), as well as to display localized content when content is not
        # available in the user's locale.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # A custom label to use for the confirmation code value (`eventTicketObject.
        # reservationInfo.confirmationCode`) on the card detail view. This should only
        # be used if the default "Confirmation Code" label or one of the `
        # confirmationCodeLabel` options is not sufficient. Both `confirmationCodeLabel`
        # and `customConfirmationCodeLabel` may not be set. If neither is set, the label
        # will default to "Confirmation Code", localized. If the confirmation code field
        # is unset, this label will not be used.
        # Corresponds to the JSON property `customConfirmationCodeLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_confirmation_code_label
      
        # A custom label to use for the gate value (`eventTicketObject.seatInfo.gate`)
        # on the card detail view. This should only be used if the default "Gate" label
        # or one of the `gateLabel` options is not sufficient. Both `gateLabel` and `
        # customGateLabel` may not be set. If neither is set, the label will default to "
        # Gate", localized. If the gate field is unset, this label will not be used.
        # Corresponds to the JSON property `customGateLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_gate_label
      
        # A custom label to use for the row value (`eventTicketObject.seatInfo.row`) on
        # the card detail view. This should only be used if the default "Row" label or
        # one of the `rowLabel` options is not sufficient. Both `rowLabel` and `
        # customRowLabel` may not be set. If neither is set, the label will default to "
        # Row", localized. If the row field is unset, this label will not be used.
        # Corresponds to the JSON property `customRowLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_row_label
      
        # A custom label to use for the seat value (`eventTicketObject.seatInfo.seat`)
        # on the card detail view. This should only be used if the default "Seat" label
        # or one of the `seatLabel` options is not sufficient. Both `seatLabel` and `
        # customSeatLabel` may not be set. If neither is set, the label will default to "
        # Seat", localized. If the seat field is unset, this label will not be used.
        # Corresponds to the JSON property `customSeatLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_seat_label
      
        # A custom label to use for the section value (`eventTicketObject.seatInfo.
        # section`) on the card detail view. This should only be used if the default "
        # Section" label or one of the `sectionLabel` options is not sufficient. Both `
        # sectionLabel` and `customSectionLabel` may not be set. If neither is set, the
        # label will default to "Section", localized. If the section field is unset,
        # this label will not be used.
        # Corresponds to the JSON property `customSectionLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_section_label
      
        # The date & time information of the event.
        # Corresponds to the JSON property `dateTime`
        # @return [Google::Apis::WalletobjectsV1::EventDateTime]
        attr_accessor :date_time
      
        # Identifies whether this class supports Smart Tap. The `redemptionIssuers` and
        # object level `smartTapRedemptionLevel` fields must also be set up correctly in
        # order for a pass to support Smart Tap.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # The ID of the event. This ID should be unique for every event in an account.
        # It is used to group tickets together if the user has saved multiple tickets
        # for the same event. It can be at most 64 characters. If provided, the grouping
        # will be stable. Be wary of unintentional collision to avoid grouping tickets
        # that should not be grouped. If you use only one class per event, you can
        # simply set this to the `classId` (with or without the issuer ID portion). If
        # not provided, the platform will attempt to use other data to group tickets (
        # potentially unstable).
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # Required. The name of the event, such as "LA Dodgers at SF Giants".
        # Corresponds to the JSON property `eventName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :event_name
      
        # The fine print, terms, or conditions of the ticket.
        # Corresponds to the JSON property `finePrint`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :fine_print
      
        # The label to use for the gate value (`eventTicketObject.seatInfo.gate`) on the
        # card detail view. Each available option maps to a set of localized strings, so
        # that translations are shown to the user based on their locale. Both `gateLabel`
        # and `customGateLabel` may not be set. If neither is set, the label will
        # default to "Gate", localized. If the gate field is unset, this label will not
        # be used.
        # Corresponds to the JSON property `gateLabel`
        # @return [String]
        attr_accessor :gate_label
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # The URI of your application's home page. Populating the URI in this field
        # results in the exact same behavior as populating an URI in linksModuleData (
        # when an object is rendered, a link to the homepage is shown in what would
        # usually be thought of as the linksModuleData section of the object).
        # Corresponds to the JSON property `homepageUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :homepage_uri
      
        # Required. The unique identifier for a class. This ID must be unique across all
        # classes from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # Your unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Required. The issuer name. Recommended maximum length is 20 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `issuerName`
        # @return [String]
        attr_accessor :issuer_name
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#eventTicketClass"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the object, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Translated strings for the issuer_name. Recommended maximum length is 20
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedIssuerName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_issuer_name
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :logo
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and object
        # level `smartTapRedemptionLevel` fields must also be set up correctly in order
        # for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # The review comments set by the platform when a class is marked `approved` or `
        # rejected`.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::WalletobjectsV1::Review]
        attr_accessor :review
      
        # Required. The status of the class. This field can be set to `draft` or `
        # underReview` using the insert, patch, or update API calls. Once the review
        # state is changed from `draft` it may not be changed back to `draft`. You
        # should keep this field to `draft` when the class is under development. A `
        # draft` class cannot be used to create any object. You should set this field to
        # `underReview` when you believe the class is ready for use. The platform will
        # automatically set this field to `approved` and it can be immediately used to
        # create or migrate objects. When updating an already `approved` class you
        # should keep setting this field to `underReview`.
        # Corresponds to the JSON property `reviewStatus`
        # @return [String]
        attr_accessor :review_status
      
        # The label to use for the row value (`eventTicketObject.seatInfo.row`) on the
        # card detail view. Each available option maps to a set of localized strings, so
        # that translations are shown to the user based on their locale. Both `rowLabel`
        # and `customRowLabel` may not be set. If neither is set, the label will default
        # to "Row", localized. If the row field is unset, this label will not be used.
        # Corresponds to the JSON property `rowLabel`
        # @return [String]
        attr_accessor :row_label
      
        # The label to use for the seat value (`eventTicketObject.seatInfo.seat`) on the
        # card detail view. Each available option maps to a set of localized strings, so
        # that translations are shown to the user based on their locale. Both `seatLabel`
        # and `customSeatLabel` may not be set. If neither is set, the label will
        # default to "Seat", localized. If the seat field is unset, this label will not
        # be used.
        # Corresponds to the JSON property `seatLabel`
        # @return [String]
        attr_accessor :seat_label
      
        # The label to use for the section value (`eventTicketObject.seatInfo.section`)
        # on the card detail view. Each available option maps to a set of localized
        # strings, so that translations are shown to the user based on their locale.
        # Both `sectionLabel` and `customSectionLabel` may not be set. If neither is set,
        # the label will default to "Section", localized. If the section field is unset,
        # this label will not be used.
        # Corresponds to the JSON property `sectionLabel`
        # @return [String]
        attr_accessor :section_label
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # Event venue details.
        # Corresponds to the JSON property `venue`
        # @return [Google::Apis::WalletobjectsV1::EventVenue]
        attr_accessor :venue
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # View Unlock Requirement options for the event ticket.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_logo
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wordMark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :word_mark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_multiple_users_per_object = args[:allow_multiple_users_per_object] if args.key?(:allow_multiple_users_per_object)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @confirmation_code_label = args[:confirmation_code_label] if args.key?(:confirmation_code_label)
          @country_code = args[:country_code] if args.key?(:country_code)
          @custom_confirmation_code_label = args[:custom_confirmation_code_label] if args.key?(:custom_confirmation_code_label)
          @custom_gate_label = args[:custom_gate_label] if args.key?(:custom_gate_label)
          @custom_row_label = args[:custom_row_label] if args.key?(:custom_row_label)
          @custom_seat_label = args[:custom_seat_label] if args.key?(:custom_seat_label)
          @custom_section_label = args[:custom_section_label] if args.key?(:custom_section_label)
          @date_time = args[:date_time] if args.key?(:date_time)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_name = args[:event_name] if args.key?(:event_name)
          @fine_print = args[:fine_print] if args.key?(:fine_print)
          @gate_label = args[:gate_label] if args.key?(:gate_label)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @issuer_name = args[:issuer_name] if args.key?(:issuer_name)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @localized_issuer_name = args[:localized_issuer_name] if args.key?(:localized_issuer_name)
          @locations = args[:locations] if args.key?(:locations)
          @logo = args[:logo] if args.key?(:logo)
          @messages = args[:messages] if args.key?(:messages)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @review = args[:review] if args.key?(:review)
          @review_status = args[:review_status] if args.key?(:review_status)
          @row_label = args[:row_label] if args.key?(:row_label)
          @seat_label = args[:seat_label] if args.key?(:seat_label)
          @section_label = args[:section_label] if args.key?(:section_label)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @venue = args[:venue] if args.key?(:venue)
          @version = args[:version] if args.key?(:version)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
          @wide_logo = args[:wide_logo] if args.key?(:wide_logo)
          @word_mark = args[:word_mark] if args.key?(:word_mark)
        end
      end
      
      # 
      class EventTicketClassAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated EventTicketClass resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::EventTicketClass]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class EventTicketClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::EventTicketClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class EventTicketObject
        include Google::Apis::Core::Hashable
      
        # Optional information about the partner app link.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The barcode type and value.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format issuer ID.identifier where the former is issued by
        # Google and latter is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # A copy of the inherited fields of the parent class. These fields are retrieved
        # during a GET.
        # Corresponds to the JSON property `classReference`
        # @return [Google::Apis::WalletobjectsV1::EventTicketClass]
        attr_accessor :class_reference
      
        # Indicates if notifications should explicitly be suppressed. If this field is
        # set to true, regardless of the `messages` field, expiration notifications to
        # the user will be suppressed. By default, this field is set to false. Currently,
        # this can only be set for offers.
        # Corresponds to the JSON property `disableExpirationNotification`
        # @return [Boolean]
        attr_accessor :disable_expiration_notification
        alias_method :disable_expiration_notification?, :disable_expiration_notification
      
        # The face value of the ticket, matching what would be printed on a physical
        # version of the ticket.
        # Corresponds to the JSON property `faceValue`
        # @return [Google::Apis::WalletobjectsV1::Money]
        attr_accessor :face_value
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Whether this object is currently linked to a single device. This field is set
        # by the platform when a user saves the object, linking it to their device.
        # Intended for use by select partners. Contact support for additional
        # information.
        # Corresponds to the JSON property `hasLinkedDevice`
        # @return [Boolean]
        attr_accessor :has_linked_device
        alias_method :has_linked_device?, :has_linked_device
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # The unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#eventTicketObject"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of offer objects linked to this event ticket. The offer objects must
        # already exist. Offer object IDs should follow the format issuer ID. identifier
        # where the former is issued by Google and latter is chosen by you.
        # Corresponds to the JSON property `linkedOfferIds`
        # @return [Array<String>]
        attr_accessor :linked_offer_ids
      
        # Links module data. If links module data is also defined on the class, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # Reservation details for this ticket. This is expected to be shared amongst all
        # tickets that were purchased in the same order.
        # Corresponds to the JSON property `reservationInfo`
        # @return [Google::Apis::WalletobjectsV1::EventReservationInfo]
        attr_accessor :reservation_info
      
        # The rotating barcode type and value.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # Seating details for this ticket.
        # Corresponds to the JSON property `seatInfo`
        # @return [Google::Apis::WalletobjectsV1::EventSeat]
        attr_accessor :seat_info
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # Required. The state of the object. This field is used to determine how an
        # object is displayed in the app. For example, an `inactive` object is moved to
        # the "Expired passes" section.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # Name of the ticket holder, if the ticket is assigned to a person. E.g. "John
        # Doe" or "Jane Doe".
        # Corresponds to the JSON property `ticketHolderName`
        # @return [String]
        attr_accessor :ticket_holder_name
      
        # The number of the ticket. This can be a unique identifier across all tickets
        # in an issuer's system, all tickets for the event (e.g. XYZ1234512345), or all
        # tickets in the order (1, 2, 3, etc.).
        # Corresponds to the JSON property `ticketNumber`
        # @return [String]
        attr_accessor :ticket_number
      
        # The type of the ticket, such as "Adult" or "Child", or "VIP" or "Standard".
        # Corresponds to the JSON property `ticketType`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :ticket_type
      
        # The time period this object will be `active` and object can be used. An object'
        # s state will be changed to `expired` when this time period has passed.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @barcode = args[:barcode] if args.key?(:barcode)
          @class_id = args[:class_id] if args.key?(:class_id)
          @class_reference = args[:class_reference] if args.key?(:class_reference)
          @disable_expiration_notification = args[:disable_expiration_notification] if args.key?(:disable_expiration_notification)
          @face_value = args[:face_value] if args.key?(:face_value)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_linked_device = args[:has_linked_device] if args.key?(:has_linked_device)
          @has_users = args[:has_users] if args.key?(:has_users)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @kind = args[:kind] if args.key?(:kind)
          @linked_offer_ids = args[:linked_offer_ids] if args.key?(:linked_offer_ids)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @reservation_info = args[:reservation_info] if args.key?(:reservation_info)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @seat_info = args[:seat_info] if args.key?(:seat_info)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @ticket_holder_name = args[:ticket_holder_name] if args.key?(:ticket_holder_name)
          @ticket_number = args[:ticket_number] if args.key?(:ticket_number)
          @ticket_type = args[:ticket_type] if args.key?(:ticket_type)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class EventTicketObjectAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated EventTicketObject resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::EventTicketObject]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class EventTicketObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::EventTicketObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class EventVenue
        include Google::Apis::Core::Hashable
      
        # The address of the venue, such as "24 Willie Mays Plaza\nSan Francisco, CA
        # 94107". Address lines are separated by line feed (`\n`) characters. This is
        # required.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :address
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#eventVenue"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the venue, such as "AT&T Park". This is required.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Indicates that the issuer would like Google Wallet to send expiry
      # notifications 2 days prior to the card expiration.
      class ExpiryNotification
        include Google::Apis::Core::Hashable
      
        # Indicates if the object needs to have expiry notification enabled.
        # Corresponds to the JSON property `enableNotification`
        # @return [Boolean]
        attr_accessor :enable_notification
        alias_method :enable_notification?, :enable_notification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_notification = args[:enable_notification] if args.key?(:enable_notification)
        end
      end
      
      # Reference definition to use with field overrides.
      class FieldReference
        include Google::Apis::Core::Hashable
      
        # Only valid if the `fieldPath` references a date field. Chooses how the date
        # field will be formatted and displayed in the UI.
        # Corresponds to the JSON property `dateFormat`
        # @return [String]
        attr_accessor :date_format
      
        # Path to the field being referenced, prefixed with "object" or "class" and
        # separated with dots. For example, it may be the string "object.purchaseDetails.
        # purchasePrice".
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_format = args[:date_format] if args.key?(:date_format)
          @field_path = args[:field_path] if args.key?(:field_path)
        end
      end
      
      # Custom field selector to use with field overrides.
      class FieldSelector
        include Google::Apis::Core::Hashable
      
        # If more than one reference is supplied, then the first one that references a
        # non-empty field will be displayed.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::WalletobjectsV1::FieldReference>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # 
      class FirstRowOption
        include Google::Apis::Core::Hashable
      
        # Custom field selector to use with field overrides.
        # Corresponds to the JSON property `fieldOption`
        # @return [Google::Apis::WalletobjectsV1::FieldSelector]
        attr_accessor :field_option
      
        # 
        # Corresponds to the JSON property `transitOption`
        # @return [String]
        attr_accessor :transit_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_option = args[:field_option] if args.key?(:field_option)
          @transit_option = args[:transit_option] if args.key?(:transit_option)
        end
      end
      
      # 
      class FlightCarrier
        include Google::Apis::Core::Hashable
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `airlineAllianceLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :airline_alliance_logo
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `airlineLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :airline_logo
      
        # A localized name of the airline specified by carrierIataCode. If unset, `
        # issuer_name` or `localized_issuer_name` from `FlightClass` will be used for
        # display purposes. eg: "Swiss Air" for "LX"
        # Corresponds to the JSON property `airlineName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :airline_name
      
        # Two character IATA airline code of the marketing carrier (as opposed to
        # operating carrier). Exactly one of this or `carrierIcaoCode` needs to be
        # provided for `carrier` and `operatingCarrier`. eg: "LX" for Swiss Air
        # Corresponds to the JSON property `carrierIataCode`
        # @return [String]
        attr_accessor :carrier_iata_code
      
        # Three character ICAO airline code of the marketing carrier (as opposed to
        # operating carrier). Exactly one of this or `carrierIataCode` needs to be
        # provided for `carrier` and `operatingCarrier`. eg: "EZY" for Easy Jet
        # Corresponds to the JSON property `carrierIcaoCode`
        # @return [String]
        attr_accessor :carrier_icao_code
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#flightCarrier"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideAirlineLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_airline_logo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airline_alliance_logo = args[:airline_alliance_logo] if args.key?(:airline_alliance_logo)
          @airline_logo = args[:airline_logo] if args.key?(:airline_logo)
          @airline_name = args[:airline_name] if args.key?(:airline_name)
          @carrier_iata_code = args[:carrier_iata_code] if args.key?(:carrier_iata_code)
          @carrier_icao_code = args[:carrier_icao_code] if args.key?(:carrier_icao_code)
          @kind = args[:kind] if args.key?(:kind)
          @wide_airline_logo = args[:wide_airline_logo] if args.key?(:wide_airline_logo)
        end
      end
      
      # 
      class FlightClass
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
        # Corresponds to the JSON property `allowMultipleUsersPerObject`
        # @return [Boolean]
        attr_accessor :allow_multiple_users_per_object
        alias_method :allow_multiple_users_per_object?, :allow_multiple_users_per_object
      
        # Policies for boarding and seating. These will inform which labels will be
        # shown to users.
        # Corresponds to the JSON property `boardingAndSeatingPolicy`
        # @return [Google::Apis::WalletobjectsV1::BoardingAndSeatingPolicy]
        attr_accessor :boarding_and_seating_policy
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # Country code used to display the card's country (when the user is not in that
        # country), as well as to display localized content when content is not
        # available in the user's locale.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Required. Destination airport.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::WalletobjectsV1::AirportInfo]
        attr_accessor :destination
      
        # Identifies whether this class supports Smart Tap. The `redemptionIssuers` and
        # object level `smartTapRedemptionLevel` fields must also be set up correctly in
        # order for a pass to support Smart Tap.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # Required. Information about the flight carrier and number.
        # Corresponds to the JSON property `flightHeader`
        # @return [Google::Apis::WalletobjectsV1::FlightHeader]
        attr_accessor :flight_header
      
        # Status of this flight. If unset, Google will compute status based on data from
        # other sources, such as FlightStats, etc. Note: Google-computed status will not
        # be returned in API responses.
        # Corresponds to the JSON property `flightStatus`
        # @return [String]
        attr_accessor :flight_status
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # The URI of your application's home page. Populating the URI in this field
        # results in the exact same behavior as populating an URI in linksModuleData (
        # when an object is rendered, a link to the homepage is shown in what would
        # usually be thought of as the linksModuleData section of the object).
        # Corresponds to the JSON property `homepageUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :homepage_uri
      
        # Required. The unique identifier for a class. This ID must be unique across all
        # classes from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # Your unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Required. The issuer name. Recommended maximum length is 20 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `issuerName`
        # @return [String]
        attr_accessor :issuer_name
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#flightClass"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If this field is present, boarding passes served to a user's device will
        # always be in this language. Represents the BCP 47 language tag. Example values
        # are "en-US", "en-GB", "de", or "de-AT".
        # Corresponds to the JSON property `languageOverride`
        # @return [String]
        attr_accessor :language_override
      
        # Links module data. If links module data is also defined on the object, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # The boarding time as it would be printed on the boarding pass. This is an ISO
        # 8601 extended format date/time without an offset. Time may be specified up to
        # millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/
        # time at the airport (not a UTC time). Google will reject the request if UTC
        # offset is provided. Time zones will be calculated by Google based on departure
        # airport. If this is not set, Google will set it based on data from other
        # sources.
        # Corresponds to the JSON property `localBoardingDateTime`
        # @return [String]
        attr_accessor :local_boarding_date_time
      
        # The estimated time the aircraft plans to reach the destination gate (not the
        # runway) or the actual time it reached the gate. This field should be set if at
        # least one of the below is true: - It differs from the scheduled time. Google
        # will use it to calculate the delay. - The aircraft already arrived at the gate.
        # Google will use it to inform the user that the flight has arrived at the gate.
        # This is an ISO 8601 extended format date/time without an offset. Time may be
        # specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should
        # be the local date/time at the airport (not a UTC time). Google will reject the
        # request if UTC offset is provided. Time zones will be calculated by Google
        # based on arrival airport. If this is not set, Google will set it based on data
        # from other sources.
        # Corresponds to the JSON property `localEstimatedOrActualArrivalDateTime`
        # @return [String]
        attr_accessor :local_estimated_or_actual_arrival_date_time
      
        # The estimated time the aircraft plans to pull from the gate or the actual time
        # the aircraft already pulled from the gate. Note: This is not the runway time.
        # This field should be set if at least one of the below is true: - It differs
        # from the scheduled time. Google will use it to calculate the delay. - The
        # aircraft already pulled from the gate. Google will use it to inform the user
        # when the flight actually departed. This is an ISO 8601 extended format date/
        # time without an offset. Time may be specified up to millisecond precision. eg:
        # `2027-03-05T06:30:00` This should be the local date/time at the airport (not a
        # UTC time). Google will reject the request if UTC offset is provided. Time
        # zones will be calculated by Google based on departure airport. If this is not
        # set, Google will set it based on data from other sources.
        # Corresponds to the JSON property `localEstimatedOrActualDepartureDateTime`
        # @return [String]
        attr_accessor :local_estimated_or_actual_departure_date_time
      
        # The gate closing time as it would be printed on the boarding pass. Do not set
        # this field if you do not want to print it in the boarding pass. This is an ISO
        # 8601 extended format date/time without an offset. Time may be specified up to
        # millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/
        # time at the airport (not a UTC time). Google will reject the request if UTC
        # offset is provided. Time zones will be calculated by Google based on departure
        # airport.
        # Corresponds to the JSON property `localGateClosingDateTime`
        # @return [String]
        attr_accessor :local_gate_closing_date_time
      
        # The scheduled time the aircraft plans to reach the destination gate (not the
        # runway). Note: This field should not change too close to the flight time. For
        # updates to departure times (delays, etc), please set `
        # localEstimatedOrActualArrivalDateTime`. This is an ISO 8601 extended format
        # date/time without an offset. Time may be specified up to millisecond precision.
        # eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (
        # not a UTC time). Google will reject the request if UTC offset is provided.
        # Time zones will be calculated by Google based on arrival airport. If this is
        # not set, Google will set it based on data from other sources.
        # Corresponds to the JSON property `localScheduledArrivalDateTime`
        # @return [String]
        attr_accessor :local_scheduled_arrival_date_time
      
        # Required. The scheduled date and time when the aircraft is expected to depart
        # the gate (not the runway) Note: This field should not change too close to the
        # departure time. For updates to departure times (delays, etc), please set `
        # localEstimatedOrActualDepartureDateTime`. This is an ISO 8601 extended format
        # date/time without an offset. Time may be specified up to millisecond precision.
        # eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (
        # not a UTC time). Google will reject the request if UTC offset is provided.
        # Time zones will be calculated by Google based on departure airport.
        # Corresponds to the JSON property `localScheduledDepartureDateTime`
        # @return [String]
        attr_accessor :local_scheduled_departure_date_time
      
        # Translated strings for the issuer_name. Recommended maximum length is 20
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedIssuerName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_issuer_name
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # Required. Origin airport.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::WalletobjectsV1::AirportInfo]
        attr_accessor :origin
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and object
        # level `smartTapRedemptionLevel` fields must also be set up correctly in order
        # for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # The review comments set by the platform when a class is marked `approved` or `
        # rejected`.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::WalletobjectsV1::Review]
        attr_accessor :review
      
        # Required. The status of the class. This field can be set to `draft` or `
        # underReview` using the insert, patch, or update API calls. Once the review
        # state is changed from `draft` it may not be changed back to `draft`. You
        # should keep this field to `draft` when the class is under development. A `
        # draft` class cannot be used to create any object. You should set this field to
        # `underReview` when you believe the class is ready for use. The platform will
        # automatically set this field to `approved` and it can be immediately used to
        # create or migrate objects. When updating an already `approved` class you
        # should keep setting this field to `underReview`.
        # Corresponds to the JSON property `reviewStatus`
        # @return [String]
        attr_accessor :review_status
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # View Unlock Requirement options for the boarding pass.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wordMark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :word_mark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_multiple_users_per_object = args[:allow_multiple_users_per_object] if args.key?(:allow_multiple_users_per_object)
          @boarding_and_seating_policy = args[:boarding_and_seating_policy] if args.key?(:boarding_and_seating_policy)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @country_code = args[:country_code] if args.key?(:country_code)
          @destination = args[:destination] if args.key?(:destination)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @flight_header = args[:flight_header] if args.key?(:flight_header)
          @flight_status = args[:flight_status] if args.key?(:flight_status)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @issuer_name = args[:issuer_name] if args.key?(:issuer_name)
          @kind = args[:kind] if args.key?(:kind)
          @language_override = args[:language_override] if args.key?(:language_override)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @local_boarding_date_time = args[:local_boarding_date_time] if args.key?(:local_boarding_date_time)
          @local_estimated_or_actual_arrival_date_time = args[:local_estimated_or_actual_arrival_date_time] if args.key?(:local_estimated_or_actual_arrival_date_time)
          @local_estimated_or_actual_departure_date_time = args[:local_estimated_or_actual_departure_date_time] if args.key?(:local_estimated_or_actual_departure_date_time)
          @local_gate_closing_date_time = args[:local_gate_closing_date_time] if args.key?(:local_gate_closing_date_time)
          @local_scheduled_arrival_date_time = args[:local_scheduled_arrival_date_time] if args.key?(:local_scheduled_arrival_date_time)
          @local_scheduled_departure_date_time = args[:local_scheduled_departure_date_time] if args.key?(:local_scheduled_departure_date_time)
          @localized_issuer_name = args[:localized_issuer_name] if args.key?(:localized_issuer_name)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @origin = args[:origin] if args.key?(:origin)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @review = args[:review] if args.key?(:review)
          @review_status = args[:review_status] if args.key?(:review_status)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @version = args[:version] if args.key?(:version)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
          @word_mark = args[:word_mark] if args.key?(:word_mark)
        end
      end
      
      # 
      class FlightClassAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated FlightClass resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::FlightClass]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class FlightClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::FlightClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class FlightHeader
        include Google::Apis::Core::Hashable
      
        # Information about airline carrier. This is a required property of `
        # flightHeader`.
        # Corresponds to the JSON property `carrier`
        # @return [Google::Apis::WalletobjectsV1::FlightCarrier]
        attr_accessor :carrier
      
        # The flight number without IATA carrier code. This field should contain only
        # digits. This is a required property of `flightHeader`. eg: "123"
        # Corresponds to the JSON property `flightNumber`
        # @return [String]
        attr_accessor :flight_number
      
        # Override value to use for flight number. The default value used for display
        # purposes is carrier + flight_number. If a different value needs to be shown to
        # passengers, use this field to override the default behavior. eg: "XX1234 /
        # YY576"
        # Corresponds to the JSON property `flightNumberDisplayOverride`
        # @return [String]
        attr_accessor :flight_number_display_override
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#flightHeader"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information about operating airline carrier.
        # Corresponds to the JSON property `operatingCarrier`
        # @return [Google::Apis::WalletobjectsV1::FlightCarrier]
        attr_accessor :operating_carrier
      
        # The flight number used by the operating carrier without IATA carrier code.
        # This field should contain only digits. eg: "234"
        # Corresponds to the JSON property `operatingFlightNumber`
        # @return [String]
        attr_accessor :operating_flight_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @flight_number = args[:flight_number] if args.key?(:flight_number)
          @flight_number_display_override = args[:flight_number_display_override] if args.key?(:flight_number_display_override)
          @kind = args[:kind] if args.key?(:kind)
          @operating_carrier = args[:operating_carrier] if args.key?(:operating_carrier)
          @operating_flight_number = args[:operating_flight_number] if args.key?(:operating_flight_number)
        end
      end
      
      # 
      class FlightObject
        include Google::Apis::Core::Hashable
      
        # Optional information about the partner app link.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The barcode type and value.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Passenger specific information about boarding and seating.
        # Corresponds to the JSON property `boardingAndSeatingInfo`
        # @return [Google::Apis::WalletobjectsV1::BoardingAndSeatingInfo]
        attr_accessor :boarding_and_seating_info
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format issuer ID.identifier where the former is issued by
        # Google and latter is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # A copy of the inherited fields of the parent class. These fields are retrieved
        # during a GET.
        # Corresponds to the JSON property `classReference`
        # @return [Google::Apis::WalletobjectsV1::FlightClass]
        attr_accessor :class_reference
      
        # Indicates if notifications should explicitly be suppressed. If this field is
        # set to true, regardless of the `messages` field, expiration notifications to
        # the user will be suppressed. By default, this field is set to false. Currently,
        # this can only be set for Flights.
        # Corresponds to the JSON property `disableExpirationNotification`
        # @return [Boolean]
        attr_accessor :disable_expiration_notification
        alias_method :disable_expiration_notification?, :disable_expiration_notification
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Whether this object is currently linked to a single device. This field is set
        # by the platform when a user saves the object, linking it to their device.
        # Intended for use by select partners. Contact support for additional
        # information.
        # Corresponds to the JSON property `hasLinkedDevice`
        # @return [Boolean]
        attr_accessor :has_linked_device
        alias_method :has_linked_device?, :has_linked_device
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # The unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#flightObject"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the class, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # Required. Passenger name as it would appear on the boarding pass. eg: "Dave M
        # Gahan" or "Gahan/Dave" or "GAHAN/DAVEM"
        # Corresponds to the JSON property `passengerName`
        # @return [String]
        attr_accessor :passenger_name
      
        # Required. Information about flight reservation.
        # Corresponds to the JSON property `reservationInfo`
        # @return [Google::Apis::WalletobjectsV1::ReservationInfo]
        attr_accessor :reservation_info
      
        # The rotating barcode type and value.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `securityProgramLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :security_program_logo
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # Required. The state of the object. This field is used to determine how an
        # object is displayed in the app. For example, an `inactive` object is moved to
        # the "Expired passes" section.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # The time period this object will be `active` and object can be used. An object'
        # s state will be changed to `expired` when this time period has passed.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @barcode = args[:barcode] if args.key?(:barcode)
          @boarding_and_seating_info = args[:boarding_and_seating_info] if args.key?(:boarding_and_seating_info)
          @class_id = args[:class_id] if args.key?(:class_id)
          @class_reference = args[:class_reference] if args.key?(:class_reference)
          @disable_expiration_notification = args[:disable_expiration_notification] if args.key?(:disable_expiration_notification)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_linked_device = args[:has_linked_device] if args.key?(:has_linked_device)
          @has_users = args[:has_users] if args.key?(:has_users)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @passenger_name = args[:passenger_name] if args.key?(:passenger_name)
          @reservation_info = args[:reservation_info] if args.key?(:reservation_info)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @security_program_logo = args[:security_program_logo] if args.key?(:security_program_logo)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class FlightObjectAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated FlightObject resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::FlightObject]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class FlightObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::FlightObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class FrequentFlyerInfo
        include Google::Apis::Core::Hashable
      
        # Frequent flyer number. Required for each nested object of kind `walletobjects#
        # frequentFlyerInfo`.
        # Corresponds to the JSON property `frequentFlyerNumber`
        # @return [String]
        attr_accessor :frequent_flyer_number
      
        # Frequent flyer program name. eg: "Lufthansa Miles & More"
        # Corresponds to the JSON property `frequentFlyerProgramName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :frequent_flyer_program_name
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#frequentFlyerInfo"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequent_flyer_number = args[:frequent_flyer_number] if args.key?(:frequent_flyer_number)
          @frequent_flyer_program_name = args[:frequent_flyer_program_name] if args.key?(:frequent_flyer_program_name)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Generic Class
      class GenericClass
        include Google::Apis::Core::Hashable
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # Available only to Smart Tap enabled partners. Contact support for additional
        # guidance.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # Required. The unique identifier for the class. This ID must be unique across
        # all from an issuer. This value needs to follow the format `issuerID.identifier`
        # where `issuerID` is issued by Google and `identifier` is chosen by you. The
        # unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. If `imageModulesData` is also defined on the object, both
        # will be displayed. Only one of the image from class and one from object level
        # will be rendered when both set.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Links module data. If `linksModuleData` is also defined on the object, both
        # will be displayed. The maximum number of these fields displayed is 10 from
        # class and 10 from object.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and object
        # level `smartTapRedemptionLevel` fields must also be set up correctly in order
        # for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # Text module data. If `textModulesData` is also defined on the object, both
        # will be displayed. The maximum number of these fields displayed is 10 from
        # class and 10 from object.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # View Unlock Requirement options for the generic pass.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
        end
      end
      
      # List response which contains the list of all generic classes for a given
      # issuer ID.
      class GenericClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::GenericClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Generic Object Next ID: 121
      class GenericObject
        include Google::Apis::Core::Hashable
      
        # Information about the partner app link. The maximum number of these fields
        # displayed is 10.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The barcode type and value. If pass does not have a barcode, we can allow the
        # issuer to set Barcode.alternate_text and display just that.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Required. The header of the pass. This is usually the Business name such as "
        # XXX Gym", "AAA Insurance". This field is required and appears in the header
        # row at the very top of the pass.
        # Corresponds to the JSON property `cardTitle`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :card_title
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format `issuerID.identifier` where `issuerID` is issued by
        # Google and `identifier` is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # Specify which `GenericType` the card belongs to.
        # Corresponds to the JSON property `genericType`
        # @return [String]
        attr_accessor :generic_type
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Required. The title of the pass, such as "50% off coupon" or "Library card" or
        # "Voucher". This field is required and appears in the title row of the pass
        # detail view.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :header
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set, the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used and if logo is not set, a color would be chosen by Google.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value needs to follow the format `issuerID.
        # identifier` where `issuerID` is issued by Google and `identifier` is chosen by
        # you. The unique identifier can only include alphanumeric characters, `.`, `_`,
        # or `-`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. Only one of the image from class and one from object level
        # will be rendered when both set.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Links module data. If `linksModuleData` is also defined on the class, both
        # will be displayed. The maximum number of these fields displayed is 10 from
        # class and 10 from object.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :logo
      
        # Indicates if the object needs to have notification enabled. We support only
        # one of ExpiryNotification/UpcomingNotification. `expiryNotification` takes
        # precedence over `upcomingNotification`. In other words if `expiryNotification`
        # is set, we ignore the `upcomingNotification` field.
        # Corresponds to the JSON property `notifications`
        # @return [Google::Apis::WalletobjectsV1::Notifications]
        attr_accessor :notifications
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # The rotating barcode settings/details.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # The state of the object. This field is used to determine how an object is
        # displayed in the app. For example, an `inactive` object is moved to the "
        # Expired passes" section. If this is not provided, the object would be
        # considered `ACTIVE`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The title label of the pass, such as location where this pass can be used.
        # Appears right above the title in the title row in the pass detail view.
        # Corresponds to the JSON property `subheader`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :subheader
      
        # Text module data. If `textModulesData` is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from class
        # and 10 from object.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # The time period this object will be considered valid or usable. When the time
        # period is passed, the object will be considered expired, which will affect the
        # rendering on user's devices.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_logo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @barcode = args[:barcode] if args.key?(:barcode)
          @card_title = args[:card_title] if args.key?(:card_title)
          @class_id = args[:class_id] if args.key?(:class_id)
          @generic_type = args[:generic_type] if args.key?(:generic_type)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_users = args[:has_users] if args.key?(:has_users)
          @header = args[:header] if args.key?(:header)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @logo = args[:logo] if args.key?(:logo)
          @notifications = args[:notifications] if args.key?(:notifications)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @subheader = args[:subheader] if args.key?(:subheader)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @wide_logo = args[:wide_logo] if args.key?(:wide_logo)
        end
      end
      
      # List response which contains the list of all generic objects for a given
      # issuer ID.
      class GenericObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::GenericObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class GiftCardClass
        include Google::Apis::Core::Hashable
      
        # Determines whether the merchant supports gift card redemption using barcode.
        # If true, app displays a barcode for the gift card on the Gift card details
        # screen. If false, a barcode is not displayed.
        # Corresponds to the JSON property `allowBarcodeRedemption`
        # @return [Boolean]
        attr_accessor :allow_barcode_redemption
        alias_method :allow_barcode_redemption?, :allow_barcode_redemption
      
        # Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
        # Corresponds to the JSON property `allowMultipleUsersPerObject`
        # @return [Boolean]
        attr_accessor :allow_multiple_users_per_object
        alias_method :allow_multiple_users_per_object?, :allow_multiple_users_per_object
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # The label to display for the card number, such as "Card Number".
        # Corresponds to the JSON property `cardNumberLabel`
        # @return [String]
        attr_accessor :card_number_label
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # Country code used to display the card's country (when the user is not in that
        # country), as well as to display localized content when content is not
        # available in the user's locale.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Identifies whether this class supports Smart Tap. The `redemptionIssuers` and
        # object level `smartTapRedemptionLevel` fields must also be set up correctly in
        # order for a pass to support Smart Tap.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # The label to display for event number, such as "Target Event #".
        # Corresponds to the JSON property `eventNumberLabel`
        # @return [String]
        attr_accessor :event_number_label
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # The URI of your application's home page. Populating the URI in this field
        # results in the exact same behavior as populating an URI in linksModuleData (
        # when an object is rendered, a link to the homepage is shown in what would
        # usually be thought of as the linksModuleData section of the object).
        # Corresponds to the JSON property `homepageUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :homepage_uri
      
        # Required. The unique identifier for a class. This ID must be unique across all
        # classes from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # Your unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Required. The issuer name. Recommended maximum length is 20 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `issuerName`
        # @return [String]
        attr_accessor :issuer_name
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#giftCardClass"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the object, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Translated strings for the card_number_label.
        # Corresponds to the JSON property `localizedCardNumberLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_card_number_label
      
        # Translated strings for the event_number_label.
        # Corresponds to the JSON property `localizedEventNumberLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_event_number_label
      
        # Translated strings for the issuer_name. Recommended maximum length is 20
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedIssuerName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_issuer_name
      
        # Translated strings for the merchant_name. The app may display an ellipsis
        # after the first 20 characters to ensure full string is displayed on smaller
        # screens.
        # Corresponds to the JSON property `localizedMerchantName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_merchant_name
      
        # Translated strings for the pin_label.
        # Corresponds to the JSON property `localizedPinLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_pin_label
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # Merchant name, such as "Adam's Apparel". The app may display an ellipsis after
        # the first 20 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `merchantName`
        # @return [String]
        attr_accessor :merchant_name
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # The label to display for the PIN, such as "4-digit PIN".
        # Corresponds to the JSON property `pinLabel`
        # @return [String]
        attr_accessor :pin_label
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `programLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :program_logo
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and object
        # level `smartTapRedemptionLevel` fields must also be set up correctly in order
        # for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # The review comments set by the platform when a class is marked `approved` or `
        # rejected`.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::WalletobjectsV1::Review]
        attr_accessor :review
      
        # Required. The status of the class. This field can be set to `draft` or `
        # underReview` using the insert, patch, or update API calls. Once the review
        # state is changed from `draft` it may not be changed back to `draft`. You
        # should keep this field to `draft` when the class is under development. A `
        # draft` class cannot be used to create any object. You should set this field to
        # `underReview` when you believe the class is ready for use. The platform will
        # automatically set this field to `approved` and it can be immediately used to
        # create or migrate objects. When updating an already `approved` class you
        # should keep setting this field to `underReview`.
        # Corresponds to the JSON property `reviewStatus`
        # @return [String]
        attr_accessor :review_status
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # View Unlock Requirement options for the gift card.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideProgramLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_program_logo
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wordMark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :word_mark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_barcode_redemption = args[:allow_barcode_redemption] if args.key?(:allow_barcode_redemption)
          @allow_multiple_users_per_object = args[:allow_multiple_users_per_object] if args.key?(:allow_multiple_users_per_object)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @card_number_label = args[:card_number_label] if args.key?(:card_number_label)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @country_code = args[:country_code] if args.key?(:country_code)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @event_number_label = args[:event_number_label] if args.key?(:event_number_label)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @issuer_name = args[:issuer_name] if args.key?(:issuer_name)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @localized_card_number_label = args[:localized_card_number_label] if args.key?(:localized_card_number_label)
          @localized_event_number_label = args[:localized_event_number_label] if args.key?(:localized_event_number_label)
          @localized_issuer_name = args[:localized_issuer_name] if args.key?(:localized_issuer_name)
          @localized_merchant_name = args[:localized_merchant_name] if args.key?(:localized_merchant_name)
          @localized_pin_label = args[:localized_pin_label] if args.key?(:localized_pin_label)
          @locations = args[:locations] if args.key?(:locations)
          @merchant_name = args[:merchant_name] if args.key?(:merchant_name)
          @messages = args[:messages] if args.key?(:messages)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @pin_label = args[:pin_label] if args.key?(:pin_label)
          @program_logo = args[:program_logo] if args.key?(:program_logo)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @review = args[:review] if args.key?(:review)
          @review_status = args[:review_status] if args.key?(:review_status)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @version = args[:version] if args.key?(:version)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
          @wide_program_logo = args[:wide_program_logo] if args.key?(:wide_program_logo)
          @word_mark = args[:word_mark] if args.key?(:word_mark)
        end
      end
      
      # 
      class GiftCardClassAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated GiftCardClass resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::GiftCardClass]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class GiftCardClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::GiftCardClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class GiftCardObject
        include Google::Apis::Core::Hashable
      
        # Optional information about the partner app link.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The card's monetary balance.
        # Corresponds to the JSON property `balance`
        # @return [Google::Apis::WalletobjectsV1::Money]
        attr_accessor :balance
      
        # The date and time when the balance was last updated. Offset is required. If
        # balance is updated and this property is not provided, system will default to
        # the current time.
        # Corresponds to the JSON property `balanceUpdateTime`
        # @return [Google::Apis::WalletobjectsV1::DateTime]
        attr_accessor :balance_update_time
      
        # The barcode type and value.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Required. The card's number.
        # Corresponds to the JSON property `cardNumber`
        # @return [String]
        attr_accessor :card_number
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format issuer ID.identifier where the former is issued by
        # Google and latter is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # A copy of the inherited fields of the parent class. These fields are retrieved
        # during a GET.
        # Corresponds to the JSON property `classReference`
        # @return [Google::Apis::WalletobjectsV1::GiftCardClass]
        attr_accessor :class_reference
      
        # Indicates if notifications should explicitly be suppressed. If this field is
        # set to true, regardless of the `messages` field, expiration notifications to
        # the user will be suppressed. By default, this field is set to false. Currently,
        # this can only be set for offers.
        # Corresponds to the JSON property `disableExpirationNotification`
        # @return [Boolean]
        attr_accessor :disable_expiration_notification
        alias_method :disable_expiration_notification?, :disable_expiration_notification
      
        # The card's event number, an optional field used by some gift cards.
        # Corresponds to the JSON property `eventNumber`
        # @return [String]
        attr_accessor :event_number
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Whether this object is currently linked to a single device. This field is set
        # by the platform when a user saves the object, linking it to their device.
        # Intended for use by select partners. Contact support for additional
        # information.
        # Corresponds to the JSON property `hasLinkedDevice`
        # @return [Boolean]
        attr_accessor :has_linked_device
        alias_method :has_linked_device?, :has_linked_device
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # The unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#giftCardObject"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the class, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # The card's PIN.
        # Corresponds to the JSON property `pin`
        # @return [String]
        attr_accessor :pin
      
        # The rotating barcode type and value.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # Required. The state of the object. This field is used to determine how an
        # object is displayed in the app. For example, an `inactive` object is moved to
        # the "Expired passes" section.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # The time period this object will be `active` and object can be used. An object'
        # s state will be changed to `expired` when this time period has passed.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @balance = args[:balance] if args.key?(:balance)
          @balance_update_time = args[:balance_update_time] if args.key?(:balance_update_time)
          @barcode = args[:barcode] if args.key?(:barcode)
          @card_number = args[:card_number] if args.key?(:card_number)
          @class_id = args[:class_id] if args.key?(:class_id)
          @class_reference = args[:class_reference] if args.key?(:class_reference)
          @disable_expiration_notification = args[:disable_expiration_notification] if args.key?(:disable_expiration_notification)
          @event_number = args[:event_number] if args.key?(:event_number)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_linked_device = args[:has_linked_device] if args.key?(:has_linked_device)
          @has_users = args[:has_users] if args.key?(:has_users)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @pin = args[:pin] if args.key?(:pin)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GiftCardObjectAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated GiftCardObject resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::GiftCardObject]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class GiftCardObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::GiftCardObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class GroupingInfo
        include Google::Apis::Core::Hashable
      
        # Optional grouping ID for grouping the passes with the same ID visually
        # together. Grouping with different types of passes is allowed.
        # Corresponds to the JSON property `groupingId`
        # @return [String]
        attr_accessor :grouping_id
      
        # Optional index for sorting the passes when they are grouped with other passes.
        # Passes with lower sort index are shown before passes with higher sort index.
        # If unspecified, the value is assumed to be INT_MAX. For two passes with the
        # same sort index, the sorting behavior is undefined.
        # Corresponds to the JSON property `sortIndex`
        # @return [Fixnum]
        attr_accessor :sort_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grouping_id = args[:grouping_id] if args.key?(:grouping_id)
          @sort_index = args[:sort_index] if args.key?(:sort_index)
        end
      end
      
      # Wrapping type for Google hosted images. Next ID: 7
      class Image
        include Google::Apis::Core::Hashable
      
        # Description of the image used for accessibility.
        # Corresponds to the JSON property `contentDescription`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :content_description
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#image"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The URI for the image.
        # Corresponds to the JSON property `sourceUri`
        # @return [Google::Apis::WalletobjectsV1::ImageUri]
        attr_accessor :source_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_description = args[:content_description] if args.key?(:content_description)
          @kind = args[:kind] if args.key?(:kind)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
        end
      end
      
      # 
      class ImageModuleData
        include Google::Apis::Core::Hashable
      
        # The ID associated with an image module. This field is here to enable ease of
        # management of image modules.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `mainImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :main_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @main_image = args[:main_image] if args.key?(:main_image)
        end
      end
      
      # 
      class ImageUri
        include Google::Apis::Core::Hashable
      
        # Additional information about the image, which is unused and retained only for
        # backward compatibility.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Translated strings for the description, which are unused and retained only for
        # backward compatibility.
        # Corresponds to the JSON property `localizedDescription`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_description
      
        # The location of the image. URIs must have a scheme.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @localized_description = args[:localized_description] if args.key?(:localized_description)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class InfoModuleData
        include Google::Apis::Core::Hashable
      
        # A list of collections of labels and values. These will be displayed one after
        # the other in a singular column.
        # Corresponds to the JSON property `labelValueRows`
        # @return [Array<Google::Apis::WalletobjectsV1::LabelValueRow>]
        attr_accessor :label_value_rows
      
        # 
        # Corresponds to the JSON property `showLastUpdateTime`
        # @return [Boolean]
        attr_accessor :show_last_update_time
        alias_method :show_last_update_time?, :show_last_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_value_rows = args[:label_value_rows] if args.key?(:label_value_rows)
          @show_last_update_time = args[:show_last_update_time] if args.key?(:show_last_update_time)
        end
      end
      
      # 
      class Issuer
        include Google::Apis::Core::Hashable
      
        # Issuer contact information.
        # Corresponds to the JSON property `contactInfo`
        # @return [Google::Apis::WalletobjectsV1::IssuerContactInfo]
        attr_accessor :contact_info
      
        # URL for the issuer's home page.
        # Corresponds to the JSON property `homepageUrl`
        # @return [String]
        attr_accessor :homepage_url
      
        # The unique identifier for an issuer account. This is automatically generated
        # when the issuer is inserted.
        # Corresponds to the JSON property `issuerId`
        # @return [Fixnum]
        attr_accessor :issuer_id
      
        # The account name of the issuer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Available only to Smart Tap enabled partners. Contact support for additional
        # guidance.
        # Corresponds to the JSON property `smartTapMerchantData`
        # @return [Google::Apis::WalletobjectsV1::SmartTapMerchantData]
        attr_accessor :smart_tap_merchant_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_info = args[:contact_info] if args.key?(:contact_info)
          @homepage_url = args[:homepage_url] if args.key?(:homepage_url)
          @issuer_id = args[:issuer_id] if args.key?(:issuer_id)
          @name = args[:name] if args.key?(:name)
          @smart_tap_merchant_data = args[:smart_tap_merchant_data] if args.key?(:smart_tap_merchant_data)
        end
      end
      
      # 
      class IssuerContactInfo
        include Google::Apis::Core::Hashable
      
        # Email addresses which will receive alerts.
        # Corresponds to the JSON property `alertsEmails`
        # @return [Array<String>]
        attr_accessor :alerts_emails
      
        # The primary contact email address.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The primary contact name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The primary contact phone number.
        # Corresponds to the JSON property `phone`
        # @return [String]
        attr_accessor :phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alerts_emails = args[:alerts_emails] if args.key?(:alerts_emails)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @phone = args[:phone] if args.key?(:phone)
        end
      end
      
      # 
      class IssuerListResponse
        include Google::Apis::Core::Hashable
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::Issuer>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class IssuerToUserInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `signUpInfo`
        # @return [Google::Apis::WalletobjectsV1::SignUpInfo]
        attr_accessor :sign_up_info
      
        # Currently not used, consider deprecating.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # JSON web token for action S2AP.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @sign_up_info = args[:sign_up_info] if args.key?(:sign_up_info)
          @url = args[:url] if args.key?(:url)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class JwtInsertResponse
        include Google::Apis::Core::Hashable
      
        # Data that corresponds to the ids of the provided classes and objects in the
        # JWT. resources will only include the non-empty arrays (i.e. if the JWT only
        # includes eventTicketObjects, then that is the only field that will be present
        # in resources).
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::WalletobjectsV1::Resources]
        attr_accessor :resources
      
        # A URI that, when opened, will allow the end user to save the object(s)
        # identified in the JWT to their Google account.
        # Corresponds to the JSON property `saveUri`
        # @return [String]
        attr_accessor :save_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
          @save_uri = args[:save_uri] if args.key?(:save_uri)
        end
      end
      
      # 
      class JwtResource
        include Google::Apis::Core::Hashable
      
        # A string representing a JWT of the format described at https://developers.
        # google.com/wallet/reference/rest/v1/Jwt
        # Corresponds to the JSON property `jwt`
        # @return [String]
        attr_accessor :jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jwt = args[:jwt] if args.key?(:jwt)
        end
      end
      
      # A pair of text strings to be displayed in the details view. Note we no longer
      # display LabelValue/LabelValueRow as a table, instead a list of items.
      class LabelValue
        include Google::Apis::Core::Hashable
      
        # The label for a specific row and column. Recommended maximum is 15 characters
        # for a two-column layout and 30 characters for a one-column layout.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Translated strings for the label. Recommended maximum is 15 characters for a
        # two-column layout and 30 characters for a one-column layout.
        # Corresponds to the JSON property `localizedLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_label
      
        # Translated strings for the value. Recommended maximum is 15 characters for a
        # two-column layout and 30 characters for a one-column layout.
        # Corresponds to the JSON property `localizedValue`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_value
      
        # The value for a specific row and column. Recommended maximum is 15 characters
        # for a two-column layout and 30 characters for a one-column layout.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @localized_label = args[:localized_label] if args.key?(:localized_label)
          @localized_value = args[:localized_value] if args.key?(:localized_value)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class LabelValueRow
        include Google::Apis::Core::Hashable
      
        # A list of labels and values. These will be displayed in a singular column, one
        # after the other, not in multiple columns, despite the field name.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::WalletobjectsV1::LabelValue>]
        attr_accessor :columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
        end
      end
      
      # 
      class LatLongPoint
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#latLongPoint"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The latitude specified as any value in the range of -90.0 through +90.0, both
        # inclusive. Values outside these bounds will be rejected.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude specified in the range -180.0 through +180.0, both inclusive.
        # Values outside these bounds will be rejected.
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # 
      class LinksModuleData
        include Google::Apis::Core::Hashable
      
        # The list of URIs.
        # Corresponds to the JSON property `uris`
        # @return [Array<Google::Apis::WalletobjectsV1::Uri>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # 
      class ListTemplateOverride
        include Google::Apis::Core::Hashable
      
        # Specifies from a predefined set of options or from a reference to the field
        # what will be displayed in the first row.
        # Corresponds to the JSON property `firstRowOption`
        # @return [Google::Apis::WalletobjectsV1::FirstRowOption]
        attr_accessor :first_row_option
      
        # Custom field selector to use with field overrides.
        # Corresponds to the JSON property `secondRowOption`
        # @return [Google::Apis::WalletobjectsV1::FieldSelector]
        attr_accessor :second_row_option
      
        # Custom field selector to use with field overrides.
        # Corresponds to the JSON property `thirdRowOption`
        # @return [Google::Apis::WalletobjectsV1::FieldSelector]
        attr_accessor :third_row_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_row_option = args[:first_row_option] if args.key?(:first_row_option)
          @second_row_option = args[:second_row_option] if args.key?(:second_row_option)
          @third_row_option = args[:third_row_option] if args.key?(:third_row_option)
        end
      end
      
      # 
      class LocalizedString
        include Google::Apis::Core::Hashable
      
        # Contains the string to be displayed if no appropriate translation is available.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::WalletobjectsV1::TranslatedString]
        attr_accessor :default_value
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#localizedString"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Contains the translations for the string.
        # Corresponds to the JSON property `translatedValues`
        # @return [Array<Google::Apis::WalletobjectsV1::TranslatedString>]
        attr_accessor :translated_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @kind = args[:kind] if args.key?(:kind)
          @translated_values = args[:translated_values] if args.key?(:translated_values)
        end
      end
      
      # 
      class LoyaltyClass
        include Google::Apis::Core::Hashable
      
        # The account ID label, such as "Member ID." Recommended maximum length is 15
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `accountIdLabel`
        # @return [String]
        attr_accessor :account_id_label
      
        # The account name label, such as "Member Name." Recommended maximum length is
        # 15 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `accountNameLabel`
        # @return [String]
        attr_accessor :account_name_label
      
        # Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
        # Corresponds to the JSON property `allowMultipleUsersPerObject`
        # @return [Boolean]
        attr_accessor :allow_multiple_users_per_object
        alias_method :allow_multiple_users_per_object?, :allow_multiple_users_per_object
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # Country code used to display the card's country (when the user is not in that
        # country), as well as to display localized content when content is not
        # available in the user's locale.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Information about how a class may be discovered and instantiated from within
        # the Android Pay app. This is done by searching for a loyalty or gift card
        # program and scanning or manually entering.
        # Corresponds to the JSON property `discoverableProgram`
        # @return [Google::Apis::WalletobjectsV1::DiscoverableProgram]
        attr_accessor :discoverable_program
      
        # Identifies whether this class supports Smart Tap. The `redemptionIssuers` and
        # one of object level `smartTapRedemptionLevel`, barcode.value`, or `accountId`
        # fields must also be set up correctly in order for a pass to support Smart Tap.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # The URI of your application's home page. Populating the URI in this field
        # results in the exact same behavior as populating an URI in linksModuleData (
        # when an object is rendered, a link to the homepage is shown in what would
        # usually be thought of as the linksModuleData section of the object).
        # Corresponds to the JSON property `homepageUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :homepage_uri
      
        # Required. The unique identifier for a class. This ID must be unique across all
        # classes from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # Your unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Required. The issuer name. Recommended maximum length is 20 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `issuerName`
        # @return [String]
        attr_accessor :issuer_name
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#loyaltyClass"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the object, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Translated strings for the account_id_label. Recommended maximum length is 15
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedAccountIdLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_account_id_label
      
        # Translated strings for the account_name_label. Recommended maximum length is
        # 15 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedAccountNameLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_account_name_label
      
        # Translated strings for the issuer_name. Recommended maximum length is 20
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedIssuerName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_issuer_name
      
        # Translated strings for the program_name. The app may display an ellipsis after
        # the first 20 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedProgramName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_program_name
      
        # Translated strings for the rewards_tier. Recommended maximum length is 7
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedRewardsTier`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_rewards_tier
      
        # Translated strings for the rewards_tier_label. Recommended maximum length is 9
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedRewardsTierLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_rewards_tier_label
      
        # Translated strings for the secondary_rewards_tier.
        # Corresponds to the JSON property `localizedSecondaryRewardsTier`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_secondary_rewards_tier
      
        # Translated strings for the secondary_rewards_tier_label.
        # Corresponds to the JSON property `localizedSecondaryRewardsTierLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_secondary_rewards_tier_label
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `programLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :program_logo
      
        # Required. The program name, such as "Adam's Apparel". The app may display an
        # ellipsis after the first 20 characters to ensure full string is displayed on
        # smaller screens.
        # Corresponds to the JSON property `programName`
        # @return [String]
        attr_accessor :program_name
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and one of
        # object level `smartTapRedemptionValue`, barcode.value`, or `accountId` fields
        # must also be set up correctly in order for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # The review comments set by the platform when a class is marked `approved` or `
        # rejected`.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::WalletobjectsV1::Review]
        attr_accessor :review
      
        # Required. The status of the class. This field can be set to `draft` or `
        # underReview` using the insert, patch, or update API calls. Once the review
        # state is changed from `draft` it may not be changed back to `draft`. You
        # should keep this field to `draft` when the class is under development. A `
        # draft` class cannot be used to create any object. You should set this field to
        # `underReview` when you believe the class is ready for use. The platform will
        # automatically set this field to `approved` and it can be immediately used to
        # create or migrate objects. When updating an already `approved` class you
        # should keep setting this field to `underReview`.
        # Corresponds to the JSON property `reviewStatus`
        # @return [String]
        attr_accessor :review_status
      
        # The rewards tier, such as "Gold" or "Platinum." Recommended maximum length is
        # 7 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `rewardsTier`
        # @return [String]
        attr_accessor :rewards_tier
      
        # The rewards tier label, such as "Rewards Tier." Recommended maximum length is
        # 9 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `rewardsTierLabel`
        # @return [String]
        attr_accessor :rewards_tier_label
      
        # The secondary rewards tier, such as "Gold" or "Platinum."
        # Corresponds to the JSON property `secondaryRewardsTier`
        # @return [String]
        attr_accessor :secondary_rewards_tier
      
        # The secondary rewards tier label, such as "Rewards Tier."
        # Corresponds to the JSON property `secondaryRewardsTierLabel`
        # @return [String]
        attr_accessor :secondary_rewards_tier_label
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # View Unlock Requirement options for the loyalty card.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideProgramLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_program_logo
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wordMark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :word_mark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id_label = args[:account_id_label] if args.key?(:account_id_label)
          @account_name_label = args[:account_name_label] if args.key?(:account_name_label)
          @allow_multiple_users_per_object = args[:allow_multiple_users_per_object] if args.key?(:allow_multiple_users_per_object)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @country_code = args[:country_code] if args.key?(:country_code)
          @discoverable_program = args[:discoverable_program] if args.key?(:discoverable_program)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @issuer_name = args[:issuer_name] if args.key?(:issuer_name)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @localized_account_id_label = args[:localized_account_id_label] if args.key?(:localized_account_id_label)
          @localized_account_name_label = args[:localized_account_name_label] if args.key?(:localized_account_name_label)
          @localized_issuer_name = args[:localized_issuer_name] if args.key?(:localized_issuer_name)
          @localized_program_name = args[:localized_program_name] if args.key?(:localized_program_name)
          @localized_rewards_tier = args[:localized_rewards_tier] if args.key?(:localized_rewards_tier)
          @localized_rewards_tier_label = args[:localized_rewards_tier_label] if args.key?(:localized_rewards_tier_label)
          @localized_secondary_rewards_tier = args[:localized_secondary_rewards_tier] if args.key?(:localized_secondary_rewards_tier)
          @localized_secondary_rewards_tier_label = args[:localized_secondary_rewards_tier_label] if args.key?(:localized_secondary_rewards_tier_label)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @program_logo = args[:program_logo] if args.key?(:program_logo)
          @program_name = args[:program_name] if args.key?(:program_name)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @review = args[:review] if args.key?(:review)
          @review_status = args[:review_status] if args.key?(:review_status)
          @rewards_tier = args[:rewards_tier] if args.key?(:rewards_tier)
          @rewards_tier_label = args[:rewards_tier_label] if args.key?(:rewards_tier_label)
          @secondary_rewards_tier = args[:secondary_rewards_tier] if args.key?(:secondary_rewards_tier)
          @secondary_rewards_tier_label = args[:secondary_rewards_tier_label] if args.key?(:secondary_rewards_tier_label)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @version = args[:version] if args.key?(:version)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
          @wide_program_logo = args[:wide_program_logo] if args.key?(:wide_program_logo)
          @word_mark = args[:word_mark] if args.key?(:word_mark)
        end
      end
      
      # 
      class LoyaltyClassAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated LoyaltyClass resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClass]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class LoyaltyClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::LoyaltyClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class LoyaltyObject
        include Google::Apis::Core::Hashable
      
        # The loyalty account identifier. Recommended maximum length is 20 characters.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The loyalty account holder name, such as "John Smith." Recommended maximum
        # length is 20 characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # Optional information about the partner app link.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The barcode type and value.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format issuer ID.identifier where the former is issued by
        # Google and latter is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # A copy of the inherited fields of the parent class. These fields are retrieved
        # during a GET.
        # Corresponds to the JSON property `classReference`
        # @return [Google::Apis::WalletobjectsV1::LoyaltyClass]
        attr_accessor :class_reference
      
        # Indicates if notifications should explicitly be suppressed. If this field is
        # set to true, regardless of the `messages` field, expiration notifications to
        # the user will be suppressed. By default, this field is set to false. Currently,
        # this can only be set for offers.
        # Corresponds to the JSON property `disableExpirationNotification`
        # @return [Boolean]
        attr_accessor :disable_expiration_notification
        alias_method :disable_expiration_notification?, :disable_expiration_notification
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Whether this object is currently linked to a single device. This field is set
        # by the platform when a user saves the object, linking it to their device.
        # Intended for use by select partners. Contact support for additional
        # information.
        # Corresponds to the JSON property `hasLinkedDevice`
        # @return [Boolean]
        attr_accessor :has_linked_device
        alias_method :has_linked_device?, :has_linked_device
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # The unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#loyaltyObject"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of offer objects linked to this loyalty card. The offer objects must
        # already exist. Offer object IDs should follow the format issuer ID. identifier
        # where the former is issued by Google and latter is chosen by you.
        # Corresponds to the JSON property `linkedOfferIds`
        # @return [Array<String>]
        attr_accessor :linked_offer_ids
      
        # Links module data. If links module data is also defined on the class, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # The loyalty reward points label, balance, and type.
        # Corresponds to the JSON property `loyaltyPoints`
        # @return [Google::Apis::WalletobjectsV1::LoyaltyPoints]
        attr_accessor :loyalty_points
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # The rotating barcode type and value.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # The secondary loyalty reward points label, balance, and type. Shown in
        # addition to the primary loyalty points.
        # Corresponds to the JSON property `secondaryLoyaltyPoints`
        # @return [Google::Apis::WalletobjectsV1::LoyaltyPoints]
        attr_accessor :secondary_loyalty_points
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported. If this value is not
        # set but the class level fields `enableSmartTap` and `redemptionIssuers` are
        # set up correctly, the `barcode.value` or the `accountId` fields are used as
        # fallback if present.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # Required. The state of the object. This field is used to determine how an
        # object is displayed in the app. For example, an `inactive` object is moved to
        # the "Expired passes" section.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # The time period this object will be `active` and object can be used. An object'
        # s state will be changed to `expired` when this time period has passed.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_name = args[:account_name] if args.key?(:account_name)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @barcode = args[:barcode] if args.key?(:barcode)
          @class_id = args[:class_id] if args.key?(:class_id)
          @class_reference = args[:class_reference] if args.key?(:class_reference)
          @disable_expiration_notification = args[:disable_expiration_notification] if args.key?(:disable_expiration_notification)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_linked_device = args[:has_linked_device] if args.key?(:has_linked_device)
          @has_users = args[:has_users] if args.key?(:has_users)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @kind = args[:kind] if args.key?(:kind)
          @linked_offer_ids = args[:linked_offer_ids] if args.key?(:linked_offer_ids)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @locations = args[:locations] if args.key?(:locations)
          @loyalty_points = args[:loyalty_points] if args.key?(:loyalty_points)
          @messages = args[:messages] if args.key?(:messages)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @secondary_loyalty_points = args[:secondary_loyalty_points] if args.key?(:secondary_loyalty_points)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class LoyaltyObjectAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated LoyaltyObject resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::LoyaltyObject]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class LoyaltyObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::LoyaltyObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class LoyaltyPoints
        include Google::Apis::Core::Hashable
      
        # The account holder's loyalty point balance, such as "500" or "$10.00".
        # Recommended maximum length is 7 characters. This is a required field of `
        # loyaltyPoints` and `secondaryLoyaltyPoints`.
        # Corresponds to the JSON property `balance`
        # @return [Google::Apis::WalletobjectsV1::LoyaltyPointsBalance]
        attr_accessor :balance
      
        # The loyalty points label, such as "Points". Recommended maximum length is 9
        # characters.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Translated strings for the label. Recommended maximum length is 9 characters.
        # Corresponds to the JSON property `localizedLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balance = args[:balance] if args.key?(:balance)
          @label = args[:label] if args.key?(:label)
          @localized_label = args[:localized_label] if args.key?(:localized_label)
        end
      end
      
      # 
      class LoyaltyPointsBalance
        include Google::Apis::Core::Hashable
      
        # The double form of a balance. Only one of these subtypes (string, int, double,
        # money) should be populated.
        # Corresponds to the JSON property `double`
        # @return [Float]
        attr_accessor :double
      
        # The integer form of a balance. Only one of these subtypes (string, int, double,
        # money) should be populated.
        # Corresponds to the JSON property `int`
        # @return [Fixnum]
        attr_accessor :int
      
        # The money form of a balance. Only one of these subtypes (string, int, double,
        # money) should be populated.
        # Corresponds to the JSON property `money`
        # @return [Google::Apis::WalletobjectsV1::Money]
        attr_accessor :money
      
        # The string form of a balance. Only one of these subtypes (string, int, double,
        # money) should be populated.
        # Corresponds to the JSON property `string`
        # @return [String]
        attr_accessor :string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double = args[:double] if args.key?(:double)
          @int = args[:int] if args.key?(:int)
          @money = args[:money] if args.key?(:money)
          @string = args[:string] if args.key?(:string)
        end
      end
      
      # A reference to data stored on the filesystem, on GFS or in blobstore.
      class Media
        include Google::Apis::Core::Hashable
      
        # Deprecated, use one of explicit hash type fields instead. Algorithm used for
        # calculating the hash. As of 2011/01/21, "MD5" is the only possible value for
        # this field. New values may be added at any time.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Use object_id instead.
        # Corresponds to the JSON property `bigstoreObjectRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bigstore_object_ref
      
        # Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be
        # the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating
        # v1, use blobstore2_info instead. For now, any v2 blob will also be represented
        # in this field as v1 BlobRef.
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # Information to read/write to blobstore2.
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::WalletobjectsV1::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # A composite media composed of one or more media objects, set if reference_type
        # is COMPOSITE_MEDIA. The media length field must be set to the sum of the
        # lengths of all composite media objects. Note: All composite media must have
        # length specified.
        # Corresponds to the JSON property `compositeMedia`
        # @return [Array<Google::Apis::WalletobjectsV1::CompositeMedia>]
        attr_accessor :composite_media
      
        # MIME type of the data
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Detailed Content-Type information from Scotty. The Content-Type of the media
        # will typically be filled in by the header or Scotty's best_guess, but this
        # extended information provides the backend with more information so that it can
        # make a better decision if needed. This is only used on media upload requests
        # from Scotty.
        # Corresponds to the JSON property `contentTypeInfo`
        # @return [Google::Apis::WalletobjectsV1::ContentTypeInfo]
        attr_accessor :content_type_info
      
        # A binary data reference for a media download. Serves as a technology-agnostic
        # binary reference in some Google infrastructure. This value is a serialized
        # storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get
        # around the fact that the cosmo proto (as well as others it includes) doesn't
        # support JavaScript. This prevents us from including the actual type of this
        # field.
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # For Scotty Uploads: Scotty-provided hashes for uploads For Scotty Downloads: (
        # WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.) A Hash provided
        # by the agent to be used to verify the data being downloaded. Currently only
        # supported for inline payloads. Further, only crc32c_hash is currently
        # supported.
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # Backend response for a Diff get checksums response. For details on the Scotty
        # Diff protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffChecksumsResponse`
        # @return [Google::Apis::WalletobjectsV1::DiffChecksumsResponse]
        attr_accessor :diff_checksums_response
      
        # Backend response for a Diff download response. For details on the Scotty Diff
        # protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffDownloadResponse`
        # @return [Google::Apis::WalletobjectsV1::DiffDownloadResponse]
        attr_accessor :diff_download_response
      
        # A Diff upload request. For details on the Scotty Diff protocol, visit http://
        # go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffUploadRequest`
        # @return [Google::Apis::WalletobjectsV1::DiffUploadRequest]
        attr_accessor :diff_upload_request
      
        # Backend response for a Diff upload request. For details on the Scotty Diff
        # protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffUploadResponse`
        # @return [Google::Apis::WalletobjectsV1::DiffUploadResponse]
        attr_accessor :diff_upload_response
      
        # Backend response for a Diff get version response. For details on the Scotty
        # Diff protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffVersionResponse`
        # @return [Google::Apis::WalletobjectsV1::DiffVersionResponse]
        attr_accessor :diff_version_response
      
        # Parameters specific to media downloads.
        # Corresponds to the JSON property `downloadParameters`
        # @return [Google::Apis::WalletobjectsV1::DownloadParameters]
        attr_accessor :download_parameters
      
        # Original file name
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Deprecated, use one of explicit hash type fields instead. These two hash
        # related fields will only be populated on Scotty based media uploads and will
        # contain the content of the hash group in the NotificationRequest: http://cs/#
        # google3/uploader/service/proto/upload_listener.proto&q=class:Hash Hex encoded
        # hash value of the uploaded media.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # For Scotty uploads only. If a user sends a hash code and the backend has
        # requested that Scotty verify the upload against the client hash, Scotty will
        # perform the check on behalf of the backend and will reject it if the hashes
        # don't match. This is set to true if Scotty performed this verification.
        # Corresponds to the JSON property `hashVerified`
        # @return [Boolean]
        attr_accessor :hash_verified
        alias_method :hash_verified?, :hash_verified
      
        # Media data, set if reference_type is INLINE
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # |is_potential_retry| is set false only when Scotty is certain that it has not
        # sent the request before. When a client resumes an upload, this field must be
        # set true in agent calls, because Scotty cannot be certain that it has never
        # sent the request before due to potential failure in the session state
        # persistence.
        # Corresponds to the JSON property `isPotentialRetry`
        # @return [Boolean]
        attr_accessor :is_potential_retry
        alias_method :is_potential_retry?, :is_potential_retry
      
        # Size of the data, in bytes
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Scotty-provided MD5 hash for an upload.
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # Media id to forward to the operation GetMedia. Can be set if reference_type is
        # GET_MEDIA.
        # Corresponds to the JSON property `mediaId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :media_id
      
        # This is a copy of the tech.blob.ObjectId proto, which could not be used
        # directly here due to transitive closure issues with JavaScript support; see
        # http://b/8801763.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::WalletobjectsV1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Path to the data, set if reference_type is PATH
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Describes what the field reference contains.
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # Scotty-provided SHA1 hash for an upload.
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        # Scotty-provided SHA256 hash for an upload.
        # Corresponds to the JSON property `sha256Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256_hash
      
        # Time at which the media data was last updated, in milliseconds since UNIX
        # epoch
        # Corresponds to the JSON property `timestamp`
        # @return [Fixnum]
        attr_accessor :timestamp
      
        # A unique fingerprint/version id for the media data
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @bigstore_object_ref = args[:bigstore_object_ref] if args.key?(:bigstore_object_ref)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @composite_media = args[:composite_media] if args.key?(:composite_media)
          @content_type = args[:content_type] if args.key?(:content_type)
          @content_type_info = args[:content_type_info] if args.key?(:content_type_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @diff_checksums_response = args[:diff_checksums_response] if args.key?(:diff_checksums_response)
          @diff_download_response = args[:diff_download_response] if args.key?(:diff_download_response)
          @diff_upload_request = args[:diff_upload_request] if args.key?(:diff_upload_request)
          @diff_upload_response = args[:diff_upload_response] if args.key?(:diff_upload_response)
          @diff_version_response = args[:diff_version_response] if args.key?(:diff_version_response)
          @download_parameters = args[:download_parameters] if args.key?(:download_parameters)
          @filename = args[:filename] if args.key?(:filename)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @hash_verified = args[:hash_verified] if args.key?(:hash_verified)
          @inline = args[:inline] if args.key?(:inline)
          @is_potential_retry = args[:is_potential_retry] if args.key?(:is_potential_retry)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @media_id = args[:media_id] if args.key?(:media_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Extra information added to operations that support Scotty media requests.
      class MediaRequestInfo
        include Google::Apis::Core::Hashable
      
        # The number of current bytes uploaded or downloaded.
        # Corresponds to the JSON property `currentBytes`
        # @return [Fixnum]
        attr_accessor :current_bytes
      
        # Data to be copied to backend requests. Custom data is returned to Scotty in
        # the agent_state field, which Scotty will then provide in subsequent upload
        # notifications.
        # Corresponds to the JSON property `customData`
        # @return [String]
        attr_accessor :custom_data
      
        # Set if the http request info is diff encoded. The value of this field is the
        # version number of the base revision. This is corresponding to Apiary's
        # mediaDiffObjectVersion (//depot/google3/java/com/google/api/server/media/
        # variable/DiffObjectVersionVariable.java). See go/esf-scotty-diff-upload for
        # more information.
        # Corresponds to the JSON property `diffObjectVersion`
        # @return [String]
        attr_accessor :diff_object_version
      
        # The existence of the final_status field indicates that this is the last call
        # to the agent for this request_id. http://google3/uploader/agent/scotty_agent.
        # proto?l=737&rcl=347601929
        # Corresponds to the JSON property `finalStatus`
        # @return [Fixnum]
        attr_accessor :final_status
      
        # The type of notification received from Scotty.
        # Corresponds to the JSON property `notificationType`
        # @return [String]
        attr_accessor :notification_type
      
        # The Scotty request ID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The partition of the Scotty server handling this request. type is
        # uploader_service.RequestReceivedParamsServingInfo LINT.IfChange(
        # request_received_params_serving_info_annotations) LINT.ThenChange()
        # Corresponds to the JSON property `requestReceivedParamsServingInfo`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :request_received_params_serving_info
      
        # The total size of the file.
        # Corresponds to the JSON property `totalBytes`
        # @return [Fixnum]
        attr_accessor :total_bytes
      
        # Whether the total bytes field contains an estimated data.
        # Corresponds to the JSON property `totalBytesIsEstimated`
        # @return [Boolean]
        attr_accessor :total_bytes_is_estimated
        alias_method :total_bytes_is_estimated?, :total_bytes_is_estimated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_bytes = args[:current_bytes] if args.key?(:current_bytes)
          @custom_data = args[:custom_data] if args.key?(:custom_data)
          @diff_object_version = args[:diff_object_version] if args.key?(:diff_object_version)
          @final_status = args[:final_status] if args.key?(:final_status)
          @notification_type = args[:notification_type] if args.key?(:notification_type)
          @request_id = args[:request_id] if args.key?(:request_id)
          @request_received_params_serving_info = args[:request_received_params_serving_info] if args.key?(:request_received_params_serving_info)
          @total_bytes = args[:total_bytes] if args.key?(:total_bytes)
          @total_bytes_is_estimated = args[:total_bytes_is_estimated] if args.key?(:total_bytes_is_estimated)
        end
      end
      
      # A message that will be displayed with a Valuable
      class Message
        include Google::Apis::Core::Hashable
      
        # The message body.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # The period of time that the message will be displayed to users. You can define
        # both a `startTime` and `endTime` for each message. A message is displayed
        # immediately after a Wallet Object is inserted unless a `startTime` is set. The
        # message will appear in a list of messages indefinitely if `endTime` is not
        # provided.
        # Corresponds to the JSON property `displayInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :display_interval
      
        # The message header.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # The ID associated with a message. This field is here to enable ease of
        # management of messages. Notice ID values could possibly duplicate across
        # multiple messages in the same class/instance, and care must be taken to select
        # a reasonable ID for each message.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#walletObjectMessage"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Translated strings for the message body.
        # Corresponds to the JSON property `localizedBody`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_body
      
        # Translated strings for the message header.
        # Corresponds to the JSON property `localizedHeader`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_header
      
        # The type of the message. Currently, this can only be set for offers.
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @display_interval = args[:display_interval] if args.key?(:display_interval)
          @header = args[:header] if args.key?(:header)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @localized_body = args[:localized_body] if args.key?(:localized_body)
          @localized_header = args[:localized_header] if args.key?(:localized_header)
          @message_type = args[:message_type] if args.key?(:message_type)
        end
      end
      
      # 
      class ModifyLinkedOfferObjects
        include Google::Apis::Core::Hashable
      
        # The linked offer object ids to add to the object.
        # Corresponds to the JSON property `addLinkedOfferObjectIds`
        # @return [Array<String>]
        attr_accessor :add_linked_offer_object_ids
      
        # The linked offer object ids to remove from the object.
        # Corresponds to the JSON property `removeLinkedOfferObjectIds`
        # @return [Array<String>]
        attr_accessor :remove_linked_offer_object_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_linked_offer_object_ids = args[:add_linked_offer_object_ids] if args.key?(:add_linked_offer_object_ids)
          @remove_linked_offer_object_ids = args[:remove_linked_offer_object_ids] if args.key?(:remove_linked_offer_object_ids)
        end
      end
      
      # 
      class ModifyLinkedOfferObjectsRequest
        include Google::Apis::Core::Hashable
      
        # The linked offer object ids to add or remove from the object.
        # Corresponds to the JSON property `linkedOfferObjectIds`
        # @return [Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjects]
        attr_accessor :linked_offer_object_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_offer_object_ids = args[:linked_offer_object_ids] if args.key?(:linked_offer_object_ids)
        end
      end
      
      # 
      class Money
        include Google::Apis::Core::Hashable
      
        # The currency code, such as "USD" or "EUR."
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#money"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The unit of money amount in micros. For example, $1 USD would be represented
        # as 1000000 micros.
        # Corresponds to the JSON property `micros`
        # @return [Fixnum]
        attr_accessor :micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @kind = args[:kind] if args.key?(:kind)
          @micros = args[:micros] if args.key?(:micros)
        end
      end
      
      # Indicates if the object needs to have notification enabled. We support only
      # one of ExpiryNotification/UpcomingNotification. `expiryNotification` takes
      # precedence over `upcomingNotification`. In other words if `expiryNotification`
      # is set, we ignore the `upcomingNotification` field.
      class Notifications
        include Google::Apis::Core::Hashable
      
        # Indicates that the issuer would like Google Wallet to send expiry
        # notifications 2 days prior to the card expiration.
        # Corresponds to the JSON property `expiryNotification`
        # @return [Google::Apis::WalletobjectsV1::ExpiryNotification]
        attr_accessor :expiry_notification
      
        # Indicates that the issuer would like Google Wallet to send an upcoming card
        # validity notification 1 day before card becomes valid/usable.
        # Corresponds to the JSON property `upcomingNotification`
        # @return [Google::Apis::WalletobjectsV1::UpcomingNotification]
        attr_accessor :upcoming_notification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiry_notification = args[:expiry_notification] if args.key?(:expiry_notification)
          @upcoming_notification = args[:upcoming_notification] if args.key?(:upcoming_notification)
        end
      end
      
      # This is a copy of the tech.blob.ObjectId proto, which could not be used
      # directly here due to transitive closure issues with JavaScript support; see
      # http://b/8801763.
      class ObjectIdProp
        include Google::Apis::Core::Hashable
      
        # The name of the bucket to which this object belongs.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Generation of the object. Generations are monotonically increasing across
        # writes, allowing them to be be compared to determine which generation is newer.
        # If this is omitted in a request, then you are requesting the live object. See
        # http://go/bigstore-versions
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # The name of the object.
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @generation = args[:generation] if args.key?(:generation)
          @object_name = args[:object_name] if args.key?(:object_name)
        end
      end
      
      # 
      class OfferClass
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
        # Corresponds to the JSON property `allowMultipleUsersPerObject`
        # @return [Boolean]
        attr_accessor :allow_multiple_users_per_object
        alias_method :allow_multiple_users_per_object?, :allow_multiple_users_per_object
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # Country code used to display the card's country (when the user is not in that
        # country), as well as to display localized content when content is not
        # available in the user's locale.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # The details of the offer.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Identifies whether this class supports Smart Tap. The `redemptionIssuers` and
        # object level `smartTapRedemptionLevel` fields must also be set up correctly in
        # order for a pass to support Smart Tap.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # The fine print or terms of the offer, such as "20% off any t-shirt at Adam's
        # Apparel."
        # Corresponds to the JSON property `finePrint`
        # @return [String]
        attr_accessor :fine_print
      
        # The help link for the offer, such as `http://myownpersonaldomain.com/help`
        # Corresponds to the JSON property `helpUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :help_uri
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # The URI of your application's home page. Populating the URI in this field
        # results in the exact same behavior as populating an URI in linksModuleData (
        # when an object is rendered, a link to the homepage is shown in what would
        # usually be thought of as the linksModuleData section of the object).
        # Corresponds to the JSON property `homepageUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :homepage_uri
      
        # Required. The unique identifier for a class. This ID must be unique across all
        # classes from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # Your unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Required. The issuer name. Recommended maximum length is 20 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `issuerName`
        # @return [String]
        attr_accessor :issuer_name
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#offerClass"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the object, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Translated strings for the details.
        # Corresponds to the JSON property `localizedDetails`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_details
      
        # Translated strings for the fine_print.
        # Corresponds to the JSON property `localizedFinePrint`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_fine_print
      
        # Translated strings for the issuer_name. Recommended maximum length is 20
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedIssuerName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_issuer_name
      
        # Translated strings for the provider. Recommended maximum length is 12
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedProvider`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_provider
      
        # Translated strings for the short title. Recommended maximum length is 20
        # characters.
        # Corresponds to the JSON property `localizedShortTitle`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_short_title
      
        # Translated strings for the title. Recommended maximum length is 60 characters
        # to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedTitle`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_title
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # Required. The offer provider (either the aggregator name or merchant name).
        # Recommended maximum length is 12 characters to ensure full string is displayed
        # on smaller screens.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Required. The redemption channels applicable to this offer.
        # Corresponds to the JSON property `redemptionChannel`
        # @return [String]
        attr_accessor :redemption_channel
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and object
        # level `smartTapRedemptionLevel` fields must also be set up correctly in order
        # for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # The review comments set by the platform when a class is marked `approved` or `
        # rejected`.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::WalletobjectsV1::Review]
        attr_accessor :review
      
        # Required. The status of the class. This field can be set to `draft` or The
        # status of the class. This field can be set to `draft` or `underReview` using
        # the insert, patch, or update API calls. Once the review state is changed from `
        # draft` it may not be changed back to `draft`. You should keep this field to `
        # draft` when the class is under development. A `draft` class cannot be used to
        # create any object. You should set this field to `underReview` when you believe
        # the class is ready for use. The platform will automatically set this field to `
        # approved` and it can be immediately used to create or migrate objects. When
        # updating an already `approved` class you should keep setting this field to `
        # underReview`.
        # Corresponds to the JSON property `reviewStatus`
        # @return [String]
        attr_accessor :review_status
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # A shortened version of the title of the offer, such as "20% off," shown to
        # users as a quick reference to the offer contents. Recommended maximum length
        # is 20 characters.
        # Corresponds to the JSON property `shortTitle`
        # @return [String]
        attr_accessor :short_title
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # Required. The title of the offer, such as "20% off any t-shirt." Recommended
        # maximum length is 60 characters to ensure full string is displayed on smaller
        # screens.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `titleImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :title_image
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # View Unlock Requirement options for the offer.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideTitleImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_title_image
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wordMark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :word_mark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_multiple_users_per_object = args[:allow_multiple_users_per_object] if args.key?(:allow_multiple_users_per_object)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @country_code = args[:country_code] if args.key?(:country_code)
          @details = args[:details] if args.key?(:details)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @fine_print = args[:fine_print] if args.key?(:fine_print)
          @help_uri = args[:help_uri] if args.key?(:help_uri)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @issuer_name = args[:issuer_name] if args.key?(:issuer_name)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @localized_details = args[:localized_details] if args.key?(:localized_details)
          @localized_fine_print = args[:localized_fine_print] if args.key?(:localized_fine_print)
          @localized_issuer_name = args[:localized_issuer_name] if args.key?(:localized_issuer_name)
          @localized_provider = args[:localized_provider] if args.key?(:localized_provider)
          @localized_short_title = args[:localized_short_title] if args.key?(:localized_short_title)
          @localized_title = args[:localized_title] if args.key?(:localized_title)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @provider = args[:provider] if args.key?(:provider)
          @redemption_channel = args[:redemption_channel] if args.key?(:redemption_channel)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @review = args[:review] if args.key?(:review)
          @review_status = args[:review_status] if args.key?(:review_status)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @short_title = args[:short_title] if args.key?(:short_title)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @title = args[:title] if args.key?(:title)
          @title_image = args[:title_image] if args.key?(:title_image)
          @version = args[:version] if args.key?(:version)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
          @wide_title_image = args[:wide_title_image] if args.key?(:wide_title_image)
          @word_mark = args[:word_mark] if args.key?(:word_mark)
        end
      end
      
      # 
      class OfferClassAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated OfferClass resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::OfferClass]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class OfferClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::OfferClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class OfferObject
        include Google::Apis::Core::Hashable
      
        # Optional information about the partner app link.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The barcode type and value.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format issuer ID.identifier where the former is issued by
        # Google and latter is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # A copy of the inherited fields of the parent class. These fields are retrieved
        # during a GET.
        # Corresponds to the JSON property `classReference`
        # @return [Google::Apis::WalletobjectsV1::OfferClass]
        attr_accessor :class_reference
      
        # Indicates if notifications should explicitly be suppressed. If this field is
        # set to true, regardless of the `messages` field, expiration notifications to
        # the user will be suppressed. By default, this field is set to false. Currently,
        # this can only be set for offers.
        # Corresponds to the JSON property `disableExpirationNotification`
        # @return [Boolean]
        attr_accessor :disable_expiration_notification
        alias_method :disable_expiration_notification?, :disable_expiration_notification
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Whether this object is currently linked to a single device. This field is set
        # by the platform when a user saves the object, linking it to their device.
        # Intended for use by select partners. Contact support for additional
        # information.
        # Corresponds to the JSON property `hasLinkedDevice`
        # @return [Boolean]
        attr_accessor :has_linked_device
        alias_method :has_linked_device?, :has_linked_device
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # The unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#offerObject"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Links module data. If links module data is also defined on the class, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # The rotating barcode type and value.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # Required. The state of the object. This field is used to determine how an
        # object is displayed in the app. For example, an `inactive` object is moved to
        # the "Expired passes" section.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # The time period this object will be `active` and object can be used. An object'
        # s state will be changed to `expired` when this time period has passed.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @barcode = args[:barcode] if args.key?(:barcode)
          @class_id = args[:class_id] if args.key?(:class_id)
          @class_reference = args[:class_reference] if args.key?(:class_reference)
          @disable_expiration_notification = args[:disable_expiration_notification] if args.key?(:disable_expiration_notification)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_linked_device = args[:has_linked_device] if args.key?(:has_linked_device)
          @has_users = args[:has_users] if args.key?(:has_users)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @kind = args[:kind] if args.key?(:kind)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class OfferObjectAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated OfferObject resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::OfferObject]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class OfferObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::OfferObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class Pagination
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#pagination"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Page token to send to fetch the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Number of results returned in this page.
        # Corresponds to the JSON property `resultsPerPage`
        # @return [Fixnum]
        attr_accessor :results_per_page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results_per_page = args[:results_per_page] if args.key?(:results_per_page)
        end
      end
      
      # Container for any constraints that may be placed on passes.
      class PassConstraints
        include Google::Apis::Core::Hashable
      
        # The NFC constraints for the pass.
        # Corresponds to the JSON property `nfcConstraint`
        # @return [Array<String>]
        attr_accessor :nfc_constraint
      
        # The screenshot eligibility for the pass.
        # Corresponds to the JSON property `screenshotEligibility`
        # @return [String]
        attr_accessor :screenshot_eligibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nfc_constraint = args[:nfc_constraint] if args.key?(:nfc_constraint)
          @screenshot_eligibility = args[:screenshot_eligibility] if args.key?(:screenshot_eligibility)
        end
      end
      
      # 
      class Permission
        include Google::Apis::Core::Hashable
      
        # The email address of the user, group, or service account to which this
        # permission refers to.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The role granted by this permission.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class Permissions
        include Google::Apis::Core::Hashable
      
        # ID of the issuer the list of permissions refer to.
        # Corresponds to the JSON property `issuerId`
        # @return [Fixnum]
        attr_accessor :issuer_id
      
        # The complete list of permissions for the issuer account.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::WalletobjectsV1::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issuer_id = args[:issuer_id] if args.key?(:issuer_id)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Private data for TextModule. This data will be rendered as a TextModule for a
      # pass.
      class PrivateText
        include Google::Apis::Core::Hashable
      
        # Translated strings for the body.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :body
      
        # Translated strings for the header.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @header = args[:header] if args.key?(:header)
        end
      end
      
      # Private data for LinkModule. This data will be rendered as the LinkModule for
      # a pass.
      class PrivateUri
        include Google::Apis::Core::Hashable
      
        # The URI's title appearing in the app as text and its translated strings.
        # Recommended maximum is 20 characters to ensure the full string is displayed on
        # smaller screens.
        # Corresponds to the JSON property `description`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :description
      
        # The location of a web page, image, or other resource. URIs in the `
        # LinksModuleData` can have different prefixes indicating the type of URI (a
        # link to a web page, a link to a map, a telephone number, or an email address).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class PurchaseDetails
        include Google::Apis::Core::Hashable
      
        # ID of the account used to purchase the ticket.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The confirmation code for the purchase. This may be the same for multiple
        # different tickets and is used to group tickets together.
        # Corresponds to the JSON property `confirmationCode`
        # @return [String]
        attr_accessor :confirmation_code
      
        # The purchase date/time of the ticket. This is an ISO 8601 extended format date/
        # time, with or without an offset. Time may be specified up to nanosecond
        # precision. Offsets may be specified with seconds precision (even though offset
        # seconds is not part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would
        # be 20 minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
        # `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
        # the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in time as
        # the above example). If the event were in New York, this would be the
        # equivalent of Eastern Daylight Time (EDT). Remember that offset varies in
        # regions that observe Daylight Saving Time (or Summer Time), depending on the
        # time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and 50.52
        # seconds after the 19th hour of April 12th, 1985 with no offset information.
        # Without offset information, some rich features may not be available.
        # Corresponds to the JSON property `purchaseDateTime`
        # @return [String]
        attr_accessor :purchase_date_time
      
        # Receipt number/identifier for tracking the ticket purchase via the body that
        # sold the ticket.
        # Corresponds to the JSON property `purchaseReceiptNumber`
        # @return [String]
        attr_accessor :purchase_receipt_number
      
        # The cost of the ticket.
        # Corresponds to the JSON property `ticketCost`
        # @return [Google::Apis::WalletobjectsV1::TicketCost]
        attr_accessor :ticket_cost
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @confirmation_code = args[:confirmation_code] if args.key?(:confirmation_code)
          @purchase_date_time = args[:purchase_date_time] if args.key?(:purchase_date_time)
          @purchase_receipt_number = args[:purchase_receipt_number] if args.key?(:purchase_receipt_number)
          @ticket_cost = args[:ticket_cost] if args.key?(:ticket_cost)
        end
      end
      
      # 
      class ReservationInfo
        include Google::Apis::Core::Hashable
      
        # Confirmation code needed to check into this flight. This is the number that
        # the passenger would enter into a kiosk at the airport to look up the flight
        # and print a boarding pass.
        # Corresponds to the JSON property `confirmationCode`
        # @return [String]
        attr_accessor :confirmation_code
      
        # E-ticket number.
        # Corresponds to the JSON property `eticketNumber`
        # @return [String]
        attr_accessor :eticket_number
      
        # Frequent flyer membership information.
        # Corresponds to the JSON property `frequentFlyerInfo`
        # @return [Google::Apis::WalletobjectsV1::FrequentFlyerInfo]
        attr_accessor :frequent_flyer_info
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#reservationInfo"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confirmation_code = args[:confirmation_code] if args.key?(:confirmation_code)
          @eticket_number = args[:eticket_number] if args.key?(:eticket_number)
          @frequent_flyer_info = args[:frequent_flyer_info] if args.key?(:frequent_flyer_info)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class Resources
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `eventTicketClasses`
        # @return [Array<Google::Apis::WalletobjectsV1::EventTicketClass>]
        attr_accessor :event_ticket_classes
      
        # 
        # Corresponds to the JSON property `eventTicketObjects`
        # @return [Array<Google::Apis::WalletobjectsV1::EventTicketObject>]
        attr_accessor :event_ticket_objects
      
        # 
        # Corresponds to the JSON property `flightClasses`
        # @return [Array<Google::Apis::WalletobjectsV1::FlightClass>]
        attr_accessor :flight_classes
      
        # 
        # Corresponds to the JSON property `flightObjects`
        # @return [Array<Google::Apis::WalletobjectsV1::FlightObject>]
        attr_accessor :flight_objects
      
        # 
        # Corresponds to the JSON property `giftCardClasses`
        # @return [Array<Google::Apis::WalletobjectsV1::GiftCardClass>]
        attr_accessor :gift_card_classes
      
        # 
        # Corresponds to the JSON property `giftCardObjects`
        # @return [Array<Google::Apis::WalletobjectsV1::GiftCardObject>]
        attr_accessor :gift_card_objects
      
        # 
        # Corresponds to the JSON property `loyaltyClasses`
        # @return [Array<Google::Apis::WalletobjectsV1::LoyaltyClass>]
        attr_accessor :loyalty_classes
      
        # 
        # Corresponds to the JSON property `loyaltyObjects`
        # @return [Array<Google::Apis::WalletobjectsV1::LoyaltyObject>]
        attr_accessor :loyalty_objects
      
        # 
        # Corresponds to the JSON property `offerClasses`
        # @return [Array<Google::Apis::WalletobjectsV1::OfferClass>]
        attr_accessor :offer_classes
      
        # 
        # Corresponds to the JSON property `offerObjects`
        # @return [Array<Google::Apis::WalletobjectsV1::OfferObject>]
        attr_accessor :offer_objects
      
        # 
        # Corresponds to the JSON property `transitClasses`
        # @return [Array<Google::Apis::WalletobjectsV1::TransitClass>]
        attr_accessor :transit_classes
      
        # 
        # Corresponds to the JSON property `transitObjects`
        # @return [Array<Google::Apis::WalletobjectsV1::TransitObject>]
        attr_accessor :transit_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_ticket_classes = args[:event_ticket_classes] if args.key?(:event_ticket_classes)
          @event_ticket_objects = args[:event_ticket_objects] if args.key?(:event_ticket_objects)
          @flight_classes = args[:flight_classes] if args.key?(:flight_classes)
          @flight_objects = args[:flight_objects] if args.key?(:flight_objects)
          @gift_card_classes = args[:gift_card_classes] if args.key?(:gift_card_classes)
          @gift_card_objects = args[:gift_card_objects] if args.key?(:gift_card_objects)
          @loyalty_classes = args[:loyalty_classes] if args.key?(:loyalty_classes)
          @loyalty_objects = args[:loyalty_objects] if args.key?(:loyalty_objects)
          @offer_classes = args[:offer_classes] if args.key?(:offer_classes)
          @offer_objects = args[:offer_objects] if args.key?(:offer_objects)
          @transit_classes = args[:transit_classes] if args.key?(:transit_classes)
          @transit_objects = args[:transit_objects] if args.key?(:transit_objects)
        end
      end
      
      # 
      class Review
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comments = args[:comments] if args.key?(:comments)
        end
      end
      
      # 
      class RotatingBarcode
        include Google::Apis::Core::Hashable
      
        # An optional text that will override the default text that shows under the
        # barcode. This field is intended for a human readable equivalent of the barcode
        # value, used when the barcode cannot be scanned.
        # Corresponds to the JSON property `alternateText`
        # @return [String]
        attr_accessor :alternate_text
      
        # A payload containing many barcode values and start date/time.
        # Corresponds to the JSON property `initialRotatingBarcodeValues`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcodeValues]
        attr_accessor :initial_rotating_barcode_values
      
        # The render encoding for the barcode. When specified, barcode is rendered in
        # the given encoding. Otherwise best known encoding is chosen by Google.
        # Corresponds to the JSON property `renderEncoding`
        # @return [String]
        attr_accessor :render_encoding
      
        # Optional text that will be shown when the barcode is hidden behind a click
        # action. This happens in cases where a pass has Smart Tap enabled. If not
        # specified, a default is chosen by Google.
        # Corresponds to the JSON property `showCodeText`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :show_code_text
      
        # Configuration for the time-based OTP substitutions. See https://tools.ietf.org/
        # html/rfc6238
        # Corresponds to the JSON property `totpDetails`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcodeTotpDetails]
        attr_accessor :totp_details
      
        # The type of this barcode.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # String encoded barcode value. This string supports the following substitutions:
        # * `totp_value_n`: Replaced with the TOTP value (see TotpDetails.parameters). *
        # `totp_timestamp_millis`: Replaced with the timestamp (millis since epoch) at
        # which the barcode was generated. * `totp_timestamp_seconds`: Replaced with the
        # timestamp (seconds since epoch) at which the barcode was generated.
        # Corresponds to the JSON property `valuePattern`
        # @return [String]
        attr_accessor :value_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_text = args[:alternate_text] if args.key?(:alternate_text)
          @initial_rotating_barcode_values = args[:initial_rotating_barcode_values] if args.key?(:initial_rotating_barcode_values)
          @render_encoding = args[:render_encoding] if args.key?(:render_encoding)
          @show_code_text = args[:show_code_text] if args.key?(:show_code_text)
          @totp_details = args[:totp_details] if args.key?(:totp_details)
          @type = args[:type] if args.key?(:type)
          @value_pattern = args[:value_pattern] if args.key?(:value_pattern)
        end
      end
      
      # Configuration for the time-based OTP substitutions. See https://tools.ietf.org/
      # html/rfc6238
      class RotatingBarcodeTotpDetails
        include Google::Apis::Core::Hashable
      
        # The TOTP algorithm used to generate the OTP.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # The TOTP parameters for each of the `totp_value_*` substitutions. The
        # TotpParameters at index n is used for the `totp_value_n` substitution.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::WalletobjectsV1::RotatingBarcodeTotpDetailsTotpParameters>]
        attr_accessor :parameters
      
        # The time interval used for the TOTP value generation, in milliseconds.
        # Corresponds to the JSON property `periodMillis`
        # @return [Fixnum]
        attr_accessor :period_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @parameters = args[:parameters] if args.key?(:parameters)
          @period_millis = args[:period_millis] if args.key?(:period_millis)
        end
      end
      
      # Configuration for the key and value length. See https://www.rfc-editor.org/rfc/
      # rfc4226#section-5.3
      class RotatingBarcodeTotpDetailsTotpParameters
        include Google::Apis::Core::Hashable
      
        # The secret key used for the TOTP value generation, encoded as a Base16 string.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The length of the TOTP value in decimal digits.
        # Corresponds to the JSON property `valueLength`
        # @return [Fixnum]
        attr_accessor :value_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value_length = args[:value_length] if args.key?(:value_length)
        end
      end
      
      # A payload containing many barcode values and start date/time.
      class RotatingBarcodeValues
        include Google::Apis::Core::Hashable
      
        # Required. The amount of time each barcode is valid for.
        # Corresponds to the JSON property `periodMillis`
        # @return [Fixnum]
        attr_accessor :period_millis
      
        # Required. The date/time the first barcode is valid from. Barcodes will be
        # rotated through using period_millis defined on the object's
        # RotatingBarcodeValueInfo. This is an ISO 8601 extended format date/time, with
        # an offset. Time may be specified up to nanosecond precision. Offsets may be
        # specified with seconds precision (even though offset seconds is not part of
        # ISO 8601). For example: `1985-04-12T23:20:50.52Z` would be 20 minutes and 50.
        # 52 seconds after the 23rd hour of April 12th, 1985 in UTC. `1985-04-12T19:20:
        # 50.52-04:00` would be 20 minutes and 50.52 seconds after the 19th hour of
        # April 12th, 1985, 4 hours before UTC (same instant in time as the above
        # example). If the event were in New York, this would be the equivalent of
        # Eastern Daylight Time (EDT). Remember that offset varies in regions that
        # observe Daylight Saving Time (or Summer Time), depending on the time of the
        # year.
        # Corresponds to the JSON property `startDateTime`
        # @return [String]
        attr_accessor :start_date_time
      
        # Required. The values to encode in the barcode. At least one value is required.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @period_millis = args[:period_millis] if args.key?(:period_millis)
          @start_date_time = args[:start_date_time] if args.key?(:start_date_time)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class SecurityAnimation
        include Google::Apis::Core::Hashable
      
        # Type of animation.
        # Corresponds to the JSON property `animationType`
        # @return [String]
        attr_accessor :animation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @animation_type = args[:animation_type] if args.key?(:animation_type)
        end
      end
      
      # Request to send a private pass update notice information to Google, so that
      # devices can then fetch the notice prompting the user to update a pass.
      class SetPassUpdateNoticeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response to a request to notify Google of an awaiting update to a private
      # pass.
      class SetPassUpdateNoticeResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class SignUpInfo
        include Google::Apis::Core::Hashable
      
        # ID of the class the user can sign up for.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_id = args[:class_id] if args.key?(:class_id)
        end
      end
      
      # 
      class SmartTap
        include Google::Apis::Core::Hashable
      
        # The unique identifier for a smart tap. This value should follow the format
        # issuer ID.identifier where the former is issued by Google and latter is the
        # Smart Tap id. The Smart Tap id is a Base64 encoded string which represents the
        # id which was generated by the Google Pay app.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Communication from merchant to user.
        # Corresponds to the JSON property `infos`
        # @return [Array<Google::Apis::WalletobjectsV1::IssuerToUserInfo>]
        attr_accessor :infos
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#smartTap"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Smart Tap merchant ID of who engaged in the Smart Tap interaction.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @infos = args[:infos] if args.key?(:infos)
          @kind = args[:kind] if args.key?(:kind)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
        end
      end
      
      # 
      class SmartTapMerchantData
        include Google::Apis::Core::Hashable
      
        # Available only to Smart Tap enabled partners. Contact support for additional
        # guidance.
        # Corresponds to the JSON property `authenticationKeys`
        # @return [Array<Google::Apis::WalletobjectsV1::AuthenticationKey>]
        attr_accessor :authentication_keys
      
        # Available only to Smart Tap enabled partners. Contact support for additional
        # guidance.
        # Corresponds to the JSON property `smartTapMerchantId`
        # @return [Fixnum]
        attr_accessor :smart_tap_merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_keys = args[:authentication_keys] if args.key?(:authentication_keys)
          @smart_tap_merchant_id = args[:smart_tap_merchant_id] if args.key?(:smart_tap_merchant_id)
        end
      end
      
      # 
      class TemplateItem
        include Google::Apis::Core::Hashable
      
        # Custom field selector to use with field overrides.
        # Corresponds to the JSON property `firstValue`
        # @return [Google::Apis::WalletobjectsV1::FieldSelector]
        attr_accessor :first_value
      
        # A predefined item to display. Only one of `firstValue` or `predefinedItem` may
        # be set.
        # Corresponds to the JSON property `predefinedItem`
        # @return [String]
        attr_accessor :predefined_item
      
        # Custom field selector to use with field overrides.
        # Corresponds to the JSON property `secondValue`
        # @return [Google::Apis::WalletobjectsV1::FieldSelector]
        attr_accessor :second_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_value = args[:first_value] if args.key?(:first_value)
          @predefined_item = args[:predefined_item] if args.key?(:predefined_item)
          @second_value = args[:second_value] if args.key?(:second_value)
        end
      end
      
      # Data for Text module. All fields are optional. Header will be displayed if
      # available, different types of bodies will be concatenated if they are defined.
      class TextModuleData
        include Google::Apis::Core::Hashable
      
        # The body of the Text Module, which is defined as an uninterrupted string.
        # Recommended maximum length is 500 characters to ensure full string is
        # displayed on smaller screens.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # The header of the Text Module. Recommended maximum length is 35 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # The ID associated with a text module. This field is here to enable ease of
        # management of text modules.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Translated strings for the body. Recommended maximum length is 500 characters
        # to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedBody`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_body
      
        # Translated strings for the header. Recommended maximum length is 35 characters
        # to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedHeader`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @header = args[:header] if args.key?(:header)
          @id = args[:id] if args.key?(:id)
          @localized_body = args[:localized_body] if args.key?(:localized_body)
          @localized_header = args[:localized_header] if args.key?(:localized_header)
        end
      end
      
      # 
      class TicketCost
        include Google::Apis::Core::Hashable
      
        # A message describing any kind of discount that was applied.
        # Corresponds to the JSON property `discountMessage`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :discount_message
      
        # The face value of the ticket.
        # Corresponds to the JSON property `faceValue`
        # @return [Google::Apis::WalletobjectsV1::Money]
        attr_accessor :face_value
      
        # The actual purchase price of the ticket, after tax and/or discounts.
        # Corresponds to the JSON property `purchasePrice`
        # @return [Google::Apis::WalletobjectsV1::Money]
        attr_accessor :purchase_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discount_message = args[:discount_message] if args.key?(:discount_message)
          @face_value = args[:face_value] if args.key?(:face_value)
          @purchase_price = args[:purchase_price] if args.key?(:purchase_price)
        end
      end
      
      # 
      class TicketLeg
        include Google::Apis::Core::Hashable
      
        # The date/time of arrival. This is an ISO 8601 extended format date/time, with
        # or without an offset. Time may be specified up to nanosecond precision.
        # Offsets may be specified with seconds precision (even though offset seconds is
        # not part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would be 20
        # minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC. `
        # 1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after the
        # 19th hour of April 12th, 1985, 4 hours before UTC (same instant in time as the
        # above example). If the event were in New York, this would be the equivalent of
        # Eastern Daylight Time (EDT). Remember that offset varies in regions that
        # observe Daylight Saving Time (or Summer Time), depending on the time of the
        # year. `1985-04-12T19:20:50.52` would be 20 minutes and 50.52 seconds after the
        # 19th hour of April 12th, 1985 with no offset information. The portion of the
        # date/time without the offset is considered the "local date/time". This should
        # be the local date/time at the destination station. For example, if the event
        # occurs at the 20th hour of June 5th, 2018 at the destination station, the
        # local date/time portion should be `2018-06-05T20:00:00`. If the local date/
        # time at the destination station is 4 hours before UTC, an offset of `-04:00`
        # may be appended. Without offset information, some rich features may not be
        # available.
        # Corresponds to the JSON property `arrivalDateTime`
        # @return [String]
        attr_accessor :arrival_date_time
      
        # The train or ship name/number that the passsenger needs to board.
        # Corresponds to the JSON property `carriage`
        # @return [String]
        attr_accessor :carriage
      
        # The date/time of departure. This is required if there is no validity time
        # interval set on the transit object. This is an ISO 8601 extended format date/
        # time, with or without an offset. Time may be specified up to nanosecond
        # precision. Offsets may be specified with seconds precision (even though offset
        # seconds is not part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would
        # be 20 minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
        # `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
        # the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in time as
        # the above example). If the event were in New York, this would be the
        # equivalent of Eastern Daylight Time (EDT). Remember that offset varies in
        # regions that observe Daylight Saving Time (or Summer Time), depending on the
        # time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and 50.52
        # seconds after the 19th hour of April 12th, 1985 with no offset information.
        # The portion of the date/time without the offset is considered the "local date/
        # time". This should be the local date/time at the origin station. For example,
        # if the departure occurs at the 20th hour of June 5th, 2018 at the origin
        # station, the local date/time portion should be `2018-06-05T20:00:00`. If the
        # local date/time at the origin station is 4 hours before UTC, an offset of `-04:
        # 00` may be appended. Without offset information, some rich features may not be
        # available.
        # Corresponds to the JSON property `departureDateTime`
        # @return [String]
        attr_accessor :departure_date_time
      
        # The destination name.
        # Corresponds to the JSON property `destinationName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :destination_name
      
        # The destination station code.
        # Corresponds to the JSON property `destinationStationCode`
        # @return [String]
        attr_accessor :destination_station_code
      
        # Short description/name of the fare for this leg of travel. Eg "Anytime Single
        # Use".
        # Corresponds to the JSON property `fareName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :fare_name
      
        # The name of the origin station. This is required if `desinationName` is
        # present or if `originStationCode` is not present.
        # Corresponds to the JSON property `originName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :origin_name
      
        # The origin station code. This is required if `destinationStationCode` is
        # present or if `originName` is not present.
        # Corresponds to the JSON property `originStationCode`
        # @return [String]
        attr_accessor :origin_station_code
      
        # The platform or gate where the passenger can board the carriage.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The reserved seat for the passenger(s). If more than one seat is to be
        # specified then use the `ticketSeats` field instead. Both `ticketSeat` and `
        # ticketSeats` may not be set.
        # Corresponds to the JSON property `ticketSeat`
        # @return [Google::Apis::WalletobjectsV1::TicketSeat]
        attr_accessor :ticket_seat
      
        # The reserved seat for the passenger(s). If only one seat is to be specified
        # then use the `ticketSeat` field instead. Both `ticketSeat` and `ticketSeats`
        # may not be set.
        # Corresponds to the JSON property `ticketSeats`
        # @return [Array<Google::Apis::WalletobjectsV1::TicketSeat>]
        attr_accessor :ticket_seats
      
        # The name of the transit operator that is operating this leg of a trip.
        # Corresponds to the JSON property `transitOperatorName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :transit_operator_name
      
        # Terminus station or destination of the train/bus/etc.
        # Corresponds to the JSON property `transitTerminusName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :transit_terminus_name
      
        # The zone of boarding within the platform.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arrival_date_time = args[:arrival_date_time] if args.key?(:arrival_date_time)
          @carriage = args[:carriage] if args.key?(:carriage)
          @departure_date_time = args[:departure_date_time] if args.key?(:departure_date_time)
          @destination_name = args[:destination_name] if args.key?(:destination_name)
          @destination_station_code = args[:destination_station_code] if args.key?(:destination_station_code)
          @fare_name = args[:fare_name] if args.key?(:fare_name)
          @origin_name = args[:origin_name] if args.key?(:origin_name)
          @origin_station_code = args[:origin_station_code] if args.key?(:origin_station_code)
          @platform = args[:platform] if args.key?(:platform)
          @ticket_seat = args[:ticket_seat] if args.key?(:ticket_seat)
          @ticket_seats = args[:ticket_seats] if args.key?(:ticket_seats)
          @transit_operator_name = args[:transit_operator_name] if args.key?(:transit_operator_name)
          @transit_terminus_name = args[:transit_terminus_name] if args.key?(:transit_terminus_name)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class TicketRestrictions
        include Google::Apis::Core::Hashable
      
        # Extra restrictions that don't fall under the "route" or "time" categories.
        # Corresponds to the JSON property `otherRestrictions`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :other_restrictions
      
        # Restrictions about routes that may be taken. For example, this may be the
        # string "Reserved CrossCountry trains only".
        # Corresponds to the JSON property `routeRestrictions`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :route_restrictions
      
        # More details about the above `routeRestrictions`.
        # Corresponds to the JSON property `routeRestrictionsDetails`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :route_restrictions_details
      
        # Restrictions about times this ticket may be used.
        # Corresponds to the JSON property `timeRestrictions`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :time_restrictions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @other_restrictions = args[:other_restrictions] if args.key?(:other_restrictions)
          @route_restrictions = args[:route_restrictions] if args.key?(:route_restrictions)
          @route_restrictions_details = args[:route_restrictions_details] if args.key?(:route_restrictions_details)
          @time_restrictions = args[:time_restrictions] if args.key?(:time_restrictions)
        end
      end
      
      # 
      class TicketSeat
        include Google::Apis::Core::Hashable
      
        # The identifier of the train car or coach in which the ticketed seat is located.
        # Eg. "10"
        # Corresponds to the JSON property `coach`
        # @return [String]
        attr_accessor :coach
      
        # A custome fare class to be used if no `fareClass` applies. Both `fareClass`
        # and `customFareClass` may not be set.
        # Corresponds to the JSON property `customFareClass`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_fare_class
      
        # The fare class of the ticketed seat.
        # Corresponds to the JSON property `fareClass`
        # @return [String]
        attr_accessor :fare_class
      
        # The identifier of where the ticketed seat is located. Eg. "42". If there is no
        # specific identifier, use `seatAssigment` instead.
        # Corresponds to the JSON property `seat`
        # @return [String]
        attr_accessor :seat
      
        # The passenger's seat assignment. Eg. "no specific seat". To be used when there
        # is no specific identifier to use in `seat`.
        # Corresponds to the JSON property `seatAssignment`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :seat_assignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coach = args[:coach] if args.key?(:coach)
          @custom_fare_class = args[:custom_fare_class] if args.key?(:custom_fare_class)
          @fare_class = args[:fare_class] if args.key?(:fare_class)
          @seat = args[:seat] if args.key?(:seat)
          @seat_assignment = args[:seat_assignment] if args.key?(:seat_assignment)
        end
      end
      
      # 
      class TimeInterval
        include Google::Apis::Core::Hashable
      
        # End time of the interval. Offset is not required. If an offset is provided and
        # `start` time is set, `start` must also include an offset.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::WalletobjectsV1::DateTime]
        attr_accessor :end
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#timeInterval"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Start time of the interval. Offset is not required. If an offset is provided
        # and `end` time is set, `end` must also include an offset.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::WalletobjectsV1::DateTime]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @kind = args[:kind] if args.key?(:kind)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # 
      class TransitClass
        include Google::Apis::Core::Hashable
      
        # ActivationOptions for the class
        # Corresponds to the JSON property `activationOptions`
        # @return [Google::Apis::WalletobjectsV1::ActivationOptions]
        attr_accessor :activation_options
      
        # Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
        # Corresponds to the JSON property `allowMultipleUsersPerObject`
        # @return [Boolean]
        attr_accessor :allow_multiple_users_per_object
        alias_method :allow_multiple_users_per_object?, :allow_multiple_users_per_object
      
        # Callback options to be used to call the issuer back for every save/delete of
        # an object for this class by the end-user. All objects of this class are
        # eligible for the callback.
        # Corresponds to the JSON property `callbackOptions`
        # @return [Google::Apis::WalletobjectsV1::CallbackOptions]
        attr_accessor :callback_options
      
        # Template information about how the class should be displayed. If unset, Google
        # will fallback to a default set of fields to display.
        # Corresponds to the JSON property `classTemplateInfo`
        # @return [Google::Apis::WalletobjectsV1::ClassTemplateInfo]
        attr_accessor :class_template_info
      
        # Country code used to display the card's country (when the user is not in that
        # country), as well as to display localized content when content is not
        # available in the user's locale.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # A custom label to use for the carriage value (`transitObject.ticketLeg.
        # carriage`).
        # Corresponds to the JSON property `customCarriageLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_carriage_label
      
        # A custom label to use for the coach value (`transitObject.ticketLeg.ticketSeat.
        # coach`).
        # Corresponds to the JSON property `customCoachLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_coach_label
      
        # A custom label to use for the transit concession category value (`
        # transitObject.concessionCategory`).
        # Corresponds to the JSON property `customConcessionCategoryLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_concession_category_label
      
        # A custom label to use for the confirmation code value (`transitObject.
        # purchaseDetails.confirmationCode`).
        # Corresponds to the JSON property `customConfirmationCodeLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_confirmation_code_label
      
        # A custom label to use for the transit discount message value (`transitObject.
        # purchaseDetails.ticketCost.discountMessage`).
        # Corresponds to the JSON property `customDiscountMessageLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_discount_message_label
      
        # A custom label to use for the fare class value (`transitObject.ticketLeg.
        # ticketSeat.fareClass`).
        # Corresponds to the JSON property `customFareClassLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_fare_class_label
      
        # A custom label to use for the transit fare name value (`transitObject.
        # ticketLeg.fareName`).
        # Corresponds to the JSON property `customFareNameLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_fare_name_label
      
        # A custom label to use for the other restrictions value (`transitObject.
        # ticketRestrictions.otherRestrictions`).
        # Corresponds to the JSON property `customOtherRestrictionsLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_other_restrictions_label
      
        # A custom label to use for the boarding platform value (`transitObject.
        # ticketLeg.platform`).
        # Corresponds to the JSON property `customPlatformLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_platform_label
      
        # A custom label to use for the purchase face value (`transitObject.
        # purchaseDetails.ticketCost.faceValue`).
        # Corresponds to the JSON property `customPurchaseFaceValueLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_purchase_face_value_label
      
        # A custom label to use for the purchase price value (`transitObject.
        # purchaseDetails.ticketCost.purchasePrice`).
        # Corresponds to the JSON property `customPurchasePriceLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_purchase_price_label
      
        # A custom label to use for the purchase receipt number value (`transitObject.
        # purchaseDetails.purchaseReceiptNumber`).
        # Corresponds to the JSON property `customPurchaseReceiptNumberLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_purchase_receipt_number_label
      
        # A custom label to use for the route restrictions details value (`transitObject.
        # ticketRestrictions.routeRestrictionsDetails`).
        # Corresponds to the JSON property `customRouteRestrictionsDetailsLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_route_restrictions_details_label
      
        # A custom label to use for the route restrictions value (`transitObject.
        # ticketRestrictions.routeRestrictions`).
        # Corresponds to the JSON property `customRouteRestrictionsLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_route_restrictions_label
      
        # A custom label to use for the seat location value (`transitObject.ticketLeg.
        # ticketSeat.seat`).
        # Corresponds to the JSON property `customSeatLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_seat_label
      
        # A custom label to use for the ticket number value (`transitObject.ticketNumber`
        # ).
        # Corresponds to the JSON property `customTicketNumberLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_ticket_number_label
      
        # A custom label to use for the time restrictions details value (`transitObject.
        # ticketRestrictions.timeRestrictions`).
        # Corresponds to the JSON property `customTimeRestrictionsLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_time_restrictions_label
      
        # A custom label to use for the transit terminus name value (`transitObject.
        # ticketLeg.transitTerminusName`).
        # Corresponds to the JSON property `customTransitTerminusNameLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_transit_terminus_name_label
      
        # A custom label to use for the boarding zone value (`transitObject.ticketLeg.
        # zone`).
        # Corresponds to the JSON property `customZoneLabel`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_zone_label
      
        # Controls the display of the single-leg itinerary for this class. By default,
        # an itinerary will only display for multi-leg trips.
        # Corresponds to the JSON property `enableSingleLegItinerary`
        # @return [Boolean]
        attr_accessor :enable_single_leg_itinerary
        alias_method :enable_single_leg_itinerary?, :enable_single_leg_itinerary
      
        # Identifies whether this class supports Smart Tap. The `redemptionIssuers` and
        # object level `smartTapRedemptionLevel` fields must also be set up correctly in
        # order for a pass to support Smart Tap.
        # Corresponds to the JSON property `enableSmartTap`
        # @return [Boolean]
        attr_accessor :enable_smart_tap
        alias_method :enable_smart_tap?, :enable_smart_tap
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # The URI of your application's home page. Populating the URI in this field
        # results in the exact same behavior as populating an URI in linksModuleData (
        # when an object is rendered, a link to the homepage is shown in what would
        # usually be thought of as the linksModuleData section of the object).
        # Corresponds to the JSON property `homepageUri`
        # @return [Google::Apis::WalletobjectsV1::Uri]
        attr_accessor :homepage_uri
      
        # Required. The unique identifier for a class. This ID must be unique across all
        # classes from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # Your unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Required. The issuer name. Recommended maximum length is 20 characters to
        # ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `issuerName`
        # @return [String]
        attr_accessor :issuer_name
      
        # If this field is present, transit tickets served to a user's device will
        # always be in this language. Represents the BCP 47 language tag. Example values
        # are "en-US", "en-GB", "de", or "de-AT".
        # Corresponds to the JSON property `languageOverride`
        # @return [String]
        attr_accessor :language_override
      
        # Links module data. If links module data is also defined on the object, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Translated strings for the issuer_name. Recommended maximum length is 20
        # characters to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedIssuerName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_issuer_name
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `logo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :logo
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Identifies whether multiple users and devices will save the same object
        # referencing this class.
        # Corresponds to the JSON property `multipleDevicesAndHoldersAllowedStatus`
        # @return [String]
        attr_accessor :multiple_devices_and_holders_allowed_status
      
        # Identifies which redemption issuers can redeem the pass over Smart Tap.
        # Redemption issuers are identified by their issuer ID. Redemption issuers must
        # have at least one Smart Tap key configured. The `enableSmartTap` and object
        # level `smartTapRedemptionLevel` fields must also be set up correctly in order
        # for a pass to support Smart Tap.
        # Corresponds to the JSON property `redemptionIssuers`
        # @return [Array<Fixnum>]
        attr_accessor :redemption_issuers
      
        # The review comments set by the platform when a class is marked `approved` or `
        # rejected`.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::WalletobjectsV1::Review]
        attr_accessor :review
      
        # Required. The status of the class. This field can be set to `draft` or `
        # underReview` using the insert, patch, or update API calls. Once the review
        # state is changed from `draft` it may not be changed back to `draft`. You
        # should keep this field to `draft` when the class is under development. A `
        # draft` class cannot be used to create any object. You should set this field to
        # `underReview` when you believe the class is ready for use. The platform will
        # automatically set this field to `approved` and it can be immediately used to
        # create or migrate objects. When updating an already `approved` class you
        # should keep setting this field to `underReview`.
        # Corresponds to the JSON property `reviewStatus`
        # @return [String]
        attr_accessor :review_status
      
        # Optional information about the security animation. If this is set a security
        # animation will be rendered on pass details.
        # Corresponds to the JSON property `securityAnimation`
        # @return [Google::Apis::WalletobjectsV1::SecurityAnimation]
        attr_accessor :security_animation
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # The name of the transit operator.
        # Corresponds to the JSON property `transitOperatorName`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :transit_operator_name
      
        # Required. The type of transit this class represents, such as "bus".
        # Corresponds to the JSON property `transitType`
        # @return [String]
        attr_accessor :transit_type
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # View Unlock Requirement options for the transit ticket.
        # Corresponds to the JSON property `viewUnlockRequirement`
        # @return [String]
        attr_accessor :view_unlock_requirement
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `watermark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :watermark
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wideLogo`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :wide_logo
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `wordMark`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :word_mark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_options = args[:activation_options] if args.key?(:activation_options)
          @allow_multiple_users_per_object = args[:allow_multiple_users_per_object] if args.key?(:allow_multiple_users_per_object)
          @callback_options = args[:callback_options] if args.key?(:callback_options)
          @class_template_info = args[:class_template_info] if args.key?(:class_template_info)
          @country_code = args[:country_code] if args.key?(:country_code)
          @custom_carriage_label = args[:custom_carriage_label] if args.key?(:custom_carriage_label)
          @custom_coach_label = args[:custom_coach_label] if args.key?(:custom_coach_label)
          @custom_concession_category_label = args[:custom_concession_category_label] if args.key?(:custom_concession_category_label)
          @custom_confirmation_code_label = args[:custom_confirmation_code_label] if args.key?(:custom_confirmation_code_label)
          @custom_discount_message_label = args[:custom_discount_message_label] if args.key?(:custom_discount_message_label)
          @custom_fare_class_label = args[:custom_fare_class_label] if args.key?(:custom_fare_class_label)
          @custom_fare_name_label = args[:custom_fare_name_label] if args.key?(:custom_fare_name_label)
          @custom_other_restrictions_label = args[:custom_other_restrictions_label] if args.key?(:custom_other_restrictions_label)
          @custom_platform_label = args[:custom_platform_label] if args.key?(:custom_platform_label)
          @custom_purchase_face_value_label = args[:custom_purchase_face_value_label] if args.key?(:custom_purchase_face_value_label)
          @custom_purchase_price_label = args[:custom_purchase_price_label] if args.key?(:custom_purchase_price_label)
          @custom_purchase_receipt_number_label = args[:custom_purchase_receipt_number_label] if args.key?(:custom_purchase_receipt_number_label)
          @custom_route_restrictions_details_label = args[:custom_route_restrictions_details_label] if args.key?(:custom_route_restrictions_details_label)
          @custom_route_restrictions_label = args[:custom_route_restrictions_label] if args.key?(:custom_route_restrictions_label)
          @custom_seat_label = args[:custom_seat_label] if args.key?(:custom_seat_label)
          @custom_ticket_number_label = args[:custom_ticket_number_label] if args.key?(:custom_ticket_number_label)
          @custom_time_restrictions_label = args[:custom_time_restrictions_label] if args.key?(:custom_time_restrictions_label)
          @custom_transit_terminus_name_label = args[:custom_transit_terminus_name_label] if args.key?(:custom_transit_terminus_name_label)
          @custom_zone_label = args[:custom_zone_label] if args.key?(:custom_zone_label)
          @enable_single_leg_itinerary = args[:enable_single_leg_itinerary] if args.key?(:enable_single_leg_itinerary)
          @enable_smart_tap = args[:enable_smart_tap] if args.key?(:enable_smart_tap)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @issuer_name = args[:issuer_name] if args.key?(:issuer_name)
          @language_override = args[:language_override] if args.key?(:language_override)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @localized_issuer_name = args[:localized_issuer_name] if args.key?(:localized_issuer_name)
          @locations = args[:locations] if args.key?(:locations)
          @logo = args[:logo] if args.key?(:logo)
          @messages = args[:messages] if args.key?(:messages)
          @multiple_devices_and_holders_allowed_status = args[:multiple_devices_and_holders_allowed_status] if args.key?(:multiple_devices_and_holders_allowed_status)
          @redemption_issuers = args[:redemption_issuers] if args.key?(:redemption_issuers)
          @review = args[:review] if args.key?(:review)
          @review_status = args[:review_status] if args.key?(:review_status)
          @security_animation = args[:security_animation] if args.key?(:security_animation)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @transit_operator_name = args[:transit_operator_name] if args.key?(:transit_operator_name)
          @transit_type = args[:transit_type] if args.key?(:transit_type)
          @version = args[:version] if args.key?(:version)
          @view_unlock_requirement = args[:view_unlock_requirement] if args.key?(:view_unlock_requirement)
          @watermark = args[:watermark] if args.key?(:watermark)
          @wide_logo = args[:wide_logo] if args.key?(:wide_logo)
          @word_mark = args[:word_mark] if args.key?(:word_mark)
        end
      end
      
      # 
      class TransitClassAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated TransitClass resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::TransitClass]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class TransitClassListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::TransitClass>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class TransitObject
        include Google::Apis::Core::Hashable
      
        # The activation status of the object. This field includes activation status if
        # valuable supports activation.
        # Corresponds to the JSON property `activationStatus`
        # @return [Google::Apis::WalletobjectsV1::ActivationStatus]
        attr_accessor :activation_status
      
        # Optional information about the partner app link.
        # Corresponds to the JSON property `appLinkData`
        # @return [Google::Apis::WalletobjectsV1::AppLinkData]
        attr_accessor :app_link_data
      
        # The barcode type and value.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::WalletobjectsV1::Barcode]
        attr_accessor :barcode
      
        # Required. The class associated with this object. The class must be of the same
        # type as this object, must already exist, and must be approved. Class IDs
        # should follow the format issuer ID.identifier where the former is issued by
        # Google and latter is chosen by you.
        # Corresponds to the JSON property `classId`
        # @return [String]
        attr_accessor :class_id
      
        # A copy of the inherited fields of the parent class. These fields are retrieved
        # during a GET.
        # Corresponds to the JSON property `classReference`
        # @return [Google::Apis::WalletobjectsV1::TransitClass]
        attr_accessor :class_reference
      
        # The concession category for the ticket.
        # Corresponds to the JSON property `concessionCategory`
        # @return [String]
        attr_accessor :concession_category
      
        # A custom concession category to use when `concessionCategory` does not provide
        # the right option. Both `concessionCategory` and `customConcessionCategory` may
        # not be set.
        # Corresponds to the JSON property `customConcessionCategory`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_concession_category
      
        # A custom status to use for the ticket status value when `ticketStatus` does
        # not provide the right option. Both `ticketStatus` and `customTicketStatus` may
        # not be set.
        # Corresponds to the JSON property `customTicketStatus`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :custom_ticket_status
      
        # Device context associated with the object.
        # Corresponds to the JSON property `deviceContext`
        # @return [Google::Apis::WalletobjectsV1::DeviceContext]
        attr_accessor :device_context
      
        # Indicates if notifications should explicitly be suppressed. If this field is
        # set to true, regardless of the `messages` field, expiration notifications to
        # the user will be suppressed. By default, this field is set to false. Currently,
        # this can only be set for offers.
        # Corresponds to the JSON property `disableExpirationNotification`
        # @return [Boolean]
        attr_accessor :disable_expiration_notification
        alias_method :disable_expiration_notification?, :disable_expiration_notification
      
        # Information that controls how passes are grouped together.
        # Corresponds to the JSON property `groupingInfo`
        # @return [Google::Apis::WalletobjectsV1::GroupingInfo]
        attr_accessor :grouping_info
      
        # Whether this object is currently linked to a single device. This field is set
        # by the platform when a user saves the object, linking it to their device.
        # Intended for use by select partners. Contact support for additional
        # information.
        # Corresponds to the JSON property `hasLinkedDevice`
        # @return [Boolean]
        attr_accessor :has_linked_device
        alias_method :has_linked_device?, :has_linked_device
      
        # Indicates if the object has users. This field is set by the platform.
        # Corresponds to the JSON property `hasUsers`
        # @return [Boolean]
        attr_accessor :has_users
        alias_method :has_users?, :has_users
      
        # Wrapping type for Google hosted images. Next ID: 7
        # Corresponds to the JSON property `heroImage`
        # @return [Google::Apis::WalletobjectsV1::Image]
        attr_accessor :hero_image
      
        # The background color for the card. If not set the dominant color of the hero
        # image is used, and if no hero image is set, the dominant color of the logo is
        # used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#
        # ffcc00`. You can also use the shorthand version of the RGB triplet which is #
        # rgb, such as `#fc0`.
        # Corresponds to the JSON property `hexBackgroundColor`
        # @return [String]
        attr_accessor :hex_background_color
      
        # Required. The unique identifier for an object. This ID must be unique across
        # all objects from an issuer. This value should follow the format issuer ID.
        # identifier where the former is issued by Google and latter is chosen by you.
        # The unique identifier should only include alphanumeric characters, '.', '_',
        # or '-'.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Image module data. The maximum number of these fields displayed is 1 from
        # object level and 1 for class object level.
        # Corresponds to the JSON property `imageModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::ImageModuleData>]
        attr_accessor :image_modules_data
      
        # Deprecated. Use textModulesData instead.
        # Corresponds to the JSON property `infoModuleData`
        # @return [Google::Apis::WalletobjectsV1::InfoModuleData]
        attr_accessor :info_module_data
      
        # Links module data. If links module data is also defined on the class, both
        # will be displayed.
        # Corresponds to the JSON property `linksModuleData`
        # @return [Google::Apis::WalletobjectsV1::LinksModuleData]
        attr_accessor :links_module_data
      
        # Note: This field is currently not supported to trigger geo notifications.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WalletobjectsV1::LatLongPoint>]
        attr_accessor :locations
      
        # An array of messages displayed in the app. All users of this object will
        # receive its associated messages. The maximum number of these fields is 10.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::WalletobjectsV1::Message>]
        attr_accessor :messages
      
        # Container for any constraints that may be placed on passes.
        # Corresponds to the JSON property `passConstraints`
        # @return [Google::Apis::WalletobjectsV1::PassConstraints]
        attr_accessor :pass_constraints
      
        # The name(s) of the passengers the ticket is assigned to. The above `
        # passengerType` field is meant to give Google context on this field.
        # Corresponds to the JSON property `passengerNames`
        # @return [String]
        attr_accessor :passenger_names
      
        # The number of passengers.
        # Corresponds to the JSON property `passengerType`
        # @return [String]
        attr_accessor :passenger_type
      
        # Purchase details for this ticket.
        # Corresponds to the JSON property `purchaseDetails`
        # @return [Google::Apis::WalletobjectsV1::PurchaseDetails]
        attr_accessor :purchase_details
      
        # The rotating barcode type and value.
        # Corresponds to the JSON property `rotatingBarcode`
        # @return [Google::Apis::WalletobjectsV1::RotatingBarcode]
        attr_accessor :rotating_barcode
      
        # The value that will be transmitted to a Smart Tap certified terminal over NFC
        # for this object. The class level fields `enableSmartTap` and `
        # redemptionIssuers` must also be set up correctly in order for the pass to
        # support Smart Tap. Only ASCII characters are supported.
        # Corresponds to the JSON property `smartTapRedemptionValue`
        # @return [String]
        attr_accessor :smart_tap_redemption_value
      
        # Required. The state of the object. This field is used to determine how an
        # object is displayed in the app. For example, an `inactive` object is moved to
        # the "Expired passes" section.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Text module data. If text module data is also defined on the class, both will
        # be displayed. The maximum number of these fields displayed is 10 from the
        # object and 10 from the class.
        # Corresponds to the JSON property `textModulesData`
        # @return [Array<Google::Apis::WalletobjectsV1::TextModuleData>]
        attr_accessor :text_modules_data
      
        # A single ticket leg contains departure and arrival information along with
        # boarding and seating information. If more than one leg is to be specified then
        # use the `ticketLegs` field instead. Both `ticketLeg` and `ticketLegs` may not
        # be set.
        # Corresponds to the JSON property `ticketLeg`
        # @return [Google::Apis::WalletobjectsV1::TicketLeg]
        attr_accessor :ticket_leg
      
        # Each ticket may contain one or more legs. Each leg contains departure and
        # arrival information along with boarding and seating information. If only one
        # leg is to be specified then use the `ticketLeg` field instead. Both `ticketLeg`
        # and `ticketLegs` may not be set.
        # Corresponds to the JSON property `ticketLegs`
        # @return [Array<Google::Apis::WalletobjectsV1::TicketLeg>]
        attr_accessor :ticket_legs
      
        # The number of the ticket. This is a unique identifier for the ticket in the
        # transit operator's system.
        # Corresponds to the JSON property `ticketNumber`
        # @return [String]
        attr_accessor :ticket_number
      
        # Information about what kind of restrictions there are on using this ticket.
        # For example, which days of the week it must be used, or which routes are
        # allowed to be taken.
        # Corresponds to the JSON property `ticketRestrictions`
        # @return [Google::Apis::WalletobjectsV1::TicketRestrictions]
        attr_accessor :ticket_restrictions
      
        # The status of the ticket. For states which affect display, use the `state`
        # field instead.
        # Corresponds to the JSON property `ticketStatus`
        # @return [String]
        attr_accessor :ticket_status
      
        # This id is used to group tickets together if the user has saved multiple
        # tickets for the same trip.
        # Corresponds to the JSON property `tripId`
        # @return [String]
        attr_accessor :trip_id
      
        # Required. The type of trip this transit object represents. Used to determine
        # the pass title and/or which symbol to use between the origin and destination.
        # Corresponds to the JSON property `tripType`
        # @return [String]
        attr_accessor :trip_type
      
        # The time period this object will be `active` and object can be used. An object'
        # s state will be changed to `expired` when this time period has passed.
        # Corresponds to the JSON property `validTimeInterval`
        # @return [Google::Apis::WalletobjectsV1::TimeInterval]
        attr_accessor :valid_time_interval
      
        # Deprecated
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_status = args[:activation_status] if args.key?(:activation_status)
          @app_link_data = args[:app_link_data] if args.key?(:app_link_data)
          @barcode = args[:barcode] if args.key?(:barcode)
          @class_id = args[:class_id] if args.key?(:class_id)
          @class_reference = args[:class_reference] if args.key?(:class_reference)
          @concession_category = args[:concession_category] if args.key?(:concession_category)
          @custom_concession_category = args[:custom_concession_category] if args.key?(:custom_concession_category)
          @custom_ticket_status = args[:custom_ticket_status] if args.key?(:custom_ticket_status)
          @device_context = args[:device_context] if args.key?(:device_context)
          @disable_expiration_notification = args[:disable_expiration_notification] if args.key?(:disable_expiration_notification)
          @grouping_info = args[:grouping_info] if args.key?(:grouping_info)
          @has_linked_device = args[:has_linked_device] if args.key?(:has_linked_device)
          @has_users = args[:has_users] if args.key?(:has_users)
          @hero_image = args[:hero_image] if args.key?(:hero_image)
          @hex_background_color = args[:hex_background_color] if args.key?(:hex_background_color)
          @id = args[:id] if args.key?(:id)
          @image_modules_data = args[:image_modules_data] if args.key?(:image_modules_data)
          @info_module_data = args[:info_module_data] if args.key?(:info_module_data)
          @links_module_data = args[:links_module_data] if args.key?(:links_module_data)
          @locations = args[:locations] if args.key?(:locations)
          @messages = args[:messages] if args.key?(:messages)
          @pass_constraints = args[:pass_constraints] if args.key?(:pass_constraints)
          @passenger_names = args[:passenger_names] if args.key?(:passenger_names)
          @passenger_type = args[:passenger_type] if args.key?(:passenger_type)
          @purchase_details = args[:purchase_details] if args.key?(:purchase_details)
          @rotating_barcode = args[:rotating_barcode] if args.key?(:rotating_barcode)
          @smart_tap_redemption_value = args[:smart_tap_redemption_value] if args.key?(:smart_tap_redemption_value)
          @state = args[:state] if args.key?(:state)
          @text_modules_data = args[:text_modules_data] if args.key?(:text_modules_data)
          @ticket_leg = args[:ticket_leg] if args.key?(:ticket_leg)
          @ticket_legs = args[:ticket_legs] if args.key?(:ticket_legs)
          @ticket_number = args[:ticket_number] if args.key?(:ticket_number)
          @ticket_restrictions = args[:ticket_restrictions] if args.key?(:ticket_restrictions)
          @ticket_status = args[:ticket_status] if args.key?(:ticket_status)
          @trip_id = args[:trip_id] if args.key?(:trip_id)
          @trip_type = args[:trip_type] if args.key?(:trip_type)
          @valid_time_interval = args[:valid_time_interval] if args.key?(:valid_time_interval)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class TransitObjectAddMessageResponse
        include Google::Apis::Core::Hashable
      
        # The updated TransitObject resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WalletobjectsV1::TransitObject]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class TransitObjectListResponse
        include Google::Apis::Core::Hashable
      
        # Pagination of the response.
        # Corresponds to the JSON property `pagination`
        # @return [Google::Apis::WalletobjectsV1::Pagination]
        attr_accessor :pagination
      
        # Resources corresponding to the list request.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WalletobjectsV1::TransitObject>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pagination = args[:pagination] if args.key?(:pagination)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Request to upload rotating barcode values.
      class TransitObjectUploadRotatingBarcodeValuesRequest
        include Google::Apis::Core::Hashable
      
        # A reference to data stored on the filesystem, on GFS or in blobstore.
        # Corresponds to the JSON property `blob`
        # @return [Google::Apis::WalletobjectsV1::Media]
        attr_accessor :blob
      
        # Extra information added to operations that support Scotty media requests.
        # Corresponds to the JSON property `mediaRequestInfo`
        # @return [Google::Apis::WalletobjectsV1::MediaRequestInfo]
        attr_accessor :media_request_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob = args[:blob] if args.key?(:blob)
          @media_request_info = args[:media_request_info] if args.key?(:media_request_info)
        end
      end
      
      # Response for uploading rotating barcode values.
      class TransitObjectUploadRotatingBarcodeValuesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class TranslatedString
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#translatedString"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Represents the BCP 47 language tag. Example values are "en-US", "en-GB", "de",
        # or "de-AT".
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The UTF-8 encoded translated string.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @language = args[:language] if args.key?(:language)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Indicates that the issuer would like Google Wallet to send an upcoming card
      # validity notification 1 day before card becomes valid/usable.
      class UpcomingNotification
        include Google::Apis::Core::Hashable
      
        # Indicates if the object needs to have upcoming notification enabled.
        # Corresponds to the JSON property `enableNotification`
        # @return [Boolean]
        attr_accessor :enable_notification
        alias_method :enable_notification?, :enable_notification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_notification = args[:enable_notification] if args.key?(:enable_notification)
        end
      end
      
      # Request for sending user private Text or URI by the Issuer.
      class UploadPrivateDataRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the issuer sending the data.
        # Corresponds to the JSON property `issuerId`
        # @return [Fixnum]
        attr_accessor :issuer_id
      
        # Private data for TextModule. This data will be rendered as a TextModule for a
        # pass.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::WalletobjectsV1::PrivateText]
        attr_accessor :text
      
        # Private data for LinkModule. This data will be rendered as the LinkModule for
        # a pass.
        # Corresponds to the JSON property `uri`
        # @return [Google::Apis::WalletobjectsV1::PrivateUri]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issuer_id = args[:issuer_id] if args.key?(:issuer_id)
          @text = args[:text] if args.key?(:text)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Response for uploading user private data (text or URIs)
      class UploadPrivateDataResponse
        include Google::Apis::Core::Hashable
      
        # A 64-bit content id for the private data that was uploaded by the Issuer.
        # Corresponds to the JSON property `privateContentId`
        # @return [Fixnum]
        attr_accessor :private_content_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_content_id = args[:private_content_id] if args.key?(:private_content_id)
        end
      end
      
      # Request to upload user's private images by Issuers to be used in passes.
      class UploadPrivateImageRequest
        include Google::Apis::Core::Hashable
      
        # A reference to data stored on the filesystem, on GFS or in blobstore.
        # Corresponds to the JSON property `blob`
        # @return [Google::Apis::WalletobjectsV1::Media]
        attr_accessor :blob
      
        # Extra information added to operations that support Scotty media requests.
        # Corresponds to the JSON property `mediaRequestInfo`
        # @return [Google::Apis::WalletobjectsV1::MediaRequestInfo]
        attr_accessor :media_request_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob = args[:blob] if args.key?(:blob)
          @media_request_info = args[:media_request_info] if args.key?(:media_request_info)
        end
      end
      
      # Response for uploading the private image
      class UploadPrivateImageResponse
        include Google::Apis::Core::Hashable
      
        # A 64-bit content id for the image that was uploaded by the Issuer.
        # Corresponds to the JSON property `privateContentId`
        # @return [Fixnum]
        attr_accessor :private_content_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_content_id = args[:private_content_id] if args.key?(:private_content_id)
        end
      end
      
      # 
      class Uri
        include Google::Apis::Core::Hashable
      
        # The URI's title appearing in the app as text. Recommended maximum is 20
        # characters to ensure full string is displayed on smaller screens. Note that in
        # some contexts this text is not used, such as when `description` is part of an
        # image.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The ID associated with a uri. This field is here to enable ease of management
        # of uris.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string `"
        # walletobjects#uri"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Translated strings for the description. Recommended maximum is 20 characters
        # to ensure full string is displayed on smaller screens.
        # Corresponds to the JSON property `localizedDescription`
        # @return [Google::Apis::WalletobjectsV1::LocalizedString]
        attr_accessor :localized_description
      
        # The location of a web page, image, or other resource. URIs in the `
        # LinksModuleData` module can have different prefixes indicating the type of URI
        # (a link to a web page, a link to a map, a telephone number, or an email
        # address). URIs must have a scheme.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @localized_description = args[:localized_description] if args.key?(:localized_description)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
    end
  end
end
