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
    module MybusinesslodgingV1
      
      # Physical adaptations made to the property in consideration of varying levels
      # of human physical ability.
      class Accessibility
        include Google::Apis::Core::Hashable
      
        # Mobility accessible. Throughout the property there are physical adaptations to
        # ease the stay of a person in a wheelchair, such as auto-opening doors, wide
        # elevators, wide bathrooms or ramps.
        # Corresponds to the JSON property `mobilityAccessible`
        # @return [Boolean]
        attr_accessor :mobility_accessible
        alias_method :mobility_accessible?, :mobility_accessible
      
        # Mobility accessible elevator. A lift that transports people from one level to
        # another and is built to accommodate a wheelchair-using passenger owing to the
        # width of its doors and placement of call buttons.
        # Corresponds to the JSON property `mobilityAccessibleElevator`
        # @return [Boolean]
        attr_accessor :mobility_accessible_elevator
        alias_method :mobility_accessible_elevator?, :mobility_accessible_elevator
      
        # Mobility accessible elevator exception.
        # Corresponds to the JSON property `mobilityAccessibleElevatorException`
        # @return [String]
        attr_accessor :mobility_accessible_elevator_exception
      
        # Mobility accessible exception.
        # Corresponds to the JSON property `mobilityAccessibleException`
        # @return [String]
        attr_accessor :mobility_accessible_exception
      
        # Mobility accessible parking. The presence of a marked, designated area of
        # prescribed size in which only registered, labeled vehicles transporting a
        # person with physical challenges may park.
        # Corresponds to the JSON property `mobilityAccessibleParking`
        # @return [Boolean]
        attr_accessor :mobility_accessible_parking
        alias_method :mobility_accessible_parking?, :mobility_accessible_parking
      
        # Mobility accessible parking exception.
        # Corresponds to the JSON property `mobilityAccessibleParkingException`
        # @return [String]
        attr_accessor :mobility_accessible_parking_exception
      
        # Mobility accessible pool. A swimming pool equipped with a mechanical chair
        # that can be lowered and raised for the purpose of moving physically challenged
        # guests into and out of the pool. May be powered by electricity or water. Also
        # known as pool lift.
        # Corresponds to the JSON property `mobilityAccessiblePool`
        # @return [Boolean]
        attr_accessor :mobility_accessible_pool
        alias_method :mobility_accessible_pool?, :mobility_accessible_pool
      
        # Mobility accessible pool exception.
        # Corresponds to the JSON property `mobilityAccessiblePoolException`
        # @return [String]
        attr_accessor :mobility_accessible_pool_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobility_accessible = args[:mobility_accessible] if args.key?(:mobility_accessible)
          @mobility_accessible_elevator = args[:mobility_accessible_elevator] if args.key?(:mobility_accessible_elevator)
          @mobility_accessible_elevator_exception = args[:mobility_accessible_elevator_exception] if args.key?(:mobility_accessible_elevator_exception)
          @mobility_accessible_exception = args[:mobility_accessible_exception] if args.key?(:mobility_accessible_exception)
          @mobility_accessible_parking = args[:mobility_accessible_parking] if args.key?(:mobility_accessible_parking)
          @mobility_accessible_parking_exception = args[:mobility_accessible_parking_exception] if args.key?(:mobility_accessible_parking_exception)
          @mobility_accessible_pool = args[:mobility_accessible_pool] if args.key?(:mobility_accessible_pool)
          @mobility_accessible_pool_exception = args[:mobility_accessible_pool_exception] if args.key?(:mobility_accessible_pool_exception)
        end
      end
      
      # Amenities and features related to leisure and play.
      class Activities
        include Google::Apis::Core::Hashable
      
        # Beach access. The hotel property is in close proximity to a beach and offers a
        # way to get to that beach. This can include a route to the beach such as stairs
        # down if hotel is on a bluff, or a short trail. Not the same as beachfront (
        # with beach access, the hotel's proximity is close to but not right on the
        # beach).
        # Corresponds to the JSON property `beachAccess`
        # @return [Boolean]
        attr_accessor :beach_access
        alias_method :beach_access?, :beach_access
      
        # Beach access exception.
        # Corresponds to the JSON property `beachAccessException`
        # @return [String]
        attr_accessor :beach_access_exception
      
        # Breach front. The hotel property is physically located on the beach alongside
        # an ocean, sea, gulf, or bay. It is not on a lake, river, stream, or pond. The
        # hotel is not separated from the beach by a public road allowing vehicular,
        # pedestrian, or bicycle traffic.
        # Corresponds to the JSON property `beachFront`
        # @return [Boolean]
        attr_accessor :beach_front
        alias_method :beach_front?, :beach_front
      
        # Beach front exception.
        # Corresponds to the JSON property `beachFrontException`
        # @return [String]
        attr_accessor :beach_front_exception
      
        # Bicycle rental. The hotel owns bicycles that it permits guests to borrow and
        # use. Can be free or for a fee.
        # Corresponds to the JSON property `bicycleRental`
        # @return [Boolean]
        attr_accessor :bicycle_rental
        alias_method :bicycle_rental?, :bicycle_rental
      
        # Bicycle rental exception.
        # Corresponds to the JSON property `bicycleRentalException`
        # @return [String]
        attr_accessor :bicycle_rental_exception
      
        # Boutique stores. There are stores selling clothing, jewelry, art and decor
        # either on hotel premises or very close by. Does not refer to the hotel gift
        # shop or convenience store.
        # Corresponds to the JSON property `boutiqueStores`
        # @return [Boolean]
        attr_accessor :boutique_stores
        alias_method :boutique_stores?, :boutique_stores
      
        # Boutique stores exception.
        # Corresponds to the JSON property `boutiqueStoresException`
        # @return [String]
        attr_accessor :boutique_stores_exception
      
        # Casino. A space designated for gambling and gaming featuring croupier-run
        # table and card games, as well as electronic slot machines. May be on hotel
        # premises or located nearby.
        # Corresponds to the JSON property `casino`
        # @return [Boolean]
        attr_accessor :casino
        alias_method :casino?, :casino
      
        # Casino exception.
        # Corresponds to the JSON property `casinoException`
        # @return [String]
        attr_accessor :casino_exception
      
        # Free bicycle rental. The hotel owns bicycles that it permits guests to borrow
        # and use for free.
        # Corresponds to the JSON property `freeBicycleRental`
        # @return [Boolean]
        attr_accessor :free_bicycle_rental
        alias_method :free_bicycle_rental?, :free_bicycle_rental
      
        # Free bicycle rental exception.
        # Corresponds to the JSON property `freeBicycleRentalException`
        # @return [String]
        attr_accessor :free_bicycle_rental_exception
      
        # Free watercraft rental. The hotel owns watercraft that it permits guests to
        # borrow and use for free.
        # Corresponds to the JSON property `freeWatercraftRental`
        # @return [Boolean]
        attr_accessor :free_watercraft_rental
        alias_method :free_watercraft_rental?, :free_watercraft_rental
      
        # Free Watercraft rental exception.
        # Corresponds to the JSON property `freeWatercraftRentalException`
        # @return [String]
        attr_accessor :free_watercraft_rental_exception
      
        # Game room. There is a room at the hotel containing electronic machines for
        # play such as pinball, prize machines, driving simulators, and other items
        # commonly found at a family fun center or arcade. May also include non-
        # electronic games like pool, foosball, darts, and more. May or may not be
        # designed for children. Also known as arcade, fun room, or family fun center.
        # Corresponds to the JSON property `gameRoom`
        # @return [Boolean]
        attr_accessor :game_room
        alias_method :game_room?, :game_room
      
        # Game room exception.
        # Corresponds to the JSON property `gameRoomException`
        # @return [String]
        attr_accessor :game_room_exception
      
        # Golf. There is a golf course on hotel grounds or there is a nearby,
        # independently run golf course that allows use by hotel guests. Can be free or
        # for a fee.
        # Corresponds to the JSON property `golf`
        # @return [Boolean]
        attr_accessor :golf
        alias_method :golf?, :golf
      
        # Golf exception.
        # Corresponds to the JSON property `golfException`
        # @return [String]
        attr_accessor :golf_exception
      
        # Horseback riding. The hotel has a horse barn onsite or an affiliation with a
        # nearby barn to allow for guests to sit astride a horse and direct it to walk,
        # trot, cantor, gallop and/or jump. Can be in a riding ring, on designated paths,
        # or in the wilderness. May or may not involve instruction.
        # Corresponds to the JSON property `horsebackRiding`
        # @return [Boolean]
        attr_accessor :horseback_riding
        alias_method :horseback_riding?, :horseback_riding
      
        # Horseback riding exception.
        # Corresponds to the JSON property `horsebackRidingException`
        # @return [String]
        attr_accessor :horseback_riding_exception
      
        # Nightclub. There is a room at the hotel with a bar, a dance floor, and seating
        # where designated staffers play dance music. There may also be a designated
        # area for the performance of live music, singing and comedy acts.
        # Corresponds to the JSON property `nightclub`
        # @return [Boolean]
        attr_accessor :nightclub
        alias_method :nightclub?, :nightclub
      
        # Nightclub exception.
        # Corresponds to the JSON property `nightclubException`
        # @return [String]
        attr_accessor :nightclub_exception
      
        # Private beach. The beach which is in close proximity to the hotel is open only
        # to guests.
        # Corresponds to the JSON property `privateBeach`
        # @return [Boolean]
        attr_accessor :private_beach
        alias_method :private_beach?, :private_beach
      
        # Private beach exception.
        # Corresponds to the JSON property `privateBeachException`
        # @return [String]
        attr_accessor :private_beach_exception
      
        # Scuba. The provision for guests to dive under naturally occurring water fitted
        # with a self-contained underwater breathing apparatus (SCUBA) for the purpose
        # of exploring underwater life. Apparatus consists of a tank providing oxygen to
        # the diver through a mask. Requires certification of the diver and supervision.
        # The hotel may have the activity at its own waterfront or have an affiliation
        # with a nearby facility. Required equipment is most often supplied to guests.
        # Can be free or for a fee. Not snorkeling. Not done in a swimming pool.
        # Corresponds to the JSON property `scuba`
        # @return [Boolean]
        attr_accessor :scuba
        alias_method :scuba?, :scuba
      
        # Scuba exception.
        # Corresponds to the JSON property `scubaException`
        # @return [String]
        attr_accessor :scuba_exception
      
        # Snorkeling. The provision for guests to participate in a recreational water
        # activity in which swimmers wear a diving mask, a simple, shaped breathing tube
        # and flippers/swim fins for the purpose of exploring below the surface of an
        # ocean, gulf or lake. Does not usually require user certification or
        # professional supervision. Equipment may or may not be available for rent or
        # purchase. Not scuba diving.
        # Corresponds to the JSON property `snorkeling`
        # @return [Boolean]
        attr_accessor :snorkeling
        alias_method :snorkeling?, :snorkeling
      
        # Snorkeling exception.
        # Corresponds to the JSON property `snorkelingException`
        # @return [String]
        attr_accessor :snorkeling_exception
      
        # Tennis. The hotel has the requisite court(s) on site or has an affiliation
        # with a nearby facility for the purpose of providing guests with the
        # opportunity to play a two-sided court-based game in which players use a
        # stringed racquet to hit a ball across a net to the side of the opposing player.
        # The court can be indoors or outdoors. Instructors, racquets and balls may or
        # may not be provided.
        # Corresponds to the JSON property `tennis`
        # @return [Boolean]
        attr_accessor :tennis
        alias_method :tennis?, :tennis
      
        # Tennis exception.
        # Corresponds to the JSON property `tennisException`
        # @return [String]
        attr_accessor :tennis_exception
      
        # Water skiing. The provision of giving guests the opportunity to be pulled
        # across naturally occurring water while standing on skis and holding a tow rope
        # attached to a motorboat. Can occur on hotel premises or at a nearby waterfront.
        # Most often performed in a lake or ocean.
        # Corresponds to the JSON property `waterSkiing`
        # @return [Boolean]
        attr_accessor :water_skiing
        alias_method :water_skiing?, :water_skiing
      
        # Water skiing exception.
        # Corresponds to the JSON property `waterSkiingException`
        # @return [String]
        attr_accessor :water_skiing_exception
      
        # Watercraft rental. The hotel owns water vessels that it permits guests to
        # borrow and use. Can be free or for a fee. Watercraft may include boats, pedal
        # boats, rowboats, sailboats, powerboats, canoes, kayaks, or personal watercraft
        # (such as a Jet Ski).
        # Corresponds to the JSON property `watercraftRental`
        # @return [Boolean]
        attr_accessor :watercraft_rental
        alias_method :watercraft_rental?, :watercraft_rental
      
        # Watercraft rental exception.
        # Corresponds to the JSON property `watercraftRentalException`
        # @return [String]
        attr_accessor :watercraft_rental_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beach_access = args[:beach_access] if args.key?(:beach_access)
          @beach_access_exception = args[:beach_access_exception] if args.key?(:beach_access_exception)
          @beach_front = args[:beach_front] if args.key?(:beach_front)
          @beach_front_exception = args[:beach_front_exception] if args.key?(:beach_front_exception)
          @bicycle_rental = args[:bicycle_rental] if args.key?(:bicycle_rental)
          @bicycle_rental_exception = args[:bicycle_rental_exception] if args.key?(:bicycle_rental_exception)
          @boutique_stores = args[:boutique_stores] if args.key?(:boutique_stores)
          @boutique_stores_exception = args[:boutique_stores_exception] if args.key?(:boutique_stores_exception)
          @casino = args[:casino] if args.key?(:casino)
          @casino_exception = args[:casino_exception] if args.key?(:casino_exception)
          @free_bicycle_rental = args[:free_bicycle_rental] if args.key?(:free_bicycle_rental)
          @free_bicycle_rental_exception = args[:free_bicycle_rental_exception] if args.key?(:free_bicycle_rental_exception)
          @free_watercraft_rental = args[:free_watercraft_rental] if args.key?(:free_watercraft_rental)
          @free_watercraft_rental_exception = args[:free_watercraft_rental_exception] if args.key?(:free_watercraft_rental_exception)
          @game_room = args[:game_room] if args.key?(:game_room)
          @game_room_exception = args[:game_room_exception] if args.key?(:game_room_exception)
          @golf = args[:golf] if args.key?(:golf)
          @golf_exception = args[:golf_exception] if args.key?(:golf_exception)
          @horseback_riding = args[:horseback_riding] if args.key?(:horseback_riding)
          @horseback_riding_exception = args[:horseback_riding_exception] if args.key?(:horseback_riding_exception)
          @nightclub = args[:nightclub] if args.key?(:nightclub)
          @nightclub_exception = args[:nightclub_exception] if args.key?(:nightclub_exception)
          @private_beach = args[:private_beach] if args.key?(:private_beach)
          @private_beach_exception = args[:private_beach_exception] if args.key?(:private_beach_exception)
          @scuba = args[:scuba] if args.key?(:scuba)
          @scuba_exception = args[:scuba_exception] if args.key?(:scuba_exception)
          @snorkeling = args[:snorkeling] if args.key?(:snorkeling)
          @snorkeling_exception = args[:snorkeling_exception] if args.key?(:snorkeling_exception)
          @tennis = args[:tennis] if args.key?(:tennis)
          @tennis_exception = args[:tennis_exception] if args.key?(:tennis_exception)
          @water_skiing = args[:water_skiing] if args.key?(:water_skiing)
          @water_skiing_exception = args[:water_skiing_exception] if args.key?(:water_skiing_exception)
          @watercraft_rental = args[:watercraft_rental] if args.key?(:watercraft_rental)
          @watercraft_rental_exception = args[:watercraft_rental_exception] if args.key?(:watercraft_rental_exception)
        end
      end
      
      # Features of the property of specific interest to the business traveler.
      class Business
        include Google::Apis::Core::Hashable
      
        # Business center. A designated room at the hotel with one or more desks and
        # equipped with guest-use computers, printers, fax machines and/or photocopiers.
        # May or may not be open 24/7. May or may not require a key to access. Not a
        # meeting room or conference room.
        # Corresponds to the JSON property `businessCenter`
        # @return [Boolean]
        attr_accessor :business_center
        alias_method :business_center?, :business_center
      
        # Business center exception.
        # Corresponds to the JSON property `businessCenterException`
        # @return [String]
        attr_accessor :business_center_exception
      
        # Meeting rooms. Rooms at the hotel designated for business-related gatherings.
        # Rooms are usually equipped with tables or desks, office chairs and audio/
        # visual facilities to allow for presentations and conference calls. Also known
        # as conference rooms.
        # Corresponds to the JSON property `meetingRooms`
        # @return [Boolean]
        attr_accessor :meeting_rooms
        alias_method :meeting_rooms?, :meeting_rooms
      
        # Meeting rooms count. The number of meeting rooms at the property.
        # Corresponds to the JSON property `meetingRoomsCount`
        # @return [Fixnum]
        attr_accessor :meeting_rooms_count
      
        # Meeting rooms count exception.
        # Corresponds to the JSON property `meetingRoomsCountException`
        # @return [String]
        attr_accessor :meeting_rooms_count_exception
      
        # Meeting rooms exception.
        # Corresponds to the JSON property `meetingRoomsException`
        # @return [String]
        attr_accessor :meeting_rooms_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_center = args[:business_center] if args.key?(:business_center)
          @business_center_exception = args[:business_center_exception] if args.key?(:business_center_exception)
          @meeting_rooms = args[:meeting_rooms] if args.key?(:meeting_rooms)
          @meeting_rooms_count = args[:meeting_rooms_count] if args.key?(:meeting_rooms_count)
          @meeting_rooms_count_exception = args[:meeting_rooms_count_exception] if args.key?(:meeting_rooms_count_exception)
          @meeting_rooms_exception = args[:meeting_rooms_exception] if args.key?(:meeting_rooms_exception)
        end
      end
      
      # The ways in which the property provides guests with the ability to access the
      # internet.
      class Connectivity
        include Google::Apis::Core::Hashable
      
        # Free wifi. The hotel offers guests wifi for free.
        # Corresponds to the JSON property `freeWifi`
        # @return [Boolean]
        attr_accessor :free_wifi
        alias_method :free_wifi?, :free_wifi
      
        # Free wifi exception.
        # Corresponds to the JSON property `freeWifiException`
        # @return [String]
        attr_accessor :free_wifi_exception
      
        # Public area wifi available. Guests have the ability to wirelessly connect to
        # the internet in the areas of the hotel accessible to anyone. Can be free or
        # for a fee.
        # Corresponds to the JSON property `publicAreaWifiAvailable`
        # @return [Boolean]
        attr_accessor :public_area_wifi_available
        alias_method :public_area_wifi_available?, :public_area_wifi_available
      
        # Public area wifi available exception.
        # Corresponds to the JSON property `publicAreaWifiAvailableException`
        # @return [String]
        attr_accessor :public_area_wifi_available_exception
      
        # Public internet terminal. An area of the hotel supplied with computers and
        # designated for the purpose of providing guests with the ability to access the
        # internet.
        # Corresponds to the JSON property `publicInternetTerminal`
        # @return [Boolean]
        attr_accessor :public_internet_terminal
        alias_method :public_internet_terminal?, :public_internet_terminal
      
        # Public internet terminal exception.
        # Corresponds to the JSON property `publicInternetTerminalException`
        # @return [String]
        attr_accessor :public_internet_terminal_exception
      
        # Wifi available. The hotel provides the ability for guests to wirelessly
        # connect to the internet. Can be in the public areas of the hotel and/or in the
        # guest rooms. Can be free or for a fee.
        # Corresponds to the JSON property `wifiAvailable`
        # @return [Boolean]
        attr_accessor :wifi_available
        alias_method :wifi_available?, :wifi_available
      
        # Wifi available exception.
        # Corresponds to the JSON property `wifiAvailableException`
        # @return [String]
        attr_accessor :wifi_available_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_wifi = args[:free_wifi] if args.key?(:free_wifi)
          @free_wifi_exception = args[:free_wifi_exception] if args.key?(:free_wifi_exception)
          @public_area_wifi_available = args[:public_area_wifi_available] if args.key?(:public_area_wifi_available)
          @public_area_wifi_available_exception = args[:public_area_wifi_available_exception] if args.key?(:public_area_wifi_available_exception)
          @public_internet_terminal = args[:public_internet_terminal] if args.key?(:public_internet_terminal)
          @public_internet_terminal_exception = args[:public_internet_terminal_exception] if args.key?(:public_internet_terminal_exception)
          @wifi_available = args[:wifi_available] if args.key?(:wifi_available)
          @wifi_available_exception = args[:wifi_available_exception] if args.key?(:wifi_available_exception)
        end
      end
      
      # An eco certificate awarded to the hotel.
      class EcoCertification
        include Google::Apis::Core::Hashable
      
        # Whether the eco certificate was awarded or not.
        # Corresponds to the JSON property `awarded`
        # @return [Boolean]
        attr_accessor :awarded
        alias_method :awarded?, :awarded
      
        # Awarded exception.
        # Corresponds to the JSON property `awardedException`
        # @return [String]
        attr_accessor :awarded_exception
      
        # Required. The eco certificate.
        # Corresponds to the JSON property `ecoCertificate`
        # @return [String]
        attr_accessor :eco_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @awarded = args[:awarded] if args.key?(:awarded)
          @awarded_exception = args[:awarded_exception] if args.key?(:awarded_exception)
          @eco_certificate = args[:eco_certificate] if args.key?(:eco_certificate)
        end
      end
      
      # Energy efficiency practices implemented at the hotel.
      class EnergyEfficiency
        include Google::Apis::Core::Hashable
      
        # Carbon free energy sources. Property sources carbon-free electricity via at
        # least one of the following methods: on-site clean energy generation, power
        # purchase agreement(s) with clean energy generators, green power provided by
        # electricity supplier, or purchases of Energy Attribute Certificates (such as
        # Renewable Energy Certificates or Guarantees of Origin).
        # Corresponds to the JSON property `carbonFreeEnergySources`
        # @return [Boolean]
        attr_accessor :carbon_free_energy_sources
        alias_method :carbon_free_energy_sources?, :carbon_free_energy_sources
      
        # Carbon free energy sources exception.
        # Corresponds to the JSON property `carbonFreeEnergySourcesException`
        # @return [String]
        attr_accessor :carbon_free_energy_sources_exception
      
        # Energy conservation program. The property tracks corporate-level Scope 1 and 2
        # GHG emissions, and Scope 3 emissions if available. The property has a
        # commitment to implement initiatives that reduce GHG emissions year over year.
        # The property has shown an absolute reduction in emissions for at least 2 years.
        # Emissions are either verfied by a third-party and/or published in external
        # communications.
        # Corresponds to the JSON property `energyConservationProgram`
        # @return [Boolean]
        attr_accessor :energy_conservation_program
        alias_method :energy_conservation_program?, :energy_conservation_program
      
        # Energy conservation program exception.
        # Corresponds to the JSON property `energyConservationProgramException`
        # @return [String]
        attr_accessor :energy_conservation_program_exception
      
        # Energy efficient heating and cooling systems. The property doesn't use
        # chlorofluorocarbon (CFC)-based refrigerants in heating, ventilating, and air-
        # conditioning systems unless a third-party audit shows it's not economically
        # feasible. The CFC-based refrigerants which are used should have a Global
        # Warming Potential (GWP) ≤ 10. The property uses occupancy sensors on HVAC
        # systems in back-of-house spaces, meeting rooms, and other low-traffic areas.
        # Corresponds to the JSON property `energyEfficientHeatingAndCoolingSystems`
        # @return [Boolean]
        attr_accessor :energy_efficient_heating_and_cooling_systems
        alias_method :energy_efficient_heating_and_cooling_systems?, :energy_efficient_heating_and_cooling_systems
      
        # Energy efficient heating and cooling systems exception.
        # Corresponds to the JSON property `energyEfficientHeatingAndCoolingSystemsException`
        # @return [String]
        attr_accessor :energy_efficient_heating_and_cooling_systems_exception
      
        # Energy efficient lighting. At least 75% of the property's lighting is energy
        # efficient, using lighting that is more than 45 lumens per watt – typically LED
        # or CFL lightbulbs.
        # Corresponds to the JSON property `energyEfficientLighting`
        # @return [Boolean]
        attr_accessor :energy_efficient_lighting
        alias_method :energy_efficient_lighting?, :energy_efficient_lighting
      
        # Energy efficient lighting exception.
        # Corresponds to the JSON property `energyEfficientLightingException`
        # @return [String]
        attr_accessor :energy_efficient_lighting_exception
      
        # Energy saving thermostats. The property installed energy-saving thermostats
        # throughout the building to conserve energy when rooms or areas are not in use.
        # Energy-saving thermostats are devices that control heating/cooling in the
        # building by learning temperature preferences and automatically adjusting to
        # energy-saving temperatures as the default. The thermostats are automatically
        # set to a temperature between 68-78 degrees F (20-26 °C), depending on
        # seasonality. In the winter, set the thermostat to 68°F (20°C) when the room is
        # occupied, lowering room temperature when unoccupied. In the summer, set the
        # thermostat to 78°F (26°C) when the room is occupied.
        # Corresponds to the JSON property `energySavingThermostats`
        # @return [Boolean]
        attr_accessor :energy_saving_thermostats
        alias_method :energy_saving_thermostats?, :energy_saving_thermostats
      
        # Energy saving thermostats exception.
        # Corresponds to the JSON property `energySavingThermostatsException`
        # @return [String]
        attr_accessor :energy_saving_thermostats_exception
      
        # Output only. Green building design. True if BREEAM-* or LEED-* certified.
        # Corresponds to the JSON property `greenBuildingDesign`
        # @return [Boolean]
        attr_accessor :green_building_design
        alias_method :green_building_design?, :green_building_design
      
        # Output only. Green building design exception.
        # Corresponds to the JSON property `greenBuildingDesignException`
        # @return [String]
        attr_accessor :green_building_design_exception
      
        # Independent organization audits energy use. The property conducts an energy
        # audit at least every 5 years, the results of which are either verified by a
        # third-party and/or published in external communications. An energy audit is a
        # detailed assessment of the facility which provides recommendations to existing
        # operations and procedures to improve energy efficiency, available incentives
        # or rebates,and opportunities for improvements through renovations or upgrades.
        # Examples of organizations that conduct credible third party audits include:
        # Engie Impact, DNV GL (EU), Dexma, and local utility providers (they often
        # provide energy and water audits).
        # Corresponds to the JSON property `independentOrganizationAuditsEnergyUse`
        # @return [Boolean]
        attr_accessor :independent_organization_audits_energy_use
        alias_method :independent_organization_audits_energy_use?, :independent_organization_audits_energy_use
      
        # Independent organization audits energy use exception.
        # Corresponds to the JSON property `independentOrganizationAuditsEnergyUseException`
        # @return [String]
        attr_accessor :independent_organization_audits_energy_use_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carbon_free_energy_sources = args[:carbon_free_energy_sources] if args.key?(:carbon_free_energy_sources)
          @carbon_free_energy_sources_exception = args[:carbon_free_energy_sources_exception] if args.key?(:carbon_free_energy_sources_exception)
          @energy_conservation_program = args[:energy_conservation_program] if args.key?(:energy_conservation_program)
          @energy_conservation_program_exception = args[:energy_conservation_program_exception] if args.key?(:energy_conservation_program_exception)
          @energy_efficient_heating_and_cooling_systems = args[:energy_efficient_heating_and_cooling_systems] if args.key?(:energy_efficient_heating_and_cooling_systems)
          @energy_efficient_heating_and_cooling_systems_exception = args[:energy_efficient_heating_and_cooling_systems_exception] if args.key?(:energy_efficient_heating_and_cooling_systems_exception)
          @energy_efficient_lighting = args[:energy_efficient_lighting] if args.key?(:energy_efficient_lighting)
          @energy_efficient_lighting_exception = args[:energy_efficient_lighting_exception] if args.key?(:energy_efficient_lighting_exception)
          @energy_saving_thermostats = args[:energy_saving_thermostats] if args.key?(:energy_saving_thermostats)
          @energy_saving_thermostats_exception = args[:energy_saving_thermostats_exception] if args.key?(:energy_saving_thermostats_exception)
          @green_building_design = args[:green_building_design] if args.key?(:green_building_design)
          @green_building_design_exception = args[:green_building_design_exception] if args.key?(:green_building_design_exception)
          @independent_organization_audits_energy_use = args[:independent_organization_audits_energy_use] if args.key?(:independent_organization_audits_energy_use)
          @independent_organization_audits_energy_use_exception = args[:independent_organization_audits_energy_use_exception] if args.key?(:independent_organization_audits_energy_use_exception)
        end
      end
      
      # Enhanced cleaning measures implemented by the hotel during COVID-19.
      class EnhancedCleaning
        include Google::Apis::Core::Hashable
      
        # Commercial-grade disinfectant used to clean the property.
        # Corresponds to the JSON property `commercialGradeDisinfectantCleaning`
        # @return [Boolean]
        attr_accessor :commercial_grade_disinfectant_cleaning
        alias_method :commercial_grade_disinfectant_cleaning?, :commercial_grade_disinfectant_cleaning
      
        # Commercial grade disinfectant cleaning exception.
        # Corresponds to the JSON property `commercialGradeDisinfectantCleaningException`
        # @return [String]
        attr_accessor :commercial_grade_disinfectant_cleaning_exception
      
        # Enhanced cleaning of common areas.
        # Corresponds to the JSON property `commonAreasEnhancedCleaning`
        # @return [Boolean]
        attr_accessor :common_areas_enhanced_cleaning
        alias_method :common_areas_enhanced_cleaning?, :common_areas_enhanced_cleaning
      
        # Common areas enhanced cleaning exception.
        # Corresponds to the JSON property `commonAreasEnhancedCleaningException`
        # @return [String]
        attr_accessor :common_areas_enhanced_cleaning_exception
      
        # Employees trained in COVID-19 cleaning procedures.
        # Corresponds to the JSON property `employeesTrainedCleaningProcedures`
        # @return [Boolean]
        attr_accessor :employees_trained_cleaning_procedures
        alias_method :employees_trained_cleaning_procedures?, :employees_trained_cleaning_procedures
      
        # Employees trained cleaning procedures exception.
        # Corresponds to the JSON property `employeesTrainedCleaningProceduresException`
        # @return [String]
        attr_accessor :employees_trained_cleaning_procedures_exception
      
        # Employees trained in thorough hand-washing.
        # Corresponds to the JSON property `employeesTrainedThoroughHandWashing`
        # @return [Boolean]
        attr_accessor :employees_trained_thorough_hand_washing
        alias_method :employees_trained_thorough_hand_washing?, :employees_trained_thorough_hand_washing
      
        # Employees trained thorough hand washing exception.
        # Corresponds to the JSON property `employeesTrainedThoroughHandWashingException`
        # @return [String]
        attr_accessor :employees_trained_thorough_hand_washing_exception
      
        # Employees wear masks, face shields, and/or gloves.
        # Corresponds to the JSON property `employeesWearProtectiveEquipment`
        # @return [Boolean]
        attr_accessor :employees_wear_protective_equipment
        alias_method :employees_wear_protective_equipment?, :employees_wear_protective_equipment
      
        # Employees wear protective equipment exception.
        # Corresponds to the JSON property `employeesWearProtectiveEquipmentException`
        # @return [String]
        attr_accessor :employees_wear_protective_equipment_exception
      
        # Enhanced cleaning of guest rooms.
        # Corresponds to the JSON property `guestRoomsEnhancedCleaning`
        # @return [Boolean]
        attr_accessor :guest_rooms_enhanced_cleaning
        alias_method :guest_rooms_enhanced_cleaning?, :guest_rooms_enhanced_cleaning
      
        # Guest rooms enhanced cleaning exception.
        # Corresponds to the JSON property `guestRoomsEnhancedCleaningException`
        # @return [String]
        attr_accessor :guest_rooms_enhanced_cleaning_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commercial_grade_disinfectant_cleaning = args[:commercial_grade_disinfectant_cleaning] if args.key?(:commercial_grade_disinfectant_cleaning)
          @commercial_grade_disinfectant_cleaning_exception = args[:commercial_grade_disinfectant_cleaning_exception] if args.key?(:commercial_grade_disinfectant_cleaning_exception)
          @common_areas_enhanced_cleaning = args[:common_areas_enhanced_cleaning] if args.key?(:common_areas_enhanced_cleaning)
          @common_areas_enhanced_cleaning_exception = args[:common_areas_enhanced_cleaning_exception] if args.key?(:common_areas_enhanced_cleaning_exception)
          @employees_trained_cleaning_procedures = args[:employees_trained_cleaning_procedures] if args.key?(:employees_trained_cleaning_procedures)
          @employees_trained_cleaning_procedures_exception = args[:employees_trained_cleaning_procedures_exception] if args.key?(:employees_trained_cleaning_procedures_exception)
          @employees_trained_thorough_hand_washing = args[:employees_trained_thorough_hand_washing] if args.key?(:employees_trained_thorough_hand_washing)
          @employees_trained_thorough_hand_washing_exception = args[:employees_trained_thorough_hand_washing_exception] if args.key?(:employees_trained_thorough_hand_washing_exception)
          @employees_wear_protective_equipment = args[:employees_wear_protective_equipment] if args.key?(:employees_wear_protective_equipment)
          @employees_wear_protective_equipment_exception = args[:employees_wear_protective_equipment_exception] if args.key?(:employees_wear_protective_equipment_exception)
          @guest_rooms_enhanced_cleaning = args[:guest_rooms_enhanced_cleaning] if args.key?(:guest_rooms_enhanced_cleaning)
          @guest_rooms_enhanced_cleaning_exception = args[:guest_rooms_enhanced_cleaning_exception] if args.key?(:guest_rooms_enhanced_cleaning_exception)
        end
      end
      
      # Services and amenities for families and young guests.
      class Families
        include Google::Apis::Core::Hashable
      
        # Babysitting. Child care that is offered by hotel staffers or coordinated by
        # hotel staffers with local child care professionals. Can be free or for a fee.
        # Corresponds to the JSON property `babysitting`
        # @return [Boolean]
        attr_accessor :babysitting
        alias_method :babysitting?, :babysitting
      
        # Babysitting exception.
        # Corresponds to the JSON property `babysittingException`
        # @return [String]
        attr_accessor :babysitting_exception
      
        # Kids activities. Recreational options such as sports, films, crafts and games
        # designed for the enjoyment of children and offered at the hotel. May or may
        # not be supervised. May or may not be at a designated time or place. Cab be
        # free or for a fee.
        # Corresponds to the JSON property `kidsActivities`
        # @return [Boolean]
        attr_accessor :kids_activities
        alias_method :kids_activities?, :kids_activities
      
        # Kids activities exception.
        # Corresponds to the JSON property `kidsActivitiesException`
        # @return [String]
        attr_accessor :kids_activities_exception
      
        # Kids club. An organized program of group activities held at the hotel and
        # designed for the enjoyment of children. Facilitated by hotel staff (or staff
        # procured by the hotel) in an area(s) designated for the purpose of
        # entertaining children without their parents. May include games, outings, water
        # sports, team sports, arts and crafts, and films. Usually has set hours. Can be
        # free or for a fee. Also known as Kids Camp or Kids program.
        # Corresponds to the JSON property `kidsClub`
        # @return [Boolean]
        attr_accessor :kids_club
        alias_method :kids_club?, :kids_club
      
        # Kids club exception.
        # Corresponds to the JSON property `kidsClubException`
        # @return [String]
        attr_accessor :kids_club_exception
      
        # Kids friendly. The hotel has one or more special features for families with
        # children, such as reduced rates, child-sized beds, kids' club, babysitting
        # service, or suitable place to play on premises.
        # Corresponds to the JSON property `kidsFriendly`
        # @return [Boolean]
        attr_accessor :kids_friendly
        alias_method :kids_friendly?, :kids_friendly
      
        # Kids friendly exception.
        # Corresponds to the JSON property `kidsFriendlyException`
        # @return [String]
        attr_accessor :kids_friendly_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @babysitting = args[:babysitting] if args.key?(:babysitting)
          @babysitting_exception = args[:babysitting_exception] if args.key?(:babysitting_exception)
          @kids_activities = args[:kids_activities] if args.key?(:kids_activities)
          @kids_activities_exception = args[:kids_activities_exception] if args.key?(:kids_activities_exception)
          @kids_club = args[:kids_club] if args.key?(:kids_club)
          @kids_club_exception = args[:kids_club_exception] if args.key?(:kids_club_exception)
          @kids_friendly = args[:kids_friendly] if args.key?(:kids_friendly)
          @kids_friendly_exception = args[:kids_friendly_exception] if args.key?(:kids_friendly_exception)
        end
      end
      
      # Meals, snacks, and beverages available at the property.
      class FoodAndDrink
        include Google::Apis::Core::Hashable
      
        # Bar. A designated room, lounge or area of an on-site restaurant with seating
        # at a counter behind which a hotel staffer takes the guest's order and provides
        # the requested alcoholic drink. Can be indoors or outdoors. Also known as Pub.
        # Corresponds to the JSON property `bar`
        # @return [Boolean]
        attr_accessor :bar
        alias_method :bar?, :bar
      
        # Bar exception.
        # Corresponds to the JSON property `barException`
        # @return [String]
        attr_accessor :bar_exception
      
        # Breakfast available. The morning meal is offered to all guests. Can be free or
        # for a fee.
        # Corresponds to the JSON property `breakfastAvailable`
        # @return [Boolean]
        attr_accessor :breakfast_available
        alias_method :breakfast_available?, :breakfast_available
      
        # Breakfast available exception.
        # Corresponds to the JSON property `breakfastAvailableException`
        # @return [String]
        attr_accessor :breakfast_available_exception
      
        # Breakfast buffet. Breakfast meal service where guests serve themselves from a
        # variety of dishes/foods that are put out on a table.
        # Corresponds to the JSON property `breakfastBuffet`
        # @return [Boolean]
        attr_accessor :breakfast_buffet
        alias_method :breakfast_buffet?, :breakfast_buffet
      
        # Breakfast buffet exception.
        # Corresponds to the JSON property `breakfastBuffetException`
        # @return [String]
        attr_accessor :breakfast_buffet_exception
      
        # Buffet. A type of meal where guests serve themselves from a variety of dishes/
        # foods that are put out on a table. Includes lunch and/or dinner meals. A
        # breakfast-only buffet is not sufficient.
        # Corresponds to the JSON property `buffet`
        # @return [Boolean]
        attr_accessor :buffet
        alias_method :buffet?, :buffet
      
        # Buffet exception.
        # Corresponds to the JSON property `buffetException`
        # @return [String]
        attr_accessor :buffet_exception
      
        # Dinner buffet. Dinner meal service where guests serve themselves from a
        # variety of dishes/foods that are put out on a table.
        # Corresponds to the JSON property `dinnerBuffet`
        # @return [Boolean]
        attr_accessor :dinner_buffet
        alias_method :dinner_buffet?, :dinner_buffet
      
        # Dinner buffet exception.
        # Corresponds to the JSON property `dinnerBuffetException`
        # @return [String]
        attr_accessor :dinner_buffet_exception
      
        # Free breakfast. Breakfast is offered for free to all guests. Does not apply if
        # limited to certain room packages.
        # Corresponds to the JSON property `freeBreakfast`
        # @return [Boolean]
        attr_accessor :free_breakfast
        alias_method :free_breakfast?, :free_breakfast
      
        # Free breakfast exception.
        # Corresponds to the JSON property `freeBreakfastException`
        # @return [String]
        attr_accessor :free_breakfast_exception
      
        # Restaurant. A business onsite at the hotel that is open to the public as well
        # as guests, and offers meals and beverages to consume at tables or counters.
        # May or may not include table service. Also known as cafe, buffet, eatery. A "
        # breakfast room" where the hotel serves breakfast only to guests (not the
        # general public) does not count as a restaurant.
        # Corresponds to the JSON property `restaurant`
        # @return [Boolean]
        attr_accessor :restaurant
        alias_method :restaurant?, :restaurant
      
        # Restaurant exception.
        # Corresponds to the JSON property `restaurantException`
        # @return [String]
        attr_accessor :restaurant_exception
      
        # Restaurants count. The number of restaurants at the hotel.
        # Corresponds to the JSON property `restaurantsCount`
        # @return [Fixnum]
        attr_accessor :restaurants_count
      
        # Restaurants count exception.
        # Corresponds to the JSON property `restaurantsCountException`
        # @return [String]
        attr_accessor :restaurants_count_exception
      
        # Room service. A hotel staffer delivers meals prepared onsite to a guest's room
        # as per their request. May or may not be available during specific hours.
        # Services should be available to all guests (not based on rate/room booked/
        # reward program, etc).
        # Corresponds to the JSON property `roomService`
        # @return [Boolean]
        attr_accessor :room_service
        alias_method :room_service?, :room_service
      
        # Room service exception.
        # Corresponds to the JSON property `roomServiceException`
        # @return [String]
        attr_accessor :room_service_exception
      
        # Table service. A restaurant in which a staff member is assigned to a guest's
        # table to take their order, deliver and clear away food, and deliver the bill,
        # if applicable. Also known as sit-down restaurant.
        # Corresponds to the JSON property `tableService`
        # @return [Boolean]
        attr_accessor :table_service
        alias_method :table_service?, :table_service
      
        # Table service exception.
        # Corresponds to the JSON property `tableServiceException`
        # @return [String]
        attr_accessor :table_service_exception
      
        # 24hr room service. Room service is available 24 hours a day.
        # Corresponds to the JSON property `twentyFourHourRoomService`
        # @return [Boolean]
        attr_accessor :twenty_four_hour_room_service
        alias_method :twenty_four_hour_room_service?, :twenty_four_hour_room_service
      
        # 24hr room service exception.
        # Corresponds to the JSON property `twentyFourHourRoomServiceException`
        # @return [String]
        attr_accessor :twenty_four_hour_room_service_exception
      
        # Vending machine. A glass-fronted mechanized cabinet displaying and dispensing
        # snacks and beverages for purchase by coins, paper money and/or credit cards.
        # Corresponds to the JSON property `vendingMachine`
        # @return [Boolean]
        attr_accessor :vending_machine
        alias_method :vending_machine?, :vending_machine
      
        # Vending machine exception.
        # Corresponds to the JSON property `vendingMachineException`
        # @return [String]
        attr_accessor :vending_machine_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bar = args[:bar] if args.key?(:bar)
          @bar_exception = args[:bar_exception] if args.key?(:bar_exception)
          @breakfast_available = args[:breakfast_available] if args.key?(:breakfast_available)
          @breakfast_available_exception = args[:breakfast_available_exception] if args.key?(:breakfast_available_exception)
          @breakfast_buffet = args[:breakfast_buffet] if args.key?(:breakfast_buffet)
          @breakfast_buffet_exception = args[:breakfast_buffet_exception] if args.key?(:breakfast_buffet_exception)
          @buffet = args[:buffet] if args.key?(:buffet)
          @buffet_exception = args[:buffet_exception] if args.key?(:buffet_exception)
          @dinner_buffet = args[:dinner_buffet] if args.key?(:dinner_buffet)
          @dinner_buffet_exception = args[:dinner_buffet_exception] if args.key?(:dinner_buffet_exception)
          @free_breakfast = args[:free_breakfast] if args.key?(:free_breakfast)
          @free_breakfast_exception = args[:free_breakfast_exception] if args.key?(:free_breakfast_exception)
          @restaurant = args[:restaurant] if args.key?(:restaurant)
          @restaurant_exception = args[:restaurant_exception] if args.key?(:restaurant_exception)
          @restaurants_count = args[:restaurants_count] if args.key?(:restaurants_count)
          @restaurants_count_exception = args[:restaurants_count_exception] if args.key?(:restaurants_count_exception)
          @room_service = args[:room_service] if args.key?(:room_service)
          @room_service_exception = args[:room_service_exception] if args.key?(:room_service_exception)
          @table_service = args[:table_service] if args.key?(:table_service)
          @table_service_exception = args[:table_service_exception] if args.key?(:table_service_exception)
          @twenty_four_hour_room_service = args[:twenty_four_hour_room_service] if args.key?(:twenty_four_hour_room_service)
          @twenty_four_hour_room_service_exception = args[:twenty_four_hour_room_service_exception] if args.key?(:twenty_four_hour_room_service_exception)
          @vending_machine = args[:vending_machine] if args.key?(:vending_machine)
          @vending_machine_exception = args[:vending_machine_exception] if args.key?(:vending_machine_exception)
        end
      end
      
      # Response message for LodgingService.GetGoogleUpdatedLodging
      class GetGoogleUpdatedLodgingResponse
        include Google::Apis::Core::Hashable
      
        # Required. The fields in the Lodging that have been updated by Google. Repeated
        # field items are not individually specified.
        # Corresponds to the JSON property `diffMask`
        # @return [String]
        attr_accessor :diff_mask
      
        # Lodging of a location that provides accomodations.
        # Corresponds to the JSON property `lodging`
        # @return [Google::Apis::MybusinesslodgingV1::Lodging]
        attr_accessor :lodging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diff_mask = args[:diff_mask] if args.key?(:diff_mask)
          @lodging = args[:lodging] if args.key?(:lodging)
        end
      end
      
      # Features and available amenities in the guest unit.
      class GuestUnitFeatures
        include Google::Apis::Core::Hashable
      
        # Bungalow or villa. An independent structure that is part of a hotel or resort
        # that is rented to one party for a vacation stay. The hotel or resort may be
        # completely comprised of bungalows or villas, or they may be one of several
        # guestroom options. Guests in the bungalows or villas most often have the same,
        # if not more, amenities and services offered to guests in other guestroom types.
        # Corresponds to the JSON property `bungalowOrVilla`
        # @return [Boolean]
        attr_accessor :bungalow_or_villa
        alias_method :bungalow_or_villa?, :bungalow_or_villa
      
        # Bungalow or villa exception.
        # Corresponds to the JSON property `bungalowOrVillaException`
        # @return [String]
        attr_accessor :bungalow_or_villa_exception
      
        # Connecting unit available. A guestroom type that features access to an
        # adjacent guestroom for the purpose of booking both rooms. Most often used by
        # families who need more than one room to accommodate the number of people in
        # their group.
        # Corresponds to the JSON property `connectingUnitAvailable`
        # @return [Boolean]
        attr_accessor :connecting_unit_available
        alias_method :connecting_unit_available?, :connecting_unit_available
      
        # Connecting unit available exception.
        # Corresponds to the JSON property `connectingUnitAvailableException`
        # @return [String]
        attr_accessor :connecting_unit_available_exception
      
        # Executive floor. A floor of the hotel where the guestrooms are only bookable
        # by members of the hotel's frequent guest membership program. Benefits of this
        # room class include access to a designated lounge which may or may not feature
        # free breakfast, cocktails or other perks specific to members of the program.
        # Corresponds to the JSON property `executiveFloor`
        # @return [Boolean]
        attr_accessor :executive_floor
        alias_method :executive_floor?, :executive_floor
      
        # Executive floor exception.
        # Corresponds to the JSON property `executiveFloorException`
        # @return [String]
        attr_accessor :executive_floor_exception
      
        # Max adult occupants count. The total number of adult guests allowed to stay
        # overnight in the guestroom.
        # Corresponds to the JSON property `maxAdultOccupantsCount`
        # @return [Fixnum]
        attr_accessor :max_adult_occupants_count
      
        # Max adult occupants count exception.
        # Corresponds to the JSON property `maxAdultOccupantsCountException`
        # @return [String]
        attr_accessor :max_adult_occupants_count_exception
      
        # Max child occupants count. The total number of children allowed to stay
        # overnight in the room.
        # Corresponds to the JSON property `maxChildOccupantsCount`
        # @return [Fixnum]
        attr_accessor :max_child_occupants_count
      
        # Max child occupants count exception.
        # Corresponds to the JSON property `maxChildOccupantsCountException`
        # @return [String]
        attr_accessor :max_child_occupants_count_exception
      
        # Max occupants count. The total number of guests allowed to stay overnight in
        # the guestroom.
        # Corresponds to the JSON property `maxOccupantsCount`
        # @return [Fixnum]
        attr_accessor :max_occupants_count
      
        # Max occupants count exception.
        # Corresponds to the JSON property `maxOccupantsCountException`
        # @return [String]
        attr_accessor :max_occupants_count_exception
      
        # Private home. A privately owned home (house, townhouse, apartment, cabin,
        # bungalow etc) that may or not serve as the owner's residence, but is rented
        # out in its entirety or by the room(s) to paying guest(s) for vacation stays.
        # Not for lease-based, long-term residency.
        # Corresponds to the JSON property `privateHome`
        # @return [Boolean]
        attr_accessor :private_home
        alias_method :private_home?, :private_home
      
        # Private home exception.
        # Corresponds to the JSON property `privateHomeException`
        # @return [String]
        attr_accessor :private_home_exception
      
        # Suite. A guestroom category that implies both a bedroom area and a separate
        # living area. There may or may not be full walls and doors separating the two
        # areas, but regardless, they are very distinct. Does not mean a couch or chair
        # in a bedroom.
        # Corresponds to the JSON property `suite`
        # @return [Boolean]
        attr_accessor :suite
        alias_method :suite?, :suite
      
        # Suite exception.
        # Corresponds to the JSON property `suiteException`
        # @return [String]
        attr_accessor :suite_exception
      
        # Tier. Classification of the unit based on available features/amenities. A non-
        # standard tier is only permitted if at least one other unit type falls under
        # the standard tier.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Tier exception.
        # Corresponds to the JSON property `tierException`
        # @return [String]
        attr_accessor :tier_exception
      
        # An individual room, such as kitchen, bathroom, bedroom, within a bookable
        # guest unit.
        # Corresponds to the JSON property `totalLivingAreas`
        # @return [Google::Apis::MybusinesslodgingV1::LivingArea]
        attr_accessor :total_living_areas
      
        # Views available from the guest unit itself.
        # Corresponds to the JSON property `views`
        # @return [Google::Apis::MybusinesslodgingV1::ViewsFromUnit]
        attr_accessor :views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bungalow_or_villa = args[:bungalow_or_villa] if args.key?(:bungalow_or_villa)
          @bungalow_or_villa_exception = args[:bungalow_or_villa_exception] if args.key?(:bungalow_or_villa_exception)
          @connecting_unit_available = args[:connecting_unit_available] if args.key?(:connecting_unit_available)
          @connecting_unit_available_exception = args[:connecting_unit_available_exception] if args.key?(:connecting_unit_available_exception)
          @executive_floor = args[:executive_floor] if args.key?(:executive_floor)
          @executive_floor_exception = args[:executive_floor_exception] if args.key?(:executive_floor_exception)
          @max_adult_occupants_count = args[:max_adult_occupants_count] if args.key?(:max_adult_occupants_count)
          @max_adult_occupants_count_exception = args[:max_adult_occupants_count_exception] if args.key?(:max_adult_occupants_count_exception)
          @max_child_occupants_count = args[:max_child_occupants_count] if args.key?(:max_child_occupants_count)
          @max_child_occupants_count_exception = args[:max_child_occupants_count_exception] if args.key?(:max_child_occupants_count_exception)
          @max_occupants_count = args[:max_occupants_count] if args.key?(:max_occupants_count)
          @max_occupants_count_exception = args[:max_occupants_count_exception] if args.key?(:max_occupants_count_exception)
          @private_home = args[:private_home] if args.key?(:private_home)
          @private_home_exception = args[:private_home_exception] if args.key?(:private_home_exception)
          @suite = args[:suite] if args.key?(:suite)
          @suite_exception = args[:suite_exception] if args.key?(:suite_exception)
          @tier = args[:tier] if args.key?(:tier)
          @tier_exception = args[:tier_exception] if args.key?(:tier_exception)
          @total_living_areas = args[:total_living_areas] if args.key?(:total_living_areas)
          @views = args[:views] if args.key?(:views)
        end
      end
      
      # A specific type of unit primarily defined by its features.
      class GuestUnitType
        include Google::Apis::Core::Hashable
      
        # Required. Unit or room code identifiers for a single GuestUnitType. Each code
        # must be unique within a Lodging instance.
        # Corresponds to the JSON property `codes`
        # @return [Array<String>]
        attr_accessor :codes
      
        # Features and available amenities in the guest unit.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::MybusinesslodgingV1::GuestUnitFeatures]
        attr_accessor :features
      
        # Required. Short, English label or name of the GuestUnitType. Target <50 chars.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @codes = args[:codes] if args.key?(:codes)
          @features = args[:features] if args.key?(:features)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Health and safety measures implemented by the hotel during COVID-19.
      class HealthAndSafety
        include Google::Apis::Core::Hashable
      
        # Enhanced cleaning measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `enhancedCleaning`
        # @return [Google::Apis::MybusinesslodgingV1::EnhancedCleaning]
        attr_accessor :enhanced_cleaning
      
        # Increased food safety measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `increasedFoodSafety`
        # @return [Google::Apis::MybusinesslodgingV1::IncreasedFoodSafety]
        attr_accessor :increased_food_safety
      
        # Minimized contact measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `minimizedContact`
        # @return [Google::Apis::MybusinesslodgingV1::MinimizedContact]
        attr_accessor :minimized_contact
      
        # Personal protection measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `personalProtection`
        # @return [Google::Apis::MybusinesslodgingV1::PersonalProtection]
        attr_accessor :personal_protection
      
        # Physical distancing measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `physicalDistancing`
        # @return [Google::Apis::MybusinesslodgingV1::PhysicalDistancing]
        attr_accessor :physical_distancing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enhanced_cleaning = args[:enhanced_cleaning] if args.key?(:enhanced_cleaning)
          @increased_food_safety = args[:increased_food_safety] if args.key?(:increased_food_safety)
          @minimized_contact = args[:minimized_contact] if args.key?(:minimized_contact)
          @personal_protection = args[:personal_protection] if args.key?(:personal_protection)
          @physical_distancing = args[:physical_distancing] if args.key?(:physical_distancing)
        end
      end
      
      # Conveniences provided in guest units to facilitate an easier, more comfortable
      # stay.
      class Housekeeping
        include Google::Apis::Core::Hashable
      
        # Daily housekeeping. Guest units are cleaned by hotel staff daily during guest'
        # s stay.
        # Corresponds to the JSON property `dailyHousekeeping`
        # @return [Boolean]
        attr_accessor :daily_housekeeping
        alias_method :daily_housekeeping?, :daily_housekeeping
      
        # Daily housekeeping exception.
        # Corresponds to the JSON property `dailyHousekeepingException`
        # @return [String]
        attr_accessor :daily_housekeeping_exception
      
        # Housekeeping available. Guest units are cleaned by hotel staff during guest's
        # stay. Schedule may vary from daily, weekly, or specific days of the week.
        # Corresponds to the JSON property `housekeepingAvailable`
        # @return [Boolean]
        attr_accessor :housekeeping_available
        alias_method :housekeeping_available?, :housekeeping_available
      
        # Housekeeping available exception.
        # Corresponds to the JSON property `housekeepingAvailableException`
        # @return [String]
        attr_accessor :housekeeping_available_exception
      
        # Turndown service. Hotel staff enters guest units to prepare the bed for sleep
        # use. May or may not include some light housekeeping. May or may not include an
        # evening snack or candy. Also known as evening service.
        # Corresponds to the JSON property `turndownService`
        # @return [Boolean]
        attr_accessor :turndown_service
        alias_method :turndown_service?, :turndown_service
      
        # Turndown service exception.
        # Corresponds to the JSON property `turndownServiceException`
        # @return [String]
        attr_accessor :turndown_service_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_housekeeping = args[:daily_housekeeping] if args.key?(:daily_housekeeping)
          @daily_housekeeping_exception = args[:daily_housekeeping_exception] if args.key?(:daily_housekeeping_exception)
          @housekeeping_available = args[:housekeeping_available] if args.key?(:housekeeping_available)
          @housekeeping_available_exception = args[:housekeeping_available_exception] if args.key?(:housekeeping_available_exception)
          @turndown_service = args[:turndown_service] if args.key?(:turndown_service)
          @turndown_service_exception = args[:turndown_service_exception] if args.key?(:turndown_service_exception)
        end
      end
      
      # Increased food safety measures implemented by the hotel during COVID-19.
      class IncreasedFoodSafety
        include Google::Apis::Core::Hashable
      
        # Additional sanitation in dining areas.
        # Corresponds to the JSON property `diningAreasAdditionalSanitation`
        # @return [Boolean]
        attr_accessor :dining_areas_additional_sanitation
        alias_method :dining_areas_additional_sanitation?, :dining_areas_additional_sanitation
      
        # Dining areas additional sanitation exception.
        # Corresponds to the JSON property `diningAreasAdditionalSanitationException`
        # @return [String]
        attr_accessor :dining_areas_additional_sanitation_exception
      
        # Disposable flatware.
        # Corresponds to the JSON property `disposableFlatware`
        # @return [Boolean]
        attr_accessor :disposable_flatware
        alias_method :disposable_flatware?, :disposable_flatware
      
        # Disposable flatware exception.
        # Corresponds to the JSON property `disposableFlatwareException`
        # @return [String]
        attr_accessor :disposable_flatware_exception
      
        # Additional safety measures during food prep and serving.
        # Corresponds to the JSON property `foodPreparationAndServingAdditionalSafety`
        # @return [Boolean]
        attr_accessor :food_preparation_and_serving_additional_safety
        alias_method :food_preparation_and_serving_additional_safety?, :food_preparation_and_serving_additional_safety
      
        # Food preparation and serving additional safety exception.
        # Corresponds to the JSON property `foodPreparationAndServingAdditionalSafetyException`
        # @return [String]
        attr_accessor :food_preparation_and_serving_additional_safety_exception
      
        # Individually-packaged meals.
        # Corresponds to the JSON property `individualPackagedMeals`
        # @return [Boolean]
        attr_accessor :individual_packaged_meals
        alias_method :individual_packaged_meals?, :individual_packaged_meals
      
        # Individual packaged meals exception.
        # Corresponds to the JSON property `individualPackagedMealsException`
        # @return [String]
        attr_accessor :individual_packaged_meals_exception
      
        # Single-use menus.
        # Corresponds to the JSON property `singleUseFoodMenus`
        # @return [Boolean]
        attr_accessor :single_use_food_menus
        alias_method :single_use_food_menus?, :single_use_food_menus
      
        # Single use food menus exception.
        # Corresponds to the JSON property `singleUseFoodMenusException`
        # @return [String]
        attr_accessor :single_use_food_menus_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dining_areas_additional_sanitation = args[:dining_areas_additional_sanitation] if args.key?(:dining_areas_additional_sanitation)
          @dining_areas_additional_sanitation_exception = args[:dining_areas_additional_sanitation_exception] if args.key?(:dining_areas_additional_sanitation_exception)
          @disposable_flatware = args[:disposable_flatware] if args.key?(:disposable_flatware)
          @disposable_flatware_exception = args[:disposable_flatware_exception] if args.key?(:disposable_flatware_exception)
          @food_preparation_and_serving_additional_safety = args[:food_preparation_and_serving_additional_safety] if args.key?(:food_preparation_and_serving_additional_safety)
          @food_preparation_and_serving_additional_safety_exception = args[:food_preparation_and_serving_additional_safety_exception] if args.key?(:food_preparation_and_serving_additional_safety_exception)
          @individual_packaged_meals = args[:individual_packaged_meals] if args.key?(:individual_packaged_meals)
          @individual_packaged_meals_exception = args[:individual_packaged_meals_exception] if args.key?(:individual_packaged_meals_exception)
          @single_use_food_menus = args[:single_use_food_menus] if args.key?(:single_use_food_menus)
          @single_use_food_menus_exception = args[:single_use_food_menus_exception] if args.key?(:single_use_food_menus_exception)
        end
      end
      
      # Language spoken by at least one staff member.
      class LanguageSpoken
        include Google::Apis::Core::Hashable
      
        # Required. The BCP-47 language code for the spoken language. Currently accepted
        # codes: ar, de, en, es, fil, fr, hi, id, it, ja, ko, nl, pt, ru, vi, yue, zh.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # At least one member of the staff can speak the language.
        # Corresponds to the JSON property `spoken`
        # @return [Boolean]
        attr_accessor :spoken
        alias_method :spoken?, :spoken
      
        # Spoken exception.
        # Corresponds to the JSON property `spokenException`
        # @return [String]
        attr_accessor :spoken_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @spoken = args[:spoken] if args.key?(:spoken)
          @spoken_exception = args[:spoken_exception] if args.key?(:spoken_exception)
        end
      end
      
      # An individual room, such as kitchen, bathroom, bedroom, within a bookable
      # guest unit.
      class LivingArea
        include Google::Apis::Core::Hashable
      
        # Accessibility features of the living area.
        # Corresponds to the JSON property `accessibility`
        # @return [Google::Apis::MybusinesslodgingV1::LivingAreaAccessibility]
        attr_accessor :accessibility
      
        # Information about eating features in the living area.
        # Corresponds to the JSON property `eating`
        # @return [Google::Apis::MybusinesslodgingV1::LivingAreaEating]
        attr_accessor :eating
      
        # Features in the living area.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::MybusinesslodgingV1::LivingAreaFeatures]
        attr_accessor :features
      
        # Information about the layout of the living area.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::MybusinesslodgingV1::LivingAreaLayout]
        attr_accessor :layout
      
        # Information about sleeping features in the living area.
        # Corresponds to the JSON property `sleeping`
        # @return [Google::Apis::MybusinesslodgingV1::LivingAreaSleeping]
        attr_accessor :sleeping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility = args[:accessibility] if args.key?(:accessibility)
          @eating = args[:eating] if args.key?(:eating)
          @features = args[:features] if args.key?(:features)
          @layout = args[:layout] if args.key?(:layout)
          @sleeping = args[:sleeping] if args.key?(:sleeping)
        end
      end
      
      # Accessibility features of the living area.
      class LivingAreaAccessibility
        include Google::Apis::Core::Hashable
      
        # ADA compliant unit. A guestroom designed to accommodate the physical
        # challenges of a guest with mobility and/or auditory and/or visual issues, as
        # determined by legislative policy. Usually features enlarged doorways, roll-in
        # showers with seats, bathroom grab bars, and communication equipment for the
        # hearing and sight challenged.
        # Corresponds to the JSON property `adaCompliantUnit`
        # @return [Boolean]
        attr_accessor :ada_compliant_unit
        alias_method :ada_compliant_unit?, :ada_compliant_unit
      
        # ADA compliant unit exception.
        # Corresponds to the JSON property `adaCompliantUnitException`
        # @return [String]
        attr_accessor :ada_compliant_unit_exception
      
        # Hearing-accessible doorbell. A visual indicator(s) of a knock or ring at the
        # door.
        # Corresponds to the JSON property `hearingAccessibleDoorbell`
        # @return [Boolean]
        attr_accessor :hearing_accessible_doorbell
        alias_method :hearing_accessible_doorbell?, :hearing_accessible_doorbell
      
        # Hearing-accessible doorbell exception.
        # Corresponds to the JSON property `hearingAccessibleDoorbellException`
        # @return [String]
        attr_accessor :hearing_accessible_doorbell_exception
      
        # Hearing-accessible fire alarm. A device that gives warning of a fire through
        # flashing lights.
        # Corresponds to the JSON property `hearingAccessibleFireAlarm`
        # @return [Boolean]
        attr_accessor :hearing_accessible_fire_alarm
        alias_method :hearing_accessible_fire_alarm?, :hearing_accessible_fire_alarm
      
        # Hearing-accessible fire alarm exception.
        # Corresponds to the JSON property `hearingAccessibleFireAlarmException`
        # @return [String]
        attr_accessor :hearing_accessible_fire_alarm_exception
      
        # Hearing-accessible unit. A guestroom designed to accommodate the physical
        # challenges of a guest with auditory issues.
        # Corresponds to the JSON property `hearingAccessibleUnit`
        # @return [Boolean]
        attr_accessor :hearing_accessible_unit
        alias_method :hearing_accessible_unit?, :hearing_accessible_unit
      
        # Hearing-accessible unit exception.
        # Corresponds to the JSON property `hearingAccessibleUnitException`
        # @return [String]
        attr_accessor :hearing_accessible_unit_exception
      
        # Mobility-accessible bathtub. A bathtub that accomodates the physically
        # challenged with additional railings or hand grips, a transfer seat or lift,
        # and/or a door to enable walking into the tub.
        # Corresponds to the JSON property `mobilityAccessibleBathtub`
        # @return [Boolean]
        attr_accessor :mobility_accessible_bathtub
        alias_method :mobility_accessible_bathtub?, :mobility_accessible_bathtub
      
        # Mobility-accessible bathtub exception.
        # Corresponds to the JSON property `mobilityAccessibleBathtubException`
        # @return [String]
        attr_accessor :mobility_accessible_bathtub_exception
      
        # Mobility-accessible shower. A shower with an enlarged door or access point to
        # accommodate a wheelchair or a waterproof seat for the physically challenged.
        # Corresponds to the JSON property `mobilityAccessibleShower`
        # @return [Boolean]
        attr_accessor :mobility_accessible_shower
        alias_method :mobility_accessible_shower?, :mobility_accessible_shower
      
        # Mobility-accessible shower exception.
        # Corresponds to the JSON property `mobilityAccessibleShowerException`
        # @return [String]
        attr_accessor :mobility_accessible_shower_exception
      
        # Mobility-accessible toilet. A toilet with a higher seat, grab bars, and/or a
        # larger area around it to accommodate the physically challenged.
        # Corresponds to the JSON property `mobilityAccessibleToilet`
        # @return [Boolean]
        attr_accessor :mobility_accessible_toilet
        alias_method :mobility_accessible_toilet?, :mobility_accessible_toilet
      
        # Mobility-accessible toilet exception.
        # Corresponds to the JSON property `mobilityAccessibleToiletException`
        # @return [String]
        attr_accessor :mobility_accessible_toilet_exception
      
        # Mobility-accessible unit. A guestroom designed to accommodate the physical
        # challenges of a guest with mobility and/or auditory and/or visual issues.
        # Usually features enlarged doorways, roll-in showers with seats, bathroom grab
        # bars, and communication equipment for the hearing and sight challenged.
        # Corresponds to the JSON property `mobilityAccessibleUnit`
        # @return [Boolean]
        attr_accessor :mobility_accessible_unit
        alias_method :mobility_accessible_unit?, :mobility_accessible_unit
      
        # Mobility-accessible unit exception.
        # Corresponds to the JSON property `mobilityAccessibleUnitException`
        # @return [String]
        attr_accessor :mobility_accessible_unit_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ada_compliant_unit = args[:ada_compliant_unit] if args.key?(:ada_compliant_unit)
          @ada_compliant_unit_exception = args[:ada_compliant_unit_exception] if args.key?(:ada_compliant_unit_exception)
          @hearing_accessible_doorbell = args[:hearing_accessible_doorbell] if args.key?(:hearing_accessible_doorbell)
          @hearing_accessible_doorbell_exception = args[:hearing_accessible_doorbell_exception] if args.key?(:hearing_accessible_doorbell_exception)
          @hearing_accessible_fire_alarm = args[:hearing_accessible_fire_alarm] if args.key?(:hearing_accessible_fire_alarm)
          @hearing_accessible_fire_alarm_exception = args[:hearing_accessible_fire_alarm_exception] if args.key?(:hearing_accessible_fire_alarm_exception)
          @hearing_accessible_unit = args[:hearing_accessible_unit] if args.key?(:hearing_accessible_unit)
          @hearing_accessible_unit_exception = args[:hearing_accessible_unit_exception] if args.key?(:hearing_accessible_unit_exception)
          @mobility_accessible_bathtub = args[:mobility_accessible_bathtub] if args.key?(:mobility_accessible_bathtub)
          @mobility_accessible_bathtub_exception = args[:mobility_accessible_bathtub_exception] if args.key?(:mobility_accessible_bathtub_exception)
          @mobility_accessible_shower = args[:mobility_accessible_shower] if args.key?(:mobility_accessible_shower)
          @mobility_accessible_shower_exception = args[:mobility_accessible_shower_exception] if args.key?(:mobility_accessible_shower_exception)
          @mobility_accessible_toilet = args[:mobility_accessible_toilet] if args.key?(:mobility_accessible_toilet)
          @mobility_accessible_toilet_exception = args[:mobility_accessible_toilet_exception] if args.key?(:mobility_accessible_toilet_exception)
          @mobility_accessible_unit = args[:mobility_accessible_unit] if args.key?(:mobility_accessible_unit)
          @mobility_accessible_unit_exception = args[:mobility_accessible_unit_exception] if args.key?(:mobility_accessible_unit_exception)
        end
      end
      
      # Information about eating features in the living area.
      class LivingAreaEating
        include Google::Apis::Core::Hashable
      
        # Coffee maker. An electric appliance that brews coffee by heating and forcing
        # water through ground coffee.
        # Corresponds to the JSON property `coffeeMaker`
        # @return [Boolean]
        attr_accessor :coffee_maker
        alias_method :coffee_maker?, :coffee_maker
      
        # Coffee maker exception.
        # Corresponds to the JSON property `coffeeMakerException`
        # @return [String]
        attr_accessor :coffee_maker_exception
      
        # Cookware. Kitchen pots, pans and utensils used in connection with the
        # preparation of food.
        # Corresponds to the JSON property `cookware`
        # @return [Boolean]
        attr_accessor :cookware
        alias_method :cookware?, :cookware
      
        # Cookware exception.
        # Corresponds to the JSON property `cookwareException`
        # @return [String]
        attr_accessor :cookware_exception
      
        # Dishwasher. A counter-height electrical cabinet containing racks for dirty
        # dishware, cookware and cutlery, and a dispenser for soap built into the pull-
        # down door. The cabinet is attached to the plumbing system to facilitate the
        # automatic cleaning of its contents.
        # Corresponds to the JSON property `dishwasher`
        # @return [Boolean]
        attr_accessor :dishwasher
        alias_method :dishwasher?, :dishwasher
      
        # Dishwasher exception.
        # Corresponds to the JSON property `dishwasherException`
        # @return [String]
        attr_accessor :dishwasher_exception
      
        # Indoor grill. Metal grates built into an indoor cooktop on which food is
        # cooked over an open flame or electric heat source.
        # Corresponds to the JSON property `indoorGrill`
        # @return [Boolean]
        attr_accessor :indoor_grill
        alias_method :indoor_grill?, :indoor_grill
      
        # Indoor grill exception.
        # Corresponds to the JSON property `indoorGrillException`
        # @return [String]
        attr_accessor :indoor_grill_exception
      
        # Kettle. A covered container with a handle and a spout used for boiling water.
        # Corresponds to the JSON property `kettle`
        # @return [Boolean]
        attr_accessor :kettle
        alias_method :kettle?, :kettle
      
        # Kettle exception.
        # Corresponds to the JSON property `kettleException`
        # @return [String]
        attr_accessor :kettle_exception
      
        # Kitchen available. An area of the guestroom designated for the preparation and
        # storage of food via the presence of a refrigerator, cook top, oven and sink,
        # as well as cutlery, dishes and cookware. Usually includes small appliances
        # such a coffee maker and a microwave. May or may not include an automatic
        # dishwasher.
        # Corresponds to the JSON property `kitchenAvailable`
        # @return [Boolean]
        attr_accessor :kitchen_available
        alias_method :kitchen_available?, :kitchen_available
      
        # Kitchen available exception.
        # Corresponds to the JSON property `kitchenAvailableException`
        # @return [String]
        attr_accessor :kitchen_available_exception
      
        # Microwave. An electric oven that quickly cooks and heats food by microwave
        # energy. Smaller than a standing or wall mounted oven. Usually placed on a
        # kitchen counter, a shelf or tabletop or mounted above a cooktop.
        # Corresponds to the JSON property `microwave`
        # @return [Boolean]
        attr_accessor :microwave
        alias_method :microwave?, :microwave
      
        # Microwave exception.
        # Corresponds to the JSON property `microwaveException`
        # @return [String]
        attr_accessor :microwave_exception
      
        # Minibar. A small refrigerated cabinet in the guestroom containing bottles/cans
        # of soft drinks, mini bottles of alcohol, and snacks. The items are most
        # commonly available for a fee.
        # Corresponds to the JSON property `minibar`
        # @return [Boolean]
        attr_accessor :minibar
        alias_method :minibar?, :minibar
      
        # Minibar exception.
        # Corresponds to the JSON property `minibarException`
        # @return [String]
        attr_accessor :minibar_exception
      
        # Outdoor grill. Metal grates on which food is cooked over an open flame or
        # electric heat source. Part of an outdoor apparatus that supports the grates.
        # Also known as barbecue grill or barbecue.
        # Corresponds to the JSON property `outdoorGrill`
        # @return [Boolean]
        attr_accessor :outdoor_grill
        alias_method :outdoor_grill?, :outdoor_grill
      
        # Outdoor grill exception.
        # Corresponds to the JSON property `outdoorGrillException`
        # @return [String]
        attr_accessor :outdoor_grill_exception
      
        # Oven. A temperature controlled, heated metal cabinet powered by gas or
        # electricity in which food is placed for the purpose of cooking or reheating.
        # Corresponds to the JSON property `oven`
        # @return [Boolean]
        attr_accessor :oven
        alias_method :oven?, :oven
      
        # Oven exception.
        # Corresponds to the JSON property `ovenException`
        # @return [String]
        attr_accessor :oven_exception
      
        # Refrigerator. A large, climate-controlled electrical cabinet with vertical
        # doors. Built for the purpose of chilling and storing perishable foods.
        # Corresponds to the JSON property `refrigerator`
        # @return [Boolean]
        attr_accessor :refrigerator
        alias_method :refrigerator?, :refrigerator
      
        # Refrigerator exception.
        # Corresponds to the JSON property `refrigeratorException`
        # @return [String]
        attr_accessor :refrigerator_exception
      
        # Sink. A basin with a faucet attached to a water source and used for the
        # purpose of washing and rinsing.
        # Corresponds to the JSON property `sink`
        # @return [Boolean]
        attr_accessor :sink
        alias_method :sink?, :sink
      
        # Sink exception.
        # Corresponds to the JSON property `sinkException`
        # @return [String]
        attr_accessor :sink_exception
      
        # Snackbar. A small cabinet in the guestroom containing snacks. The items are
        # most commonly available for a fee.
        # Corresponds to the JSON property `snackbar`
        # @return [Boolean]
        attr_accessor :snackbar
        alias_method :snackbar?, :snackbar
      
        # Snackbar exception.
        # Corresponds to the JSON property `snackbarException`
        # @return [String]
        attr_accessor :snackbar_exception
      
        # Stove. A kitchen appliance powered by gas or electricity for the purpose of
        # creating a flame or hot surface on which pots of food can be cooked. Also
        # known as cooktop or hob.
        # Corresponds to the JSON property `stove`
        # @return [Boolean]
        attr_accessor :stove
        alias_method :stove?, :stove
      
        # Stove exception.
        # Corresponds to the JSON property `stoveException`
        # @return [String]
        attr_accessor :stove_exception
      
        # Tea station. A small area with the supplies needed to heat water and make tea.
        # Corresponds to the JSON property `teaStation`
        # @return [Boolean]
        attr_accessor :tea_station
        alias_method :tea_station?, :tea_station
      
        # Tea station exception.
        # Corresponds to the JSON property `teaStationException`
        # @return [String]
        attr_accessor :tea_station_exception
      
        # Toaster. A small, temperature controlled electric appliance with rectangular
        # slots at the top that are lined with heated coils for the purpose of browning
        # slices of bread products.
        # Corresponds to the JSON property `toaster`
        # @return [Boolean]
        attr_accessor :toaster
        alias_method :toaster?, :toaster
      
        # Toaster exception.
        # Corresponds to the JSON property `toasterException`
        # @return [String]
        attr_accessor :toaster_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coffee_maker = args[:coffee_maker] if args.key?(:coffee_maker)
          @coffee_maker_exception = args[:coffee_maker_exception] if args.key?(:coffee_maker_exception)
          @cookware = args[:cookware] if args.key?(:cookware)
          @cookware_exception = args[:cookware_exception] if args.key?(:cookware_exception)
          @dishwasher = args[:dishwasher] if args.key?(:dishwasher)
          @dishwasher_exception = args[:dishwasher_exception] if args.key?(:dishwasher_exception)
          @indoor_grill = args[:indoor_grill] if args.key?(:indoor_grill)
          @indoor_grill_exception = args[:indoor_grill_exception] if args.key?(:indoor_grill_exception)
          @kettle = args[:kettle] if args.key?(:kettle)
          @kettle_exception = args[:kettle_exception] if args.key?(:kettle_exception)
          @kitchen_available = args[:kitchen_available] if args.key?(:kitchen_available)
          @kitchen_available_exception = args[:kitchen_available_exception] if args.key?(:kitchen_available_exception)
          @microwave = args[:microwave] if args.key?(:microwave)
          @microwave_exception = args[:microwave_exception] if args.key?(:microwave_exception)
          @minibar = args[:minibar] if args.key?(:minibar)
          @minibar_exception = args[:minibar_exception] if args.key?(:minibar_exception)
          @outdoor_grill = args[:outdoor_grill] if args.key?(:outdoor_grill)
          @outdoor_grill_exception = args[:outdoor_grill_exception] if args.key?(:outdoor_grill_exception)
          @oven = args[:oven] if args.key?(:oven)
          @oven_exception = args[:oven_exception] if args.key?(:oven_exception)
          @refrigerator = args[:refrigerator] if args.key?(:refrigerator)
          @refrigerator_exception = args[:refrigerator_exception] if args.key?(:refrigerator_exception)
          @sink = args[:sink] if args.key?(:sink)
          @sink_exception = args[:sink_exception] if args.key?(:sink_exception)
          @snackbar = args[:snackbar] if args.key?(:snackbar)
          @snackbar_exception = args[:snackbar_exception] if args.key?(:snackbar_exception)
          @stove = args[:stove] if args.key?(:stove)
          @stove_exception = args[:stove_exception] if args.key?(:stove_exception)
          @tea_station = args[:tea_station] if args.key?(:tea_station)
          @tea_station_exception = args[:tea_station_exception] if args.key?(:tea_station_exception)
          @toaster = args[:toaster] if args.key?(:toaster)
          @toaster_exception = args[:toaster_exception] if args.key?(:toaster_exception)
        end
      end
      
      # Features in the living area.
      class LivingAreaFeatures
        include Google::Apis::Core::Hashable
      
        # Air conditioning. An electrical machine used to cool the temperature of the
        # guestroom.
        # Corresponds to the JSON property `airConditioning`
        # @return [Boolean]
        attr_accessor :air_conditioning
        alias_method :air_conditioning?, :air_conditioning
      
        # Air conditioning exception.
        # Corresponds to the JSON property `airConditioningException`
        # @return [String]
        attr_accessor :air_conditioning_exception
      
        # Bathtub. A fixed plumbing feature set on the floor and consisting of a large
        # container that accommodates the body of an adult for the purpose of seated
        # bathing. Includes knobs or fixtures to control the temperature of the water, a
        # faucet through which the water flows, and a drain that can be closed for
        # filling and opened for draining.
        # Corresponds to the JSON property `bathtub`
        # @return [Boolean]
        attr_accessor :bathtub
        alias_method :bathtub?, :bathtub
      
        # Bathtub exception.
        # Corresponds to the JSON property `bathtubException`
        # @return [String]
        attr_accessor :bathtub_exception
      
        # Bidet. A plumbing fixture attached to a toilet or a low, fixed sink designed
        # for the purpose of washing after toilet use.
        # Corresponds to the JSON property `bidet`
        # @return [Boolean]
        attr_accessor :bidet
        alias_method :bidet?, :bidet
      
        # Bidet exception.
        # Corresponds to the JSON property `bidetException`
        # @return [String]
        attr_accessor :bidet_exception
      
        # Dryer. An electrical machine designed to dry clothing.
        # Corresponds to the JSON property `dryer`
        # @return [Boolean]
        attr_accessor :dryer
        alias_method :dryer?, :dryer
      
        # Dryer exception.
        # Corresponds to the JSON property `dryerException`
        # @return [String]
        attr_accessor :dryer_exception
      
        # Electronic room key. A card coded by the check-in computer that is read by the
        # lock on the hotel guestroom door to allow for entry.
        # Corresponds to the JSON property `electronicRoomKey`
        # @return [Boolean]
        attr_accessor :electronic_room_key
        alias_method :electronic_room_key?, :electronic_room_key
      
        # Electronic room key exception.
        # Corresponds to the JSON property `electronicRoomKeyException`
        # @return [String]
        attr_accessor :electronic_room_key_exception
      
        # Fireplace. A framed opening (aka hearth) at the base of a chimney in which
        # logs or an electrical fire feature are burned to provide a relaxing ambiance
        # or to heat the room. Often made of bricks or stone.
        # Corresponds to the JSON property `fireplace`
        # @return [Boolean]
        attr_accessor :fireplace
        alias_method :fireplace?, :fireplace
      
        # Fireplace exception.
        # Corresponds to the JSON property `fireplaceException`
        # @return [String]
        attr_accessor :fireplace_exception
      
        # Hairdryer. A handheld electric appliance that blows temperature-controlled air
        # for the purpose of drying wet hair. Can be mounted to a bathroom wall or a
        # freestanding device stored in the guestroom's bathroom or closet.
        # Corresponds to the JSON property `hairdryer`
        # @return [Boolean]
        attr_accessor :hairdryer
        alias_method :hairdryer?, :hairdryer
      
        # Hairdryer exception.
        # Corresponds to the JSON property `hairdryerException`
        # @return [String]
        attr_accessor :hairdryer_exception
      
        # Heating. An electrical machine used to warm the temperature of the guestroom.
        # Corresponds to the JSON property `heating`
        # @return [Boolean]
        attr_accessor :heating
        alias_method :heating?, :heating
      
        # Heating exception.
        # Corresponds to the JSON property `heatingException`
        # @return [String]
        attr_accessor :heating_exception
      
        # In-unit safe. A strong fireproof cabinet with a programmable lock, used for
        # the protected storage of valuables in a guestroom. Often built into a closet.
        # Corresponds to the JSON property `inunitSafe`
        # @return [Boolean]
        attr_accessor :inunit_safe
        alias_method :inunit_safe?, :inunit_safe
      
        # In-unit safe exception.
        # Corresponds to the JSON property `inunitSafeException`
        # @return [String]
        attr_accessor :inunit_safe_exception
      
        # In-unit Wifi available. Guests can wirelessly connect to the Internet in the
        # guestroom. Can be free or for a fee.
        # Corresponds to the JSON property `inunitWifiAvailable`
        # @return [Boolean]
        attr_accessor :inunit_wifi_available
        alias_method :inunit_wifi_available?, :inunit_wifi_available
      
        # In-unit Wifi available exception.
        # Corresponds to the JSON property `inunitWifiAvailableException`
        # @return [String]
        attr_accessor :inunit_wifi_available_exception
      
        # Ironing equipment. A device, usually with a flat metal base, that is heated to
        # smooth, finish, or press clothes and a flat, padded, cloth-covered surface on
        # which the clothes are worked.
        # Corresponds to the JSON property `ironingEquipment`
        # @return [Boolean]
        attr_accessor :ironing_equipment
        alias_method :ironing_equipment?, :ironing_equipment
      
        # Ironing equipment exception.
        # Corresponds to the JSON property `ironingEquipmentException`
        # @return [String]
        attr_accessor :ironing_equipment_exception
      
        # Pay per view movies. Televisions with channels that offer films that can be
        # viewed for a fee, and have an interface to allow the viewer to accept the
        # terms and approve payment.
        # Corresponds to the JSON property `payPerViewMovies`
        # @return [Boolean]
        attr_accessor :pay_per_view_movies
        alias_method :pay_per_view_movies?, :pay_per_view_movies
      
        # Pay per view movies exception.
        # Corresponds to the JSON property `payPerViewMoviesException`
        # @return [String]
        attr_accessor :pay_per_view_movies_exception
      
        # Private bathroom. A bathroom designated for the express use of the guests
        # staying in a specific guestroom.
        # Corresponds to the JSON property `privateBathroom`
        # @return [Boolean]
        attr_accessor :private_bathroom
        alias_method :private_bathroom?, :private_bathroom
      
        # Private bathroom exception.
        # Corresponds to the JSON property `privateBathroomException`
        # @return [String]
        attr_accessor :private_bathroom_exception
      
        # Shower. A fixed plumbing fixture for standing bathing that features a tall
        # spray spout or faucet through which water flows, a knob or knobs that control
        # the water's temperature, and a drain in the floor.
        # Corresponds to the JSON property `shower`
        # @return [Boolean]
        attr_accessor :shower
        alias_method :shower?, :shower
      
        # Shower exception.
        # Corresponds to the JSON property `showerException`
        # @return [String]
        attr_accessor :shower_exception
      
        # Toilet. A fixed bathroom feature connected to a sewer or septic system and
        # consisting of a water-flushed bowl with a seat, as well as a device that
        # elicites the water-flushing action. Used for the process and disposal of human
        # waste.
        # Corresponds to the JSON property `toilet`
        # @return [Boolean]
        attr_accessor :toilet
        alias_method :toilet?, :toilet
      
        # Toilet exception.
        # Corresponds to the JSON property `toiletException`
        # @return [String]
        attr_accessor :toilet_exception
      
        # TV. A television is available in the guestroom.
        # Corresponds to the JSON property `tv`
        # @return [Boolean]
        attr_accessor :tv
        alias_method :tv?, :tv
      
        # TV casting. A television equipped with a device through which the video
        # entertainment accessed on a personal computer, phone or tablet can be
        # wirelessly delivered to and viewed on the guestroom's television.
        # Corresponds to the JSON property `tvCasting`
        # @return [Boolean]
        attr_accessor :tv_casting
        alias_method :tv_casting?, :tv_casting
      
        # TV exception.
        # Corresponds to the JSON property `tvCastingException`
        # @return [String]
        attr_accessor :tv_casting_exception
      
        # TV exception.
        # Corresponds to the JSON property `tvException`
        # @return [String]
        attr_accessor :tv_exception
      
        # TV streaming. Televisions that embed a range of web-based apps to allow for
        # watching media from those apps.
        # Corresponds to the JSON property `tvStreaming`
        # @return [Boolean]
        attr_accessor :tv_streaming
        alias_method :tv_streaming?, :tv_streaming
      
        # TV streaming exception.
        # Corresponds to the JSON property `tvStreamingException`
        # @return [String]
        attr_accessor :tv_streaming_exception
      
        # Universal power adapters. A power supply for electronic devices which plugs
        # into a wall for the purpose of converting AC to a single DC voltage. Also know
        # as AC adapter or charger.
        # Corresponds to the JSON property `universalPowerAdapters`
        # @return [Boolean]
        attr_accessor :universal_power_adapters
        alias_method :universal_power_adapters?, :universal_power_adapters
      
        # Universal power adapters exception.
        # Corresponds to the JSON property `universalPowerAdaptersException`
        # @return [String]
        attr_accessor :universal_power_adapters_exception
      
        # Washer. An electrical machine connected to a running water source designed to
        # launder clothing.
        # Corresponds to the JSON property `washer`
        # @return [Boolean]
        attr_accessor :washer
        alias_method :washer?, :washer
      
        # Washer exception.
        # Corresponds to the JSON property `washerException`
        # @return [String]
        attr_accessor :washer_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @air_conditioning = args[:air_conditioning] if args.key?(:air_conditioning)
          @air_conditioning_exception = args[:air_conditioning_exception] if args.key?(:air_conditioning_exception)
          @bathtub = args[:bathtub] if args.key?(:bathtub)
          @bathtub_exception = args[:bathtub_exception] if args.key?(:bathtub_exception)
          @bidet = args[:bidet] if args.key?(:bidet)
          @bidet_exception = args[:bidet_exception] if args.key?(:bidet_exception)
          @dryer = args[:dryer] if args.key?(:dryer)
          @dryer_exception = args[:dryer_exception] if args.key?(:dryer_exception)
          @electronic_room_key = args[:electronic_room_key] if args.key?(:electronic_room_key)
          @electronic_room_key_exception = args[:electronic_room_key_exception] if args.key?(:electronic_room_key_exception)
          @fireplace = args[:fireplace] if args.key?(:fireplace)
          @fireplace_exception = args[:fireplace_exception] if args.key?(:fireplace_exception)
          @hairdryer = args[:hairdryer] if args.key?(:hairdryer)
          @hairdryer_exception = args[:hairdryer_exception] if args.key?(:hairdryer_exception)
          @heating = args[:heating] if args.key?(:heating)
          @heating_exception = args[:heating_exception] if args.key?(:heating_exception)
          @inunit_safe = args[:inunit_safe] if args.key?(:inunit_safe)
          @inunit_safe_exception = args[:inunit_safe_exception] if args.key?(:inunit_safe_exception)
          @inunit_wifi_available = args[:inunit_wifi_available] if args.key?(:inunit_wifi_available)
          @inunit_wifi_available_exception = args[:inunit_wifi_available_exception] if args.key?(:inunit_wifi_available_exception)
          @ironing_equipment = args[:ironing_equipment] if args.key?(:ironing_equipment)
          @ironing_equipment_exception = args[:ironing_equipment_exception] if args.key?(:ironing_equipment_exception)
          @pay_per_view_movies = args[:pay_per_view_movies] if args.key?(:pay_per_view_movies)
          @pay_per_view_movies_exception = args[:pay_per_view_movies_exception] if args.key?(:pay_per_view_movies_exception)
          @private_bathroom = args[:private_bathroom] if args.key?(:private_bathroom)
          @private_bathroom_exception = args[:private_bathroom_exception] if args.key?(:private_bathroom_exception)
          @shower = args[:shower] if args.key?(:shower)
          @shower_exception = args[:shower_exception] if args.key?(:shower_exception)
          @toilet = args[:toilet] if args.key?(:toilet)
          @toilet_exception = args[:toilet_exception] if args.key?(:toilet_exception)
          @tv = args[:tv] if args.key?(:tv)
          @tv_casting = args[:tv_casting] if args.key?(:tv_casting)
          @tv_casting_exception = args[:tv_casting_exception] if args.key?(:tv_casting_exception)
          @tv_exception = args[:tv_exception] if args.key?(:tv_exception)
          @tv_streaming = args[:tv_streaming] if args.key?(:tv_streaming)
          @tv_streaming_exception = args[:tv_streaming_exception] if args.key?(:tv_streaming_exception)
          @universal_power_adapters = args[:universal_power_adapters] if args.key?(:universal_power_adapters)
          @universal_power_adapters_exception = args[:universal_power_adapters_exception] if args.key?(:universal_power_adapters_exception)
          @washer = args[:washer] if args.key?(:washer)
          @washer_exception = args[:washer_exception] if args.key?(:washer_exception)
        end
      end
      
      # Information about the layout of the living area.
      class LivingAreaLayout
        include Google::Apis::Core::Hashable
      
        # Balcony. An outdoor platform attached to a building and surrounded by a short
        # wall, fence or other safety railing. The balcony is accessed through a door in
        # a guestroom or suite and is for use by the guest staying in that room. May or
        # may not include seating or outdoor furniture. Is not located on the ground
        # floor. Also lanai.
        # Corresponds to the JSON property `balcony`
        # @return [Boolean]
        attr_accessor :balcony
        alias_method :balcony?, :balcony
      
        # Balcony exception.
        # Corresponds to the JSON property `balconyException`
        # @return [String]
        attr_accessor :balcony_exception
      
        # Living area sq meters. The measurement in meters of the area of a guestroom's
        # living space.
        # Corresponds to the JSON property `livingAreaSqMeters`
        # @return [Float]
        attr_accessor :living_area_sq_meters
      
        # Living area sq meters exception.
        # Corresponds to the JSON property `livingAreaSqMetersException`
        # @return [String]
        attr_accessor :living_area_sq_meters_exception
      
        # Loft. A three-walled upper area accessed by stairs or a ladder that overlooks
        # the lower area of a room.
        # Corresponds to the JSON property `loft`
        # @return [Boolean]
        attr_accessor :loft
        alias_method :loft?, :loft
      
        # Loft exception.
        # Corresponds to the JSON property `loftException`
        # @return [String]
        attr_accessor :loft_exception
      
        # Non smoking. A guestroom in which the smoking of cigarettes, cigars and pipes
        # is prohibited.
        # Corresponds to the JSON property `nonSmoking`
        # @return [Boolean]
        attr_accessor :non_smoking
        alias_method :non_smoking?, :non_smoking
      
        # Non smoking exception.
        # Corresponds to the JSON property `nonSmokingException`
        # @return [String]
        attr_accessor :non_smoking_exception
      
        # Patio. A paved, outdoor area with seating attached to and accessed through a
        # ground-floor guestroom for use by the occupants of the guestroom.
        # Corresponds to the JSON property `patio`
        # @return [Boolean]
        attr_accessor :patio
        alias_method :patio?, :patio
      
        # Patio exception.
        # Corresponds to the JSON property `patioException`
        # @return [String]
        attr_accessor :patio_exception
      
        # Stairs. There are steps leading from one level or story to another in the unit.
        # Corresponds to the JSON property `stairs`
        # @return [Boolean]
        attr_accessor :stairs
        alias_method :stairs?, :stairs
      
        # Stairs exception.
        # Corresponds to the JSON property `stairsException`
        # @return [String]
        attr_accessor :stairs_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balcony = args[:balcony] if args.key?(:balcony)
          @balcony_exception = args[:balcony_exception] if args.key?(:balcony_exception)
          @living_area_sq_meters = args[:living_area_sq_meters] if args.key?(:living_area_sq_meters)
          @living_area_sq_meters_exception = args[:living_area_sq_meters_exception] if args.key?(:living_area_sq_meters_exception)
          @loft = args[:loft] if args.key?(:loft)
          @loft_exception = args[:loft_exception] if args.key?(:loft_exception)
          @non_smoking = args[:non_smoking] if args.key?(:non_smoking)
          @non_smoking_exception = args[:non_smoking_exception] if args.key?(:non_smoking_exception)
          @patio = args[:patio] if args.key?(:patio)
          @patio_exception = args[:patio_exception] if args.key?(:patio_exception)
          @stairs = args[:stairs] if args.key?(:stairs)
          @stairs_exception = args[:stairs_exception] if args.key?(:stairs_exception)
        end
      end
      
      # Information about sleeping features in the living area.
      class LivingAreaSleeping
        include Google::Apis::Core::Hashable
      
        # Beds count. The number of permanent beds present in a guestroom. Does not
        # include rollaway beds, cribs or sofabeds.
        # Corresponds to the JSON property `bedsCount`
        # @return [Fixnum]
        attr_accessor :beds_count
      
        # Beds count exception.
        # Corresponds to the JSON property `bedsCountException`
        # @return [String]
        attr_accessor :beds_count_exception
      
        # Bunk beds count. The number of furniture pieces in which one framed mattress
        # is fixed directly above another by means of a physical frame. This allows one
        # person(s) to sleep in the bottom bunk and one person(s) to sleep in the top
        # bunk. Also known as double decker bed.
        # Corresponds to the JSON property `bunkBedsCount`
        # @return [Fixnum]
        attr_accessor :bunk_beds_count
      
        # Bunk beds count exception.
        # Corresponds to the JSON property `bunkBedsCountException`
        # @return [String]
        attr_accessor :bunk_beds_count_exception
      
        # Cribs count. The number of small beds for an infant or toddler that the
        # guestroom can obtain. The bed is surrounded by a high railing to prevent the
        # child from falling or climbing out of the bed
        # Corresponds to the JSON property `cribsCount`
        # @return [Fixnum]
        attr_accessor :cribs_count
      
        # Cribs count exception.
        # Corresponds to the JSON property `cribsCountException`
        # @return [String]
        attr_accessor :cribs_count_exception
      
        # Double beds count. The number of medium beds measuring 53"W x 75"L (135cm x
        # 191cm). Also known as full size bed.
        # Corresponds to the JSON property `doubleBedsCount`
        # @return [Fixnum]
        attr_accessor :double_beds_count
      
        # Double beds count exception.
        # Corresponds to the JSON property `doubleBedsCountException`
        # @return [String]
        attr_accessor :double_beds_count_exception
      
        # Feather pillows. The option for guests to obtain bed pillows that are stuffed
        # with the feathers and down of ducks or geese.
        # Corresponds to the JSON property `featherPillows`
        # @return [Boolean]
        attr_accessor :feather_pillows
        alias_method :feather_pillows?, :feather_pillows
      
        # Feather pillows exception.
        # Corresponds to the JSON property `featherPillowsException`
        # @return [String]
        attr_accessor :feather_pillows_exception
      
        # Hypoallergenic bedding. Bedding such as linens, pillows, mattress covers and/
        # or mattresses that are made of materials known to be resistant to allergens
        # such as mold, dust and dander.
        # Corresponds to the JSON property `hypoallergenicBedding`
        # @return [Boolean]
        attr_accessor :hypoallergenic_bedding
        alias_method :hypoallergenic_bedding?, :hypoallergenic_bedding
      
        # Hypoallergenic bedding exception.
        # Corresponds to the JSON property `hypoallergenicBeddingException`
        # @return [String]
        attr_accessor :hypoallergenic_bedding_exception
      
        # King beds count. The number of large beds measuring 76"W x 80"L (193cm x 102cm)
        # . Most often meant to accompany two people. Includes California king and super
        # king.
        # Corresponds to the JSON property `kingBedsCount`
        # @return [Fixnum]
        attr_accessor :king_beds_count
      
        # King beds count exception.
        # Corresponds to the JSON property `kingBedsCountException`
        # @return [String]
        attr_accessor :king_beds_count_exception
      
        # Memory foam pillows. The option for guests to obtain bed pillows that are
        # stuffed with a man-made foam that responds to body heat by conforming to the
        # body closely, and then recovers its shape when the pillow cools down.
        # Corresponds to the JSON property `memoryFoamPillows`
        # @return [Boolean]
        attr_accessor :memory_foam_pillows
        alias_method :memory_foam_pillows?, :memory_foam_pillows
      
        # Memory foam pillows exception.
        # Corresponds to the JSON property `memoryFoamPillowsException`
        # @return [String]
        attr_accessor :memory_foam_pillows_exception
      
        # Other beds count. The number of beds that are not standard mattress and
        # boxspring setups such as Japanese tatami mats, trundle beds, air mattresses
        # and cots.
        # Corresponds to the JSON property `otherBedsCount`
        # @return [Fixnum]
        attr_accessor :other_beds_count
      
        # Other beds count exception.
        # Corresponds to the JSON property `otherBedsCountException`
        # @return [String]
        attr_accessor :other_beds_count_exception
      
        # Queen beds count. The number of medium-large beds measuring 60"W x 80"L (152cm
        # x 102cm).
        # Corresponds to the JSON property `queenBedsCount`
        # @return [Fixnum]
        attr_accessor :queen_beds_count
      
        # Queen beds count exception.
        # Corresponds to the JSON property `queenBedsCountException`
        # @return [String]
        attr_accessor :queen_beds_count_exception
      
        # Roll away beds count. The number of mattresses on wheeled frames that can be
        # folded in half and rolled away for easy storage that the guestroom can obtain
        # upon request.
        # Corresponds to the JSON property `rollAwayBedsCount`
        # @return [Fixnum]
        attr_accessor :roll_away_beds_count
      
        # Roll away beds count exception.
        # Corresponds to the JSON property `rollAwayBedsCountException`
        # @return [String]
        attr_accessor :roll_away_beds_count_exception
      
        # Single or twin count beds. The number of smaller beds measuring 38"W x 75"L (
        # 97cm x 191cm) that can accommodate one adult.
        # Corresponds to the JSON property `singleOrTwinBedsCount`
        # @return [Fixnum]
        attr_accessor :single_or_twin_beds_count
      
        # Single or twin beds count exception.
        # Corresponds to the JSON property `singleOrTwinBedsCountException`
        # @return [String]
        attr_accessor :single_or_twin_beds_count_exception
      
        # Sofa beds count. The number of specially designed sofas that can be made to
        # serve as a bed by lowering its hinged upholstered back to horizontal position
        # or by pulling out a concealed mattress.
        # Corresponds to the JSON property `sofaBedsCount`
        # @return [Fixnum]
        attr_accessor :sofa_beds_count
      
        # Sofa beds count exception.
        # Corresponds to the JSON property `sofaBedsCountException`
        # @return [String]
        attr_accessor :sofa_beds_count_exception
      
        # Synthetic pillows. The option for guests to obtain bed pillows stuffed with
        # polyester material crafted to reproduce the feel of a pillow stuffed with down
        # and feathers.
        # Corresponds to the JSON property `syntheticPillows`
        # @return [Boolean]
        attr_accessor :synthetic_pillows
        alias_method :synthetic_pillows?, :synthetic_pillows
      
        # Synthetic pillows exception.
        # Corresponds to the JSON property `syntheticPillowsException`
        # @return [String]
        attr_accessor :synthetic_pillows_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beds_count = args[:beds_count] if args.key?(:beds_count)
          @beds_count_exception = args[:beds_count_exception] if args.key?(:beds_count_exception)
          @bunk_beds_count = args[:bunk_beds_count] if args.key?(:bunk_beds_count)
          @bunk_beds_count_exception = args[:bunk_beds_count_exception] if args.key?(:bunk_beds_count_exception)
          @cribs_count = args[:cribs_count] if args.key?(:cribs_count)
          @cribs_count_exception = args[:cribs_count_exception] if args.key?(:cribs_count_exception)
          @double_beds_count = args[:double_beds_count] if args.key?(:double_beds_count)
          @double_beds_count_exception = args[:double_beds_count_exception] if args.key?(:double_beds_count_exception)
          @feather_pillows = args[:feather_pillows] if args.key?(:feather_pillows)
          @feather_pillows_exception = args[:feather_pillows_exception] if args.key?(:feather_pillows_exception)
          @hypoallergenic_bedding = args[:hypoallergenic_bedding] if args.key?(:hypoallergenic_bedding)
          @hypoallergenic_bedding_exception = args[:hypoallergenic_bedding_exception] if args.key?(:hypoallergenic_bedding_exception)
          @king_beds_count = args[:king_beds_count] if args.key?(:king_beds_count)
          @king_beds_count_exception = args[:king_beds_count_exception] if args.key?(:king_beds_count_exception)
          @memory_foam_pillows = args[:memory_foam_pillows] if args.key?(:memory_foam_pillows)
          @memory_foam_pillows_exception = args[:memory_foam_pillows_exception] if args.key?(:memory_foam_pillows_exception)
          @other_beds_count = args[:other_beds_count] if args.key?(:other_beds_count)
          @other_beds_count_exception = args[:other_beds_count_exception] if args.key?(:other_beds_count_exception)
          @queen_beds_count = args[:queen_beds_count] if args.key?(:queen_beds_count)
          @queen_beds_count_exception = args[:queen_beds_count_exception] if args.key?(:queen_beds_count_exception)
          @roll_away_beds_count = args[:roll_away_beds_count] if args.key?(:roll_away_beds_count)
          @roll_away_beds_count_exception = args[:roll_away_beds_count_exception] if args.key?(:roll_away_beds_count_exception)
          @single_or_twin_beds_count = args[:single_or_twin_beds_count] if args.key?(:single_or_twin_beds_count)
          @single_or_twin_beds_count_exception = args[:single_or_twin_beds_count_exception] if args.key?(:single_or_twin_beds_count_exception)
          @sofa_beds_count = args[:sofa_beds_count] if args.key?(:sofa_beds_count)
          @sofa_beds_count_exception = args[:sofa_beds_count_exception] if args.key?(:sofa_beds_count_exception)
          @synthetic_pillows = args[:synthetic_pillows] if args.key?(:synthetic_pillows)
          @synthetic_pillows_exception = args[:synthetic_pillows_exception] if args.key?(:synthetic_pillows_exception)
        end
      end
      
      # Lodging of a location that provides accomodations.
      class Lodging
        include Google::Apis::Core::Hashable
      
        # Physical adaptations made to the property in consideration of varying levels
        # of human physical ability.
        # Corresponds to the JSON property `accessibility`
        # @return [Google::Apis::MybusinesslodgingV1::Accessibility]
        attr_accessor :accessibility
      
        # Amenities and features related to leisure and play.
        # Corresponds to the JSON property `activities`
        # @return [Google::Apis::MybusinesslodgingV1::Activities]
        attr_accessor :activities
      
        # Features and available amenities in the guest unit.
        # Corresponds to the JSON property `allUnits`
        # @return [Google::Apis::MybusinesslodgingV1::GuestUnitFeatures]
        attr_accessor :all_units
      
        # Features of the property of specific interest to the business traveler.
        # Corresponds to the JSON property `business`
        # @return [Google::Apis::MybusinesslodgingV1::Business]
        attr_accessor :business
      
        # An individual room, such as kitchen, bathroom, bedroom, within a bookable
        # guest unit.
        # Corresponds to the JSON property `commonLivingArea`
        # @return [Google::Apis::MybusinesslodgingV1::LivingArea]
        attr_accessor :common_living_area
      
        # The ways in which the property provides guests with the ability to access the
        # internet.
        # Corresponds to the JSON property `connectivity`
        # @return [Google::Apis::MybusinesslodgingV1::Connectivity]
        attr_accessor :connectivity
      
        # Services and amenities for families and young guests.
        # Corresponds to the JSON property `families`
        # @return [Google::Apis::MybusinesslodgingV1::Families]
        attr_accessor :families
      
        # Meals, snacks, and beverages available at the property.
        # Corresponds to the JSON property `foodAndDrink`
        # @return [Google::Apis::MybusinesslodgingV1::FoodAndDrink]
        attr_accessor :food_and_drink
      
        # Individual GuestUnitTypes that are available in this Lodging.
        # Corresponds to the JSON property `guestUnits`
        # @return [Array<Google::Apis::MybusinesslodgingV1::GuestUnitType>]
        attr_accessor :guest_units
      
        # Health and safety measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `healthAndSafety`
        # @return [Google::Apis::MybusinesslodgingV1::HealthAndSafety]
        attr_accessor :health_and_safety
      
        # Conveniences provided in guest units to facilitate an easier, more comfortable
        # stay.
        # Corresponds to the JSON property `housekeeping`
        # @return [Google::Apis::MybusinesslodgingV1::Housekeeping]
        attr_accessor :housekeeping
      
        # Metadata for the Lodging.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MybusinesslodgingV1::LodgingMetadata]
        attr_accessor :metadata
      
        # Required. Google identifier for this location in the form: `locations/`
        # location_id`/lodging`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parking options at the property.
        # Corresponds to the JSON property `parking`
        # @return [Google::Apis::MybusinesslodgingV1::Parking]
        attr_accessor :parking
      
        # Policies regarding guest-owned animals.
        # Corresponds to the JSON property `pets`
        # @return [Google::Apis::MybusinesslodgingV1::Pets]
        attr_accessor :pets
      
        # Property rules that impact guests.
        # Corresponds to the JSON property `policies`
        # @return [Google::Apis::MybusinesslodgingV1::Policies]
        attr_accessor :policies
      
        # Swimming pool or recreational water facilities available at the hotel.
        # Corresponds to the JSON property `pools`
        # @return [Google::Apis::MybusinesslodgingV1::Pools]
        attr_accessor :pools
      
        # General factual information about the property's physical structure and
        # important dates.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::MybusinesslodgingV1::Property]
        attr_accessor :property
      
        # Conveniences or help provided by the property to facilitate an easier, more
        # comfortable stay.
        # Corresponds to the JSON property `services`
        # @return [Google::Apis::MybusinesslodgingV1::Services]
        attr_accessor :services
      
        # Features and available amenities in the guest unit.
        # Corresponds to the JSON property `someUnits`
        # @return [Google::Apis::MybusinesslodgingV1::GuestUnitFeatures]
        attr_accessor :some_units
      
        # Sustainability practices implemented at the hotel.
        # Corresponds to the JSON property `sustainability`
        # @return [Google::Apis::MybusinesslodgingV1::Sustainability]
        attr_accessor :sustainability
      
        # Vehicles or vehicular services facilitated or owned by the property.
        # Corresponds to the JSON property `transportation`
        # @return [Google::Apis::MybusinesslodgingV1::Transportation]
        attr_accessor :transportation
      
        # Guest facilities at the property to promote or maintain health, beauty, and
        # fitness.
        # Corresponds to the JSON property `wellness`
        # @return [Google::Apis::MybusinesslodgingV1::Wellness]
        attr_accessor :wellness
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility = args[:accessibility] if args.key?(:accessibility)
          @activities = args[:activities] if args.key?(:activities)
          @all_units = args[:all_units] if args.key?(:all_units)
          @business = args[:business] if args.key?(:business)
          @common_living_area = args[:common_living_area] if args.key?(:common_living_area)
          @connectivity = args[:connectivity] if args.key?(:connectivity)
          @families = args[:families] if args.key?(:families)
          @food_and_drink = args[:food_and_drink] if args.key?(:food_and_drink)
          @guest_units = args[:guest_units] if args.key?(:guest_units)
          @health_and_safety = args[:health_and_safety] if args.key?(:health_and_safety)
          @housekeeping = args[:housekeeping] if args.key?(:housekeeping)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @parking = args[:parking] if args.key?(:parking)
          @pets = args[:pets] if args.key?(:pets)
          @policies = args[:policies] if args.key?(:policies)
          @pools = args[:pools] if args.key?(:pools)
          @property = args[:property] if args.key?(:property)
          @services = args[:services] if args.key?(:services)
          @some_units = args[:some_units] if args.key?(:some_units)
          @sustainability = args[:sustainability] if args.key?(:sustainability)
          @transportation = args[:transportation] if args.key?(:transportation)
          @wellness = args[:wellness] if args.key?(:wellness)
        end
      end
      
      # Metadata for the Lodging.
      class LodgingMetadata
        include Google::Apis::Core::Hashable
      
        # Required. The latest time at which the Lodging data is asserted to be true in
        # the real world. This is not necessarily the time at which the request is made.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Minimized contact measures implemented by the hotel during COVID-19.
      class MinimizedContact
        include Google::Apis::Core::Hashable
      
        # No-contact check-in and check-out.
        # Corresponds to the JSON property `contactlessCheckinCheckout`
        # @return [Boolean]
        attr_accessor :contactless_checkin_checkout
        alias_method :contactless_checkin_checkout?, :contactless_checkin_checkout
      
        # Contactless check-in check-out exception.
        # Corresponds to the JSON property `contactlessCheckinCheckoutException`
        # @return [String]
        attr_accessor :contactless_checkin_checkout_exception
      
        # Keyless mobile entry to guest rooms.
        # Corresponds to the JSON property `digitalGuestRoomKeys`
        # @return [Boolean]
        attr_accessor :digital_guest_room_keys
        alias_method :digital_guest_room_keys?, :digital_guest_room_keys
      
        # Digital guest room keys exception.
        # Corresponds to the JSON property `digitalGuestRoomKeysException`
        # @return [String]
        attr_accessor :digital_guest_room_keys_exception
      
        # Housekeeping scheduled by request only.
        # Corresponds to the JSON property `housekeepingScheduledRequestOnly`
        # @return [Boolean]
        attr_accessor :housekeeping_scheduled_request_only
        alias_method :housekeeping_scheduled_request_only?, :housekeeping_scheduled_request_only
      
        # Housekeeping scheduled request only exception.
        # Corresponds to the JSON property `housekeepingScheduledRequestOnlyException`
        # @return [String]
        attr_accessor :housekeeping_scheduled_request_only_exception
      
        # High-touch items, such as magazines, removed from common areas.
        # Corresponds to the JSON property `noHighTouchItemsCommonAreas`
        # @return [Boolean]
        attr_accessor :no_high_touch_items_common_areas
        alias_method :no_high_touch_items_common_areas?, :no_high_touch_items_common_areas
      
        # No high touch items common areas exception.
        # Corresponds to the JSON property `noHighTouchItemsCommonAreasException`
        # @return [String]
        attr_accessor :no_high_touch_items_common_areas_exception
      
        # High-touch items, such as decorative pillows, removed from guest rooms.
        # Corresponds to the JSON property `noHighTouchItemsGuestRooms`
        # @return [Boolean]
        attr_accessor :no_high_touch_items_guest_rooms
        alias_method :no_high_touch_items_guest_rooms?, :no_high_touch_items_guest_rooms
      
        # No high touch items guest rooms exception.
        # Corresponds to the JSON property `noHighTouchItemsGuestRoomsException`
        # @return [String]
        attr_accessor :no_high_touch_items_guest_rooms_exception
      
        # Plastic key cards are disinfected or discarded.
        # Corresponds to the JSON property `plasticKeycardsDisinfected`
        # @return [Boolean]
        attr_accessor :plastic_keycards_disinfected
        alias_method :plastic_keycards_disinfected?, :plastic_keycards_disinfected
      
        # Plastic keycards disinfected exception.
        # Corresponds to the JSON property `plasticKeycardsDisinfectedException`
        # @return [String]
        attr_accessor :plastic_keycards_disinfected_exception
      
        # Buffer maintained between room bookings.
        # Corresponds to the JSON property `roomBookingsBuffer`
        # @return [Boolean]
        attr_accessor :room_bookings_buffer
        alias_method :room_bookings_buffer?, :room_bookings_buffer
      
        # Room bookings buffer exception.
        # Corresponds to the JSON property `roomBookingsBufferException`
        # @return [String]
        attr_accessor :room_bookings_buffer_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contactless_checkin_checkout = args[:contactless_checkin_checkout] if args.key?(:contactless_checkin_checkout)
          @contactless_checkin_checkout_exception = args[:contactless_checkin_checkout_exception] if args.key?(:contactless_checkin_checkout_exception)
          @digital_guest_room_keys = args[:digital_guest_room_keys] if args.key?(:digital_guest_room_keys)
          @digital_guest_room_keys_exception = args[:digital_guest_room_keys_exception] if args.key?(:digital_guest_room_keys_exception)
          @housekeeping_scheduled_request_only = args[:housekeeping_scheduled_request_only] if args.key?(:housekeeping_scheduled_request_only)
          @housekeeping_scheduled_request_only_exception = args[:housekeeping_scheduled_request_only_exception] if args.key?(:housekeeping_scheduled_request_only_exception)
          @no_high_touch_items_common_areas = args[:no_high_touch_items_common_areas] if args.key?(:no_high_touch_items_common_areas)
          @no_high_touch_items_common_areas_exception = args[:no_high_touch_items_common_areas_exception] if args.key?(:no_high_touch_items_common_areas_exception)
          @no_high_touch_items_guest_rooms = args[:no_high_touch_items_guest_rooms] if args.key?(:no_high_touch_items_guest_rooms)
          @no_high_touch_items_guest_rooms_exception = args[:no_high_touch_items_guest_rooms_exception] if args.key?(:no_high_touch_items_guest_rooms_exception)
          @plastic_keycards_disinfected = args[:plastic_keycards_disinfected] if args.key?(:plastic_keycards_disinfected)
          @plastic_keycards_disinfected_exception = args[:plastic_keycards_disinfected_exception] if args.key?(:plastic_keycards_disinfected_exception)
          @room_bookings_buffer = args[:room_bookings_buffer] if args.key?(:room_bookings_buffer)
          @room_bookings_buffer_exception = args[:room_bookings_buffer_exception] if args.key?(:room_bookings_buffer_exception)
        end
      end
      
      # Parking options at the property.
      class Parking
        include Google::Apis::Core::Hashable
      
        # Electric car charging stations. Electric power stations, usually located
        # outdoors, into which guests plug their electric cars to receive a charge.
        # Corresponds to the JSON property `electricCarChargingStations`
        # @return [Boolean]
        attr_accessor :electric_car_charging_stations
        alias_method :electric_car_charging_stations?, :electric_car_charging_stations
      
        # Electric car charging stations exception.
        # Corresponds to the JSON property `electricCarChargingStationsException`
        # @return [String]
        attr_accessor :electric_car_charging_stations_exception
      
        # Free parking. The hotel allows the cars of guests to be parked for free.
        # Parking facility may be an outdoor lot or an indoor garage, but must be onsite.
        # Nearby parking does not apply. Parking may be performed by the guest or by
        # hotel staff. Free parking must be available to all guests (limited conditions
        # does not apply).
        # Corresponds to the JSON property `freeParking`
        # @return [Boolean]
        attr_accessor :free_parking
        alias_method :free_parking?, :free_parking
      
        # Free parking exception.
        # Corresponds to the JSON property `freeParkingException`
        # @return [String]
        attr_accessor :free_parking_exception
      
        # Free self parking. Guests park their own cars for free. Parking facility may
        # be an outdoor lot or an indoor garage, but must be onsite. Nearby parking does
        # not apply.
        # Corresponds to the JSON property `freeSelfParking`
        # @return [Boolean]
        attr_accessor :free_self_parking
        alias_method :free_self_parking?, :free_self_parking
      
        # Free self parking exception.
        # Corresponds to the JSON property `freeSelfParkingException`
        # @return [String]
        attr_accessor :free_self_parking_exception
      
        # Free valet parking. Hotel staff member parks the cars of guests. Parking with
        # this service is free.
        # Corresponds to the JSON property `freeValetParking`
        # @return [Boolean]
        attr_accessor :free_valet_parking
        alias_method :free_valet_parking?, :free_valet_parking
      
        # Free valet parking exception.
        # Corresponds to the JSON property `freeValetParkingException`
        # @return [String]
        attr_accessor :free_valet_parking_exception
      
        # Parking available. The hotel allows the cars of guests to be parked. Can be
        # free or for a fee. Parking facility may be an outdoor lot or an indoor garage,
        # but must be onsite. Nearby parking does not apply. Parking may be performed by
        # the guest or by hotel staff.
        # Corresponds to the JSON property `parkingAvailable`
        # @return [Boolean]
        attr_accessor :parking_available
        alias_method :parking_available?, :parking_available
      
        # Parking available exception.
        # Corresponds to the JSON property `parkingAvailableException`
        # @return [String]
        attr_accessor :parking_available_exception
      
        # Self parking available. Guests park their own cars. Parking facility may be an
        # outdoor lot or an indoor garage, but must be onsite. Nearby parking does not
        # apply. Can be free or for a fee.
        # Corresponds to the JSON property `selfParkingAvailable`
        # @return [Boolean]
        attr_accessor :self_parking_available
        alias_method :self_parking_available?, :self_parking_available
      
        # Self parking available exception.
        # Corresponds to the JSON property `selfParkingAvailableException`
        # @return [String]
        attr_accessor :self_parking_available_exception
      
        # Valet parking available. Hotel staff member parks the cars of guests. Parking
        # with this service can be free or for a fee.
        # Corresponds to the JSON property `valetParkingAvailable`
        # @return [Boolean]
        attr_accessor :valet_parking_available
        alias_method :valet_parking_available?, :valet_parking_available
      
        # Valet parking available exception.
        # Corresponds to the JSON property `valetParkingAvailableException`
        # @return [String]
        attr_accessor :valet_parking_available_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @electric_car_charging_stations = args[:electric_car_charging_stations] if args.key?(:electric_car_charging_stations)
          @electric_car_charging_stations_exception = args[:electric_car_charging_stations_exception] if args.key?(:electric_car_charging_stations_exception)
          @free_parking = args[:free_parking] if args.key?(:free_parking)
          @free_parking_exception = args[:free_parking_exception] if args.key?(:free_parking_exception)
          @free_self_parking = args[:free_self_parking] if args.key?(:free_self_parking)
          @free_self_parking_exception = args[:free_self_parking_exception] if args.key?(:free_self_parking_exception)
          @free_valet_parking = args[:free_valet_parking] if args.key?(:free_valet_parking)
          @free_valet_parking_exception = args[:free_valet_parking_exception] if args.key?(:free_valet_parking_exception)
          @parking_available = args[:parking_available] if args.key?(:parking_available)
          @parking_available_exception = args[:parking_available_exception] if args.key?(:parking_available_exception)
          @self_parking_available = args[:self_parking_available] if args.key?(:self_parking_available)
          @self_parking_available_exception = args[:self_parking_available_exception] if args.key?(:self_parking_available_exception)
          @valet_parking_available = args[:valet_parking_available] if args.key?(:valet_parking_available)
          @valet_parking_available_exception = args[:valet_parking_available_exception] if args.key?(:valet_parking_available_exception)
        end
      end
      
      # Forms of payment accepted at the property.
      class PaymentOptions
        include Google::Apis::Core::Hashable
      
        # Cash. The hotel accepts payment by paper/coin currency.
        # Corresponds to the JSON property `cash`
        # @return [Boolean]
        attr_accessor :cash
        alias_method :cash?, :cash
      
        # Cash exception.
        # Corresponds to the JSON property `cashException`
        # @return [String]
        attr_accessor :cash_exception
      
        # Cheque. The hotel accepts a printed document issued by the guest's bank in the
        # guest's name as a form of payment.
        # Corresponds to the JSON property `cheque`
        # @return [Boolean]
        attr_accessor :cheque
        alias_method :cheque?, :cheque
      
        # Cheque exception.
        # Corresponds to the JSON property `chequeException`
        # @return [String]
        attr_accessor :cheque_exception
      
        # Credit card. The hotel accepts payment by a card issued by a bank or credit
        # card company. Also known as charge card, debit card, bank card, or charge
        # plate.
        # Corresponds to the JSON property `creditCard`
        # @return [Boolean]
        attr_accessor :credit_card
        alias_method :credit_card?, :credit_card
      
        # Credit card exception.
        # Corresponds to the JSON property `creditCardException`
        # @return [String]
        attr_accessor :credit_card_exception
      
        # Debit card. The hotel accepts a bank-issued card that immediately deducts the
        # charged funds from the guest's bank account upon processing.
        # Corresponds to the JSON property `debitCard`
        # @return [Boolean]
        attr_accessor :debit_card
        alias_method :debit_card?, :debit_card
      
        # Debit card exception.
        # Corresponds to the JSON property `debitCardException`
        # @return [String]
        attr_accessor :debit_card_exception
      
        # Mobile nfc. The hotel has the compatible computer hardware terminal that reads
        # and charges a payment app on the guest's smartphone without requiring the two
        # devices to make physical contact. Also known as Apple Pay, Google Pay, Samsung
        # Pay.
        # Corresponds to the JSON property `mobileNfc`
        # @return [Boolean]
        attr_accessor :mobile_nfc
        alias_method :mobile_nfc?, :mobile_nfc
      
        # Mobile nfc exception.
        # Corresponds to the JSON property `mobileNfcException`
        # @return [String]
        attr_accessor :mobile_nfc_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cash = args[:cash] if args.key?(:cash)
          @cash_exception = args[:cash_exception] if args.key?(:cash_exception)
          @cheque = args[:cheque] if args.key?(:cheque)
          @cheque_exception = args[:cheque_exception] if args.key?(:cheque_exception)
          @credit_card = args[:credit_card] if args.key?(:credit_card)
          @credit_card_exception = args[:credit_card_exception] if args.key?(:credit_card_exception)
          @debit_card = args[:debit_card] if args.key?(:debit_card)
          @debit_card_exception = args[:debit_card_exception] if args.key?(:debit_card_exception)
          @mobile_nfc = args[:mobile_nfc] if args.key?(:mobile_nfc)
          @mobile_nfc_exception = args[:mobile_nfc_exception] if args.key?(:mobile_nfc_exception)
        end
      end
      
      # Personal protection measures implemented by the hotel during COVID-19.
      class PersonalProtection
        include Google::Apis::Core::Hashable
      
        # Hand-sanitizer and/or sanitizing wipes are offered in common areas.
        # Corresponds to the JSON property `commonAreasOfferSanitizingItems`
        # @return [Boolean]
        attr_accessor :common_areas_offer_sanitizing_items
        alias_method :common_areas_offer_sanitizing_items?, :common_areas_offer_sanitizing_items
      
        # Common areas offer sanitizing items exception.
        # Corresponds to the JSON property `commonAreasOfferSanitizingItemsException`
        # @return [String]
        attr_accessor :common_areas_offer_sanitizing_items_exception
      
        # Masks required on the property.
        # Corresponds to the JSON property `faceMaskRequired`
        # @return [Boolean]
        attr_accessor :face_mask_required
        alias_method :face_mask_required?, :face_mask_required
      
        # Face mask required exception.
        # Corresponds to the JSON property `faceMaskRequiredException`
        # @return [String]
        attr_accessor :face_mask_required_exception
      
        # In-room hygiene kits with masks, hand sanitizer, and/or antibacterial wipes.
        # Corresponds to the JSON property `guestRoomHygieneKitsAvailable`
        # @return [Boolean]
        attr_accessor :guest_room_hygiene_kits_available
        alias_method :guest_room_hygiene_kits_available?, :guest_room_hygiene_kits_available
      
        # Guest room hygiene kits available exception.
        # Corresponds to the JSON property `guestRoomHygieneKitsAvailableException`
        # @return [String]
        attr_accessor :guest_room_hygiene_kits_available_exception
      
        # Masks and/or gloves available for guests.
        # Corresponds to the JSON property `protectiveEquipmentAvailable`
        # @return [Boolean]
        attr_accessor :protective_equipment_available
        alias_method :protective_equipment_available?, :protective_equipment_available
      
        # Protective equipment available exception.
        # Corresponds to the JSON property `protectiveEquipmentAvailableException`
        # @return [String]
        attr_accessor :protective_equipment_available_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_areas_offer_sanitizing_items = args[:common_areas_offer_sanitizing_items] if args.key?(:common_areas_offer_sanitizing_items)
          @common_areas_offer_sanitizing_items_exception = args[:common_areas_offer_sanitizing_items_exception] if args.key?(:common_areas_offer_sanitizing_items_exception)
          @face_mask_required = args[:face_mask_required] if args.key?(:face_mask_required)
          @face_mask_required_exception = args[:face_mask_required_exception] if args.key?(:face_mask_required_exception)
          @guest_room_hygiene_kits_available = args[:guest_room_hygiene_kits_available] if args.key?(:guest_room_hygiene_kits_available)
          @guest_room_hygiene_kits_available_exception = args[:guest_room_hygiene_kits_available_exception] if args.key?(:guest_room_hygiene_kits_available_exception)
          @protective_equipment_available = args[:protective_equipment_available] if args.key?(:protective_equipment_available)
          @protective_equipment_available_exception = args[:protective_equipment_available_exception] if args.key?(:protective_equipment_available_exception)
        end
      end
      
      # Policies regarding guest-owned animals.
      class Pets
        include Google::Apis::Core::Hashable
      
        # Cats allowed. Domesticated felines are permitted at the property and allowed
        # to stay in the guest room of their owner. May or may not require a fee.
        # Corresponds to the JSON property `catsAllowed`
        # @return [Boolean]
        attr_accessor :cats_allowed
        alias_method :cats_allowed?, :cats_allowed
      
        # Cats allowed exception.
        # Corresponds to the JSON property `catsAllowedException`
        # @return [String]
        attr_accessor :cats_allowed_exception
      
        # Dogs allowed. Domesticated canines are permitted at the property and allowed
        # to stay in the guest room of their owner. May or may not require a fee.
        # Corresponds to the JSON property `dogsAllowed`
        # @return [Boolean]
        attr_accessor :dogs_allowed
        alias_method :dogs_allowed?, :dogs_allowed
      
        # Dogs allowed exception.
        # Corresponds to the JSON property `dogsAllowedException`
        # @return [String]
        attr_accessor :dogs_allowed_exception
      
        # Pets allowed. Household animals are allowed at the property and in the
        # specific guest room of their owner. May or may not include dogs, cats,
        # reptiles and/or fish. May or may not require a fee. Service animals are not
        # considered to be pets, so not governed by this policy.
        # Corresponds to the JSON property `petsAllowed`
        # @return [Boolean]
        attr_accessor :pets_allowed
        alias_method :pets_allowed?, :pets_allowed
      
        # Pets allowed exception.
        # Corresponds to the JSON property `petsAllowedException`
        # @return [String]
        attr_accessor :pets_allowed_exception
      
        # Pets allowed free. Household animals are allowed at the property and in the
        # specific guest room of their owner for free. May or may not include dogs, cats,
        # reptiles, and/or fish.
        # Corresponds to the JSON property `petsAllowedFree`
        # @return [Boolean]
        attr_accessor :pets_allowed_free
        alias_method :pets_allowed_free?, :pets_allowed_free
      
        # Pets allowed free exception.
        # Corresponds to the JSON property `petsAllowedFreeException`
        # @return [String]
        attr_accessor :pets_allowed_free_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cats_allowed = args[:cats_allowed] if args.key?(:cats_allowed)
          @cats_allowed_exception = args[:cats_allowed_exception] if args.key?(:cats_allowed_exception)
          @dogs_allowed = args[:dogs_allowed] if args.key?(:dogs_allowed)
          @dogs_allowed_exception = args[:dogs_allowed_exception] if args.key?(:dogs_allowed_exception)
          @pets_allowed = args[:pets_allowed] if args.key?(:pets_allowed)
          @pets_allowed_exception = args[:pets_allowed_exception] if args.key?(:pets_allowed_exception)
          @pets_allowed_free = args[:pets_allowed_free] if args.key?(:pets_allowed_free)
          @pets_allowed_free_exception = args[:pets_allowed_free_exception] if args.key?(:pets_allowed_free_exception)
        end
      end
      
      # Physical distancing measures implemented by the hotel during COVID-19.
      class PhysicalDistancing
        include Google::Apis::Core::Hashable
      
        # Common areas arranged to maintain physical distancing.
        # Corresponds to the JSON property `commonAreasPhysicalDistancingArranged`
        # @return [Boolean]
        attr_accessor :common_areas_physical_distancing_arranged
        alias_method :common_areas_physical_distancing_arranged?, :common_areas_physical_distancing_arranged
      
        # Common areas physical distancing arranged exception.
        # Corresponds to the JSON property `commonAreasPhysicalDistancingArrangedException`
        # @return [String]
        attr_accessor :common_areas_physical_distancing_arranged_exception
      
        # Physical distancing required.
        # Corresponds to the JSON property `physicalDistancingRequired`
        # @return [Boolean]
        attr_accessor :physical_distancing_required
        alias_method :physical_distancing_required?, :physical_distancing_required
      
        # Physical distancing required exception.
        # Corresponds to the JSON property `physicalDistancingRequiredException`
        # @return [String]
        attr_accessor :physical_distancing_required_exception
      
        # Safety dividers at front desk and other locations.
        # Corresponds to the JSON property `safetyDividers`
        # @return [Boolean]
        attr_accessor :safety_dividers
        alias_method :safety_dividers?, :safety_dividers
      
        # Safety dividers exception.
        # Corresponds to the JSON property `safetyDividersException`
        # @return [String]
        attr_accessor :safety_dividers_exception
      
        # Guest occupancy limited within shared facilities.
        # Corresponds to the JSON property `sharedAreasLimitedOccupancy`
        # @return [Boolean]
        attr_accessor :shared_areas_limited_occupancy
        alias_method :shared_areas_limited_occupancy?, :shared_areas_limited_occupancy
      
        # Shared areas limited occupancy exception.
        # Corresponds to the JSON property `sharedAreasLimitedOccupancyException`
        # @return [String]
        attr_accessor :shared_areas_limited_occupancy_exception
      
        # Private spaces designated in spa and wellness areas.
        # Corresponds to the JSON property `wellnessAreasHavePrivateSpaces`
        # @return [Boolean]
        attr_accessor :wellness_areas_have_private_spaces
        alias_method :wellness_areas_have_private_spaces?, :wellness_areas_have_private_spaces
      
        # Wellness areas have private spaces exception.
        # Corresponds to the JSON property `wellnessAreasHavePrivateSpacesException`
        # @return [String]
        attr_accessor :wellness_areas_have_private_spaces_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_areas_physical_distancing_arranged = args[:common_areas_physical_distancing_arranged] if args.key?(:common_areas_physical_distancing_arranged)
          @common_areas_physical_distancing_arranged_exception = args[:common_areas_physical_distancing_arranged_exception] if args.key?(:common_areas_physical_distancing_arranged_exception)
          @physical_distancing_required = args[:physical_distancing_required] if args.key?(:physical_distancing_required)
          @physical_distancing_required_exception = args[:physical_distancing_required_exception] if args.key?(:physical_distancing_required_exception)
          @safety_dividers = args[:safety_dividers] if args.key?(:safety_dividers)
          @safety_dividers_exception = args[:safety_dividers_exception] if args.key?(:safety_dividers_exception)
          @shared_areas_limited_occupancy = args[:shared_areas_limited_occupancy] if args.key?(:shared_areas_limited_occupancy)
          @shared_areas_limited_occupancy_exception = args[:shared_areas_limited_occupancy_exception] if args.key?(:shared_areas_limited_occupancy_exception)
          @wellness_areas_have_private_spaces = args[:wellness_areas_have_private_spaces] if args.key?(:wellness_areas_have_private_spaces)
          @wellness_areas_have_private_spaces_exception = args[:wellness_areas_have_private_spaces_exception] if args.key?(:wellness_areas_have_private_spaces_exception)
        end
      end
      
      # Property rules that impact guests.
      class Policies
        include Google::Apis::Core::Hashable
      
        # All inclusive available. The hotel offers a rate option that includes the cost
        # of the room, meals, activities, and other amenities that might otherwise be
        # charged separately.
        # Corresponds to the JSON property `allInclusiveAvailable`
        # @return [Boolean]
        attr_accessor :all_inclusive_available
        alias_method :all_inclusive_available?, :all_inclusive_available
      
        # All inclusive available exception.
        # Corresponds to the JSON property `allInclusiveAvailableException`
        # @return [String]
        attr_accessor :all_inclusive_available_exception
      
        # All inclusive only. The only rate option offered by the hotel is a rate that
        # includes the cost of the room, meals, activities and other amenities that
        # might otherwise be charged separately.
        # Corresponds to the JSON property `allInclusiveOnly`
        # @return [Boolean]
        attr_accessor :all_inclusive_only
        alias_method :all_inclusive_only?, :all_inclusive_only
      
        # All inclusive only exception.
        # Corresponds to the JSON property `allInclusiveOnlyException`
        # @return [String]
        attr_accessor :all_inclusive_only_exception
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `checkinTime`
        # @return [Google::Apis::MybusinesslodgingV1::TimeOfDay]
        attr_accessor :checkin_time
      
        # Check-in time exception.
        # Corresponds to the JSON property `checkinTimeException`
        # @return [String]
        attr_accessor :checkin_time_exception
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `checkoutTime`
        # @return [Google::Apis::MybusinesslodgingV1::TimeOfDay]
        attr_accessor :checkout_time
      
        # Check-out time exception.
        # Corresponds to the JSON property `checkoutTimeException`
        # @return [String]
        attr_accessor :checkout_time_exception
      
        # Kids stay free. The children of guests are allowed to stay in the room/suite
        # of a parent or adult without an additional fee. The policy may or may not
        # stipulate a limit of the child's age or the overall number of children allowed.
        # Corresponds to the JSON property `kidsStayFree`
        # @return [Boolean]
        attr_accessor :kids_stay_free
        alias_method :kids_stay_free?, :kids_stay_free
      
        # Kids stay free exception.
        # Corresponds to the JSON property `kidsStayFreeException`
        # @return [String]
        attr_accessor :kids_stay_free_exception
      
        # Max child age. The hotel allows children up to a certain age to stay in the
        # room/suite of a parent or adult without an additional fee.
        # Corresponds to the JSON property `maxChildAge`
        # @return [Fixnum]
        attr_accessor :max_child_age
      
        # Max child age exception.
        # Corresponds to the JSON property `maxChildAgeException`
        # @return [String]
        attr_accessor :max_child_age_exception
      
        # Max kids stay free count. The hotel allows a specific, defined number of
        # children to stay in the room/suite of a parent or adult without an additional
        # fee.
        # Corresponds to the JSON property `maxKidsStayFreeCount`
        # @return [Fixnum]
        attr_accessor :max_kids_stay_free_count
      
        # Max kids stay free count exception.
        # Corresponds to the JSON property `maxKidsStayFreeCountException`
        # @return [String]
        attr_accessor :max_kids_stay_free_count_exception
      
        # Forms of payment accepted at the property.
        # Corresponds to the JSON property `paymentOptions`
        # @return [Google::Apis::MybusinesslodgingV1::PaymentOptions]
        attr_accessor :payment_options
      
        # Smoke free property. Smoking is not allowed inside the building, on balconies,
        # or in outside spaces. Hotels that offer a designated area for guests to smoke
        # are not considered smoke-free properties.
        # Corresponds to the JSON property `smokeFreeProperty`
        # @return [Boolean]
        attr_accessor :smoke_free_property
        alias_method :smoke_free_property?, :smoke_free_property
      
        # Smoke free property exception.
        # Corresponds to the JSON property `smokeFreePropertyException`
        # @return [String]
        attr_accessor :smoke_free_property_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_inclusive_available = args[:all_inclusive_available] if args.key?(:all_inclusive_available)
          @all_inclusive_available_exception = args[:all_inclusive_available_exception] if args.key?(:all_inclusive_available_exception)
          @all_inclusive_only = args[:all_inclusive_only] if args.key?(:all_inclusive_only)
          @all_inclusive_only_exception = args[:all_inclusive_only_exception] if args.key?(:all_inclusive_only_exception)
          @checkin_time = args[:checkin_time] if args.key?(:checkin_time)
          @checkin_time_exception = args[:checkin_time_exception] if args.key?(:checkin_time_exception)
          @checkout_time = args[:checkout_time] if args.key?(:checkout_time)
          @checkout_time_exception = args[:checkout_time_exception] if args.key?(:checkout_time_exception)
          @kids_stay_free = args[:kids_stay_free] if args.key?(:kids_stay_free)
          @kids_stay_free_exception = args[:kids_stay_free_exception] if args.key?(:kids_stay_free_exception)
          @max_child_age = args[:max_child_age] if args.key?(:max_child_age)
          @max_child_age_exception = args[:max_child_age_exception] if args.key?(:max_child_age_exception)
          @max_kids_stay_free_count = args[:max_kids_stay_free_count] if args.key?(:max_kids_stay_free_count)
          @max_kids_stay_free_count_exception = args[:max_kids_stay_free_count_exception] if args.key?(:max_kids_stay_free_count_exception)
          @payment_options = args[:payment_options] if args.key?(:payment_options)
          @smoke_free_property = args[:smoke_free_property] if args.key?(:smoke_free_property)
          @smoke_free_property_exception = args[:smoke_free_property_exception] if args.key?(:smoke_free_property_exception)
        end
      end
      
      # Swimming pool or recreational water facilities available at the hotel.
      class Pools
        include Google::Apis::Core::Hashable
      
        # Adult pool. A pool restricted for use by adults only. Can be indoors or
        # outdoors.
        # Corresponds to the JSON property `adultPool`
        # @return [Boolean]
        attr_accessor :adult_pool
        alias_method :adult_pool?, :adult_pool
      
        # Adult pool exception.
        # Corresponds to the JSON property `adultPoolException`
        # @return [String]
        attr_accessor :adult_pool_exception
      
        # Hot tub. A man-made pool containing bubbling water maintained at a higher
        # temperature and circulated by aerating jets for the purpose of soaking,
        # relaxation and hydrotherapy. Can be indoors or outdoors. Not used for active
        # swimming. Also known as Jacuzzi. Hot tub must be in a common area where all
        # guests can access it. Does not apply to room-specific hot tubs that are only
        # accessible to guest occupying that room.
        # Corresponds to the JSON property `hotTub`
        # @return [Boolean]
        attr_accessor :hot_tub
        alias_method :hot_tub?, :hot_tub
      
        # Hot tub exception.
        # Corresponds to the JSON property `hotTubException`
        # @return [String]
        attr_accessor :hot_tub_exception
      
        # Indoor pool. A pool located inside the hotel and available for guests to use
        # for swimming and/or soaking. Use may or may not be restricted to adults and/or
        # children.
        # Corresponds to the JSON property `indoorPool`
        # @return [Boolean]
        attr_accessor :indoor_pool
        alias_method :indoor_pool?, :indoor_pool
      
        # Indoor pool exception.
        # Corresponds to the JSON property `indoorPoolException`
        # @return [String]
        attr_accessor :indoor_pool_exception
      
        # Indoor pools count. The sum of all indoor pools at the hotel.
        # Corresponds to the JSON property `indoorPoolsCount`
        # @return [Fixnum]
        attr_accessor :indoor_pools_count
      
        # Indoor pools count exception.
        # Corresponds to the JSON property `indoorPoolsCountException`
        # @return [String]
        attr_accessor :indoor_pools_count_exception
      
        # Lazy river. A man-made pool or several interconnected recreational pools built
        # to mimic the shape and current of a winding river where guests float in the
        # water on inflated rubber tubes. Can be indoors or outdoors.
        # Corresponds to the JSON property `lazyRiver`
        # @return [Boolean]
        attr_accessor :lazy_river
        alias_method :lazy_river?, :lazy_river
      
        # Lazy river exception.
        # Corresponds to the JSON property `lazyRiverException`
        # @return [String]
        attr_accessor :lazy_river_exception
      
        # Lifeguard. A trained member of the hotel staff stationed by the hotel's indoor
        # or outdoor swimming area and responsible for the safety of swimming guests.
        # Corresponds to the JSON property `lifeguard`
        # @return [Boolean]
        attr_accessor :lifeguard
        alias_method :lifeguard?, :lifeguard
      
        # Lifeguard exception.
        # Corresponds to the JSON property `lifeguardException`
        # @return [String]
        attr_accessor :lifeguard_exception
      
        # Outdoor pool. A pool located outside on the grounds of the hotel and available
        # for guests to use for swimming, soaking or recreation. Use may or may not be
        # restricted to adults and/or children.
        # Corresponds to the JSON property `outdoorPool`
        # @return [Boolean]
        attr_accessor :outdoor_pool
        alias_method :outdoor_pool?, :outdoor_pool
      
        # Outdoor pool exception.
        # Corresponds to the JSON property `outdoorPoolException`
        # @return [String]
        attr_accessor :outdoor_pool_exception
      
        # Outdoor pools count. The sum of all outdoor pools at the hotel.
        # Corresponds to the JSON property `outdoorPoolsCount`
        # @return [Fixnum]
        attr_accessor :outdoor_pools_count
      
        # Outdoor pools count exception.
        # Corresponds to the JSON property `outdoorPoolsCountException`
        # @return [String]
        attr_accessor :outdoor_pools_count_exception
      
        # Pool. The presence of a pool, either indoors or outdoors, for guests to use
        # for swimming and/or soaking. Use may or may not be restricted to adults and/or
        # children.
        # Corresponds to the JSON property `pool`
        # @return [Boolean]
        attr_accessor :pool
        alias_method :pool?, :pool
      
        # Pool exception.
        # Corresponds to the JSON property `poolException`
        # @return [String]
        attr_accessor :pool_exception
      
        # Pools count. The sum of all pools at the hotel.
        # Corresponds to the JSON property `poolsCount`
        # @return [Fixnum]
        attr_accessor :pools_count
      
        # Pools count exception.
        # Corresponds to the JSON property `poolsCountException`
        # @return [String]
        attr_accessor :pools_count_exception
      
        # Wading pool. A shallow pool designed for small children to play in. Can be
        # indoors or outdoors. Also known as kiddie pool.
        # Corresponds to the JSON property `wadingPool`
        # @return [Boolean]
        attr_accessor :wading_pool
        alias_method :wading_pool?, :wading_pool
      
        # Wading pool exception.
        # Corresponds to the JSON property `wadingPoolException`
        # @return [String]
        attr_accessor :wading_pool_exception
      
        # Water park. An aquatic recreation area with a large pool or series of pools
        # that has features such as a water slide or tube, wavepool, fountains, rope
        # swings, and/or obstacle course. Can be indoors or outdoors. Also known as
        # adventure pool.
        # Corresponds to the JSON property `waterPark`
        # @return [Boolean]
        attr_accessor :water_park
        alias_method :water_park?, :water_park
      
        # Water park exception.
        # Corresponds to the JSON property `waterParkException`
        # @return [String]
        attr_accessor :water_park_exception
      
        # Waterslide. A continuously wetted chute positioned by an indoor or outdoor
        # pool which people slide down into the water.
        # Corresponds to the JSON property `waterslide`
        # @return [Boolean]
        attr_accessor :waterslide
        alias_method :waterslide?, :waterslide
      
        # Waterslide exception.
        # Corresponds to the JSON property `waterslideException`
        # @return [String]
        attr_accessor :waterslide_exception
      
        # Wave pool. A large indoor or outdoor pool with a machine that produces water
        # currents to mimic the ocean's crests.
        # Corresponds to the JSON property `wavePool`
        # @return [Boolean]
        attr_accessor :wave_pool
        alias_method :wave_pool?, :wave_pool
      
        # Wave pool exception.
        # Corresponds to the JSON property `wavePoolException`
        # @return [String]
        attr_accessor :wave_pool_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult_pool = args[:adult_pool] if args.key?(:adult_pool)
          @adult_pool_exception = args[:adult_pool_exception] if args.key?(:adult_pool_exception)
          @hot_tub = args[:hot_tub] if args.key?(:hot_tub)
          @hot_tub_exception = args[:hot_tub_exception] if args.key?(:hot_tub_exception)
          @indoor_pool = args[:indoor_pool] if args.key?(:indoor_pool)
          @indoor_pool_exception = args[:indoor_pool_exception] if args.key?(:indoor_pool_exception)
          @indoor_pools_count = args[:indoor_pools_count] if args.key?(:indoor_pools_count)
          @indoor_pools_count_exception = args[:indoor_pools_count_exception] if args.key?(:indoor_pools_count_exception)
          @lazy_river = args[:lazy_river] if args.key?(:lazy_river)
          @lazy_river_exception = args[:lazy_river_exception] if args.key?(:lazy_river_exception)
          @lifeguard = args[:lifeguard] if args.key?(:lifeguard)
          @lifeguard_exception = args[:lifeguard_exception] if args.key?(:lifeguard_exception)
          @outdoor_pool = args[:outdoor_pool] if args.key?(:outdoor_pool)
          @outdoor_pool_exception = args[:outdoor_pool_exception] if args.key?(:outdoor_pool_exception)
          @outdoor_pools_count = args[:outdoor_pools_count] if args.key?(:outdoor_pools_count)
          @outdoor_pools_count_exception = args[:outdoor_pools_count_exception] if args.key?(:outdoor_pools_count_exception)
          @pool = args[:pool] if args.key?(:pool)
          @pool_exception = args[:pool_exception] if args.key?(:pool_exception)
          @pools_count = args[:pools_count] if args.key?(:pools_count)
          @pools_count_exception = args[:pools_count_exception] if args.key?(:pools_count_exception)
          @wading_pool = args[:wading_pool] if args.key?(:wading_pool)
          @wading_pool_exception = args[:wading_pool_exception] if args.key?(:wading_pool_exception)
          @water_park = args[:water_park] if args.key?(:water_park)
          @water_park_exception = args[:water_park_exception] if args.key?(:water_park_exception)
          @waterslide = args[:waterslide] if args.key?(:waterslide)
          @waterslide_exception = args[:waterslide_exception] if args.key?(:waterslide_exception)
          @wave_pool = args[:wave_pool] if args.key?(:wave_pool)
          @wave_pool_exception = args[:wave_pool_exception] if args.key?(:wave_pool_exception)
        end
      end
      
      # General factual information about the property's physical structure and
      # important dates.
      class Property
        include Google::Apis::Core::Hashable
      
        # Built year. The year that construction of the property was completed.
        # Corresponds to the JSON property `builtYear`
        # @return [Fixnum]
        attr_accessor :built_year
      
        # Built year exception.
        # Corresponds to the JSON property `builtYearException`
        # @return [String]
        attr_accessor :built_year_exception
      
        # Floors count. The number of stories the building has from the ground floor to
        # the top floor that are accessible to guests.
        # Corresponds to the JSON property `floorsCount`
        # @return [Fixnum]
        attr_accessor :floors_count
      
        # Floors count exception.
        # Corresponds to the JSON property `floorsCountException`
        # @return [String]
        attr_accessor :floors_count_exception
      
        # Last renovated year. The year when the most recent renovation of the property
        # was completed. Renovation may include all or any combination of the following:
        # the units, the public spaces, the exterior, or the interior.
        # Corresponds to the JSON property `lastRenovatedYear`
        # @return [Fixnum]
        attr_accessor :last_renovated_year
      
        # Last renovated year exception.
        # Corresponds to the JSON property `lastRenovatedYearException`
        # @return [String]
        attr_accessor :last_renovated_year_exception
      
        # Rooms count. The total number of rooms and suites bookable by guests for an
        # overnight stay. Does not include event space, public spaces, conference rooms,
        # fitness rooms, business centers, spa, salon, restaurants/bars, or shops.
        # Corresponds to the JSON property `roomsCount`
        # @return [Fixnum]
        attr_accessor :rooms_count
      
        # Rooms count exception.
        # Corresponds to the JSON property `roomsCountException`
        # @return [String]
        attr_accessor :rooms_count_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @built_year = args[:built_year] if args.key?(:built_year)
          @built_year_exception = args[:built_year_exception] if args.key?(:built_year_exception)
          @floors_count = args[:floors_count] if args.key?(:floors_count)
          @floors_count_exception = args[:floors_count_exception] if args.key?(:floors_count_exception)
          @last_renovated_year = args[:last_renovated_year] if args.key?(:last_renovated_year)
          @last_renovated_year_exception = args[:last_renovated_year_exception] if args.key?(:last_renovated_year_exception)
          @rooms_count = args[:rooms_count] if args.key?(:rooms_count)
          @rooms_count_exception = args[:rooms_count_exception] if args.key?(:rooms_count_exception)
        end
      end
      
      # Conveniences or help provided by the property to facilitate an easier, more
      # comfortable stay.
      class Services
        include Google::Apis::Core::Hashable
      
        # Baggage storage. A provision for guests to leave their bags at the hotel when
        # they arrive for their stay before the official check-in time. May or may not
        # apply for guests who wish to leave their bags after check-out and before
        # departing the locale. Also known as bag dropoff.
        # Corresponds to the JSON property `baggageStorage`
        # @return [Boolean]
        attr_accessor :baggage_storage
        alias_method :baggage_storage?, :baggage_storage
      
        # Baggage storage exception.
        # Corresponds to the JSON property `baggageStorageException`
        # @return [String]
        attr_accessor :baggage_storage_exception
      
        # Concierge. Hotel staff member(s) responsible for facilitating an easy,
        # comfortable stay through making reservations for meals, sourcing theater
        # tickets, arranging tours, finding a doctor, making recommendations, and
        # answering questions.
        # Corresponds to the JSON property `concierge`
        # @return [Boolean]
        attr_accessor :concierge
        alias_method :concierge?, :concierge
      
        # Concierge exception.
        # Corresponds to the JSON property `conciergeException`
        # @return [String]
        attr_accessor :concierge_exception
      
        # Convenience store. A shop at the hotel primarily selling snacks, drinks, non-
        # prescription medicines, health and beauty aids, magazines and newspapers.
        # Corresponds to the JSON property `convenienceStore`
        # @return [Boolean]
        attr_accessor :convenience_store
        alias_method :convenience_store?, :convenience_store
      
        # Convenience store exception.
        # Corresponds to the JSON property `convenienceStoreException`
        # @return [String]
        attr_accessor :convenience_store_exception
      
        # Currency exchange. A staff member or automated machine tasked with the
        # transaction of providing the native currency of the hotel's locale in exchange
        # for the foreign currency provided by a guest.
        # Corresponds to the JSON property `currencyExchange`
        # @return [Boolean]
        attr_accessor :currency_exchange
        alias_method :currency_exchange?, :currency_exchange
      
        # Currency exchange exception.
        # Corresponds to the JSON property `currencyExchangeException`
        # @return [String]
        attr_accessor :currency_exchange_exception
      
        # Elevator. A passenger elevator that transports guests from one story to
        # another. Also known as lift.
        # Corresponds to the JSON property `elevator`
        # @return [Boolean]
        attr_accessor :elevator
        alias_method :elevator?, :elevator
      
        # Elevator exception.
        # Corresponds to the JSON property `elevatorException`
        # @return [String]
        attr_accessor :elevator_exception
      
        # Front desk. A counter or desk in the lobby or the immediate interior of the
        # hotel where a member of the staff greets guests and processes the information
        # related to their stay (including check-in and check-out). May or may not be
        # manned and open 24/7.
        # Corresponds to the JSON property `frontDesk`
        # @return [Boolean]
        attr_accessor :front_desk
        alias_method :front_desk?, :front_desk
      
        # Front desk exception.
        # Corresponds to the JSON property `frontDeskException`
        # @return [String]
        attr_accessor :front_desk_exception
      
        # Full service laundry. Laundry and dry cleaning facilitated and handled by the
        # hotel on behalf of the guest. Does not include the provision for guests to do
        # their own laundry in on-site machines.
        # Corresponds to the JSON property `fullServiceLaundry`
        # @return [Boolean]
        attr_accessor :full_service_laundry
        alias_method :full_service_laundry?, :full_service_laundry
      
        # Full service laundry exception.
        # Corresponds to the JSON property `fullServiceLaundryException`
        # @return [String]
        attr_accessor :full_service_laundry_exception
      
        # Gift shop. An on-site store primarily selling souvenirs, mementos and other
        # gift items. May or may not also sell sundries, magazines and newspapers,
        # clothing, or snacks.
        # Corresponds to the JSON property `giftShop`
        # @return [Boolean]
        attr_accessor :gift_shop
        alias_method :gift_shop?, :gift_shop
      
        # Gift shop exception.
        # Corresponds to the JSON property `giftShopException`
        # @return [String]
        attr_accessor :gift_shop_exception
      
        # Languages spoken by at least one staff member.
        # Corresponds to the JSON property `languagesSpoken`
        # @return [Array<Google::Apis::MybusinesslodgingV1::LanguageSpoken>]
        attr_accessor :languages_spoken
      
        # Self service laundry. On-site clothes washers and dryers accessible to guests
        # for the purpose of washing and drying their own clothes. May or may not
        # require payment to use the machines.
        # Corresponds to the JSON property `selfServiceLaundry`
        # @return [Boolean]
        attr_accessor :self_service_laundry
        alias_method :self_service_laundry?, :self_service_laundry
      
        # Self service laundry exception.
        # Corresponds to the JSON property `selfServiceLaundryException`
        # @return [String]
        attr_accessor :self_service_laundry_exception
      
        # Social hour. A reception with complimentary soft drinks, tea, coffee, wine and/
        # or cocktails in the afternoon or evening. Can be hosted by hotel staff or
        # guests may serve themselves. Also known as wine hour. The availability of
        # coffee/tea in the lobby throughout the day does not constitute a social or
        # wine hour.
        # Corresponds to the JSON property `socialHour`
        # @return [Boolean]
        attr_accessor :social_hour
        alias_method :social_hour?, :social_hour
      
        # Social hour exception.
        # Corresponds to the JSON property `socialHourException`
        # @return [String]
        attr_accessor :social_hour_exception
      
        # 24hr front desk. Front desk is staffed 24 hours a day.
        # Corresponds to the JSON property `twentyFourHourFrontDesk`
        # @return [Boolean]
        attr_accessor :twenty_four_hour_front_desk
        alias_method :twenty_four_hour_front_desk?, :twenty_four_hour_front_desk
      
        # 24hr front desk exception.
        # Corresponds to the JSON property `twentyFourHourFrontDeskException`
        # @return [String]
        attr_accessor :twenty_four_hour_front_desk_exception
      
        # Wake up calls. By direction of the guest, a hotel staff member will phone the
        # guest unit at the requested hour. Also known as morning call.
        # Corresponds to the JSON property `wakeUpCalls`
        # @return [Boolean]
        attr_accessor :wake_up_calls
        alias_method :wake_up_calls?, :wake_up_calls
      
        # Wake up calls exception.
        # Corresponds to the JSON property `wakeUpCallsException`
        # @return [String]
        attr_accessor :wake_up_calls_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baggage_storage = args[:baggage_storage] if args.key?(:baggage_storage)
          @baggage_storage_exception = args[:baggage_storage_exception] if args.key?(:baggage_storage_exception)
          @concierge = args[:concierge] if args.key?(:concierge)
          @concierge_exception = args[:concierge_exception] if args.key?(:concierge_exception)
          @convenience_store = args[:convenience_store] if args.key?(:convenience_store)
          @convenience_store_exception = args[:convenience_store_exception] if args.key?(:convenience_store_exception)
          @currency_exchange = args[:currency_exchange] if args.key?(:currency_exchange)
          @currency_exchange_exception = args[:currency_exchange_exception] if args.key?(:currency_exchange_exception)
          @elevator = args[:elevator] if args.key?(:elevator)
          @elevator_exception = args[:elevator_exception] if args.key?(:elevator_exception)
          @front_desk = args[:front_desk] if args.key?(:front_desk)
          @front_desk_exception = args[:front_desk_exception] if args.key?(:front_desk_exception)
          @full_service_laundry = args[:full_service_laundry] if args.key?(:full_service_laundry)
          @full_service_laundry_exception = args[:full_service_laundry_exception] if args.key?(:full_service_laundry_exception)
          @gift_shop = args[:gift_shop] if args.key?(:gift_shop)
          @gift_shop_exception = args[:gift_shop_exception] if args.key?(:gift_shop_exception)
          @languages_spoken = args[:languages_spoken] if args.key?(:languages_spoken)
          @self_service_laundry = args[:self_service_laundry] if args.key?(:self_service_laundry)
          @self_service_laundry_exception = args[:self_service_laundry_exception] if args.key?(:self_service_laundry_exception)
          @social_hour = args[:social_hour] if args.key?(:social_hour)
          @social_hour_exception = args[:social_hour_exception] if args.key?(:social_hour_exception)
          @twenty_four_hour_front_desk = args[:twenty_four_hour_front_desk] if args.key?(:twenty_four_hour_front_desk)
          @twenty_four_hour_front_desk_exception = args[:twenty_four_hour_front_desk_exception] if args.key?(:twenty_four_hour_front_desk_exception)
          @wake_up_calls = args[:wake_up_calls] if args.key?(:wake_up_calls)
          @wake_up_calls_exception = args[:wake_up_calls_exception] if args.key?(:wake_up_calls_exception)
        end
      end
      
      # Sustainability practices implemented at the hotel.
      class Sustainability
        include Google::Apis::Core::Hashable
      
        # Energy efficiency practices implemented at the hotel.
        # Corresponds to the JSON property `energyEfficiency`
        # @return [Google::Apis::MybusinesslodgingV1::EnergyEfficiency]
        attr_accessor :energy_efficiency
      
        # Sustainability certifications the hotel has been awarded.
        # Corresponds to the JSON property `sustainabilityCertifications`
        # @return [Google::Apis::MybusinesslodgingV1::SustainabilityCertifications]
        attr_accessor :sustainability_certifications
      
        # Sustainable sourcing practices implemented at the hotel.
        # Corresponds to the JSON property `sustainableSourcing`
        # @return [Google::Apis::MybusinesslodgingV1::SustainableSourcing]
        attr_accessor :sustainable_sourcing
      
        # Waste reduction practices implemented at the hotel.
        # Corresponds to the JSON property `wasteReduction`
        # @return [Google::Apis::MybusinesslodgingV1::WasteReduction]
        attr_accessor :waste_reduction
      
        # Water conservation practices implemented at the hotel.
        # Corresponds to the JSON property `waterConservation`
        # @return [Google::Apis::MybusinesslodgingV1::WaterConservation]
        attr_accessor :water_conservation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @energy_efficiency = args[:energy_efficiency] if args.key?(:energy_efficiency)
          @sustainability_certifications = args[:sustainability_certifications] if args.key?(:sustainability_certifications)
          @sustainable_sourcing = args[:sustainable_sourcing] if args.key?(:sustainable_sourcing)
          @waste_reduction = args[:waste_reduction] if args.key?(:waste_reduction)
          @water_conservation = args[:water_conservation] if args.key?(:water_conservation)
        end
      end
      
      # Sustainability certifications the hotel has been awarded.
      class SustainabilityCertifications
        include Google::Apis::Core::Hashable
      
        # BREEAM certification.
        # Corresponds to the JSON property `breeamCertification`
        # @return [String]
        attr_accessor :breeam_certification
      
        # BREEAM certification exception.
        # Corresponds to the JSON property `breeamCertificationException`
        # @return [String]
        attr_accessor :breeam_certification_exception
      
        # The eco certificates awarded to the hotel.
        # Corresponds to the JSON property `ecoCertifications`
        # @return [Array<Google::Apis::MybusinesslodgingV1::EcoCertification>]
        attr_accessor :eco_certifications
      
        # LEED certification. Deprecated: this field is no longer populated. LEED
        # certification status is now provided directly by USGBC.
        # Corresponds to the JSON property `leedCertification`
        # @return [String]
        attr_accessor :leed_certification
      
        # LEED certification exception. Deprecated: this field is no longer populated.
        # LEED certification status is now provided directly by USGBC.
        # Corresponds to the JSON property `leedCertificationException`
        # @return [String]
        attr_accessor :leed_certification_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breeam_certification = args[:breeam_certification] if args.key?(:breeam_certification)
          @breeam_certification_exception = args[:breeam_certification_exception] if args.key?(:breeam_certification_exception)
          @eco_certifications = args[:eco_certifications] if args.key?(:eco_certifications)
          @leed_certification = args[:leed_certification] if args.key?(:leed_certification)
          @leed_certification_exception = args[:leed_certification_exception] if args.key?(:leed_certification_exception)
        end
      end
      
      # Sustainable sourcing practices implemented at the hotel.
      class SustainableSourcing
        include Google::Apis::Core::Hashable
      
        # Eco friendly toiletries. Soap, shampoo, lotion, and other toiletries provided
        # for guests have a nationally or internationally recognized sustainability
        # certification, such as USDA Organic, EU Organic, or cruelty-free.
        # Corresponds to the JSON property `ecoFriendlyToiletries`
        # @return [Boolean]
        attr_accessor :eco_friendly_toiletries
        alias_method :eco_friendly_toiletries?, :eco_friendly_toiletries
      
        # Eco friendly toiletries exception.
        # Corresponds to the JSON property `ecoFriendlyToiletriesException`
        # @return [String]
        attr_accessor :eco_friendly_toiletries_exception
      
        # Locally sourced food and beverages. Property sources locally in order to lower
        # the environmental footprint from reduced transportation and to stimulate the
        # local economy. Products produced less than 62 miles from the establishment are
        # normally considered as locally produced.
        # Corresponds to the JSON property `locallySourcedFoodAndBeverages`
        # @return [Boolean]
        attr_accessor :locally_sourced_food_and_beverages
        alias_method :locally_sourced_food_and_beverages?, :locally_sourced_food_and_beverages
      
        # Locally sourced food and beverages exception.
        # Corresponds to the JSON property `locallySourcedFoodAndBeveragesException`
        # @return [String]
        attr_accessor :locally_sourced_food_and_beverages_exception
      
        # Organic cage free eggs. The property sources 100% certified organic and cage-
        # free eggs (shell, liquid, and egg products). Cage-free means hens are able to
        # walk, spread their wings and lay their eggs in nests).
        # Corresponds to the JSON property `organicCageFreeEggs`
        # @return [Boolean]
        attr_accessor :organic_cage_free_eggs
        alias_method :organic_cage_free_eggs?, :organic_cage_free_eggs
      
        # Organic cage free eggs exception.
        # Corresponds to the JSON property `organicCageFreeEggsException`
        # @return [String]
        attr_accessor :organic_cage_free_eggs_exception
      
        # Organic food and beverages. At least 25% of food and beverages, by spend, are
        # certified organic. Organic means products that are certified to one of the
        # organic standard listed in the IFOAM family of standards. Qualifying
        # certifications include USDA Organic and EU Organic, among others.
        # Corresponds to the JSON property `organicFoodAndBeverages`
        # @return [Boolean]
        attr_accessor :organic_food_and_beverages
        alias_method :organic_food_and_beverages?, :organic_food_and_beverages
      
        # Organic food and beverages exception.
        # Corresponds to the JSON property `organicFoodAndBeveragesException`
        # @return [String]
        attr_accessor :organic_food_and_beverages_exception
      
        # Responsible purchasing policy. The property has a responsible procurement
        # policy in place. Responsible means integration of social, ethical, and/or
        # environmental performance factors into the procurement process when selecting
        # suppliers.
        # Corresponds to the JSON property `responsiblePurchasingPolicy`
        # @return [Boolean]
        attr_accessor :responsible_purchasing_policy
        alias_method :responsible_purchasing_policy?, :responsible_purchasing_policy
      
        # Responsible purchasing policy exception.
        # Corresponds to the JSON property `responsiblePurchasingPolicyException`
        # @return [String]
        attr_accessor :responsible_purchasing_policy_exception
      
        # Responsibly sources seafood. The property does not source seafood from the
        # Monterey Bay Aquarium Seafood Watch "avoid" list, and must sustainably source
        # seafood listed as "good alternative," "eco-certified," and "best choice". The
        # property has a policy outlining a commitment to source Marine Stewardship
        # Council (MSC) and/or Aquaculture Stewardship Council (ASC) Chain of Custody
        # certified seafood.
        # Corresponds to the JSON property `responsiblySourcesSeafood`
        # @return [Boolean]
        attr_accessor :responsibly_sources_seafood
        alias_method :responsibly_sources_seafood?, :responsibly_sources_seafood
      
        # Responsibly sources seafood exception.
        # Corresponds to the JSON property `responsiblySourcesSeafoodException`
        # @return [String]
        attr_accessor :responsibly_sources_seafood_exception
      
        # Vegan meals. The property provides vegan menu options for guests. Vegan food
        # does not contain animal products or byproducts.
        # Corresponds to the JSON property `veganMeals`
        # @return [Boolean]
        attr_accessor :vegan_meals
        alias_method :vegan_meals?, :vegan_meals
      
        # Vegan meals exception.
        # Corresponds to the JSON property `veganMealsException`
        # @return [String]
        attr_accessor :vegan_meals_exception
      
        # Vegetarian meals. The property provides vegetarian menu options for guests.
        # Vegetarian food does not contain meat, poultry, fish, or seafood.
        # Corresponds to the JSON property `vegetarianMeals`
        # @return [Boolean]
        attr_accessor :vegetarian_meals
        alias_method :vegetarian_meals?, :vegetarian_meals
      
        # Vegetarian meals exception.
        # Corresponds to the JSON property `vegetarianMealsException`
        # @return [String]
        attr_accessor :vegetarian_meals_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eco_friendly_toiletries = args[:eco_friendly_toiletries] if args.key?(:eco_friendly_toiletries)
          @eco_friendly_toiletries_exception = args[:eco_friendly_toiletries_exception] if args.key?(:eco_friendly_toiletries_exception)
          @locally_sourced_food_and_beverages = args[:locally_sourced_food_and_beverages] if args.key?(:locally_sourced_food_and_beverages)
          @locally_sourced_food_and_beverages_exception = args[:locally_sourced_food_and_beverages_exception] if args.key?(:locally_sourced_food_and_beverages_exception)
          @organic_cage_free_eggs = args[:organic_cage_free_eggs] if args.key?(:organic_cage_free_eggs)
          @organic_cage_free_eggs_exception = args[:organic_cage_free_eggs_exception] if args.key?(:organic_cage_free_eggs_exception)
          @organic_food_and_beverages = args[:organic_food_and_beverages] if args.key?(:organic_food_and_beverages)
          @organic_food_and_beverages_exception = args[:organic_food_and_beverages_exception] if args.key?(:organic_food_and_beverages_exception)
          @responsible_purchasing_policy = args[:responsible_purchasing_policy] if args.key?(:responsible_purchasing_policy)
          @responsible_purchasing_policy_exception = args[:responsible_purchasing_policy_exception] if args.key?(:responsible_purchasing_policy_exception)
          @responsibly_sources_seafood = args[:responsibly_sources_seafood] if args.key?(:responsibly_sources_seafood)
          @responsibly_sources_seafood_exception = args[:responsibly_sources_seafood_exception] if args.key?(:responsibly_sources_seafood_exception)
          @vegan_meals = args[:vegan_meals] if args.key?(:vegan_meals)
          @vegan_meals_exception = args[:vegan_meals_exception] if args.key?(:vegan_meals_exception)
          @vegetarian_meals = args[:vegetarian_meals] if args.key?(:vegetarian_meals)
          @vegetarian_meals_exception = args[:vegetarian_meals_exception] if args.key?(:vegetarian_meals_exception)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Vehicles or vehicular services facilitated or owned by the property.
      class Transportation
        include Google::Apis::Core::Hashable
      
        # Airport shuttle. The hotel provides guests with a chauffeured van or bus to
        # and from the airport. Can be free or for a fee. Guests may share the vehicle
        # with other guests unknown to them. Applies if the hotel has a third-party
        # shuttle service (office/desk etc.) within the hotel. As long as hotel provides
        # this service, it doesn't matter if it's directly with them or a third party
        # they work with. Does not apply if guest has to coordinate with an entity
        # outside/other than the hotel.
        # Corresponds to the JSON property `airportShuttle`
        # @return [Boolean]
        attr_accessor :airport_shuttle
        alias_method :airport_shuttle?, :airport_shuttle
      
        # Airport shuttle exception.
        # Corresponds to the JSON property `airportShuttleException`
        # @return [String]
        attr_accessor :airport_shuttle_exception
      
        # Car rental on property. A branch of a rental car company with a processing
        # desk in the hotel. Available cars for rent may be awaiting at the hotel or in
        # a nearby lot.
        # Corresponds to the JSON property `carRentalOnProperty`
        # @return [Boolean]
        attr_accessor :car_rental_on_property
        alias_method :car_rental_on_property?, :car_rental_on_property
      
        # Car rental on property exception.
        # Corresponds to the JSON property `carRentalOnPropertyException`
        # @return [String]
        attr_accessor :car_rental_on_property_exception
      
        # Free airport shuttle. Airport shuttle is free to guests. Must be free to all
        # guests without any conditions.
        # Corresponds to the JSON property `freeAirportShuttle`
        # @return [Boolean]
        attr_accessor :free_airport_shuttle
        alias_method :free_airport_shuttle?, :free_airport_shuttle
      
        # Free airport shuttle exception.
        # Corresponds to the JSON property `freeAirportShuttleException`
        # @return [String]
        attr_accessor :free_airport_shuttle_exception
      
        # Free private car service. Private chauffeured car service is free to guests.
        # Corresponds to the JSON property `freePrivateCarService`
        # @return [Boolean]
        attr_accessor :free_private_car_service
        alias_method :free_private_car_service?, :free_private_car_service
      
        # Free private car service exception.
        # Corresponds to the JSON property `freePrivateCarServiceException`
        # @return [String]
        attr_accessor :free_private_car_service_exception
      
        # Local shuttle. A car, van or bus provided by the hotel to transport guests to
        # destinations within a specified range of distance around the hotel. Usually
        # shopping and/or convention centers, downtown districts, or beaches. Can be
        # free or for a fee.
        # Corresponds to the JSON property `localShuttle`
        # @return [Boolean]
        attr_accessor :local_shuttle
        alias_method :local_shuttle?, :local_shuttle
      
        # Local shuttle exception.
        # Corresponds to the JSON property `localShuttleException`
        # @return [String]
        attr_accessor :local_shuttle_exception
      
        # Private car service. Hotel provides a private chauffeured car to transport
        # guests to destinations. Passengers in the car are either alone or are known to
        # one another and have requested the car together. Service can be free or for a
        # fee and travel distance is usually limited to a specific range. Not a taxi.
        # Corresponds to the JSON property `privateCarService`
        # @return [Boolean]
        attr_accessor :private_car_service
        alias_method :private_car_service?, :private_car_service
      
        # Private car service exception.
        # Corresponds to the JSON property `privateCarServiceException`
        # @return [String]
        attr_accessor :private_car_service_exception
      
        # Transfer. Hotel provides a shuttle service or car service to take guests to
        # and from the nearest airport or train station. Can be free or for a fee.
        # Guests may share the vehicle with other guests unknown to them.
        # Corresponds to the JSON property `transfer`
        # @return [Boolean]
        attr_accessor :transfer
        alias_method :transfer?, :transfer
      
        # Transfer exception.
        # Corresponds to the JSON property `transferException`
        # @return [String]
        attr_accessor :transfer_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airport_shuttle = args[:airport_shuttle] if args.key?(:airport_shuttle)
          @airport_shuttle_exception = args[:airport_shuttle_exception] if args.key?(:airport_shuttle_exception)
          @car_rental_on_property = args[:car_rental_on_property] if args.key?(:car_rental_on_property)
          @car_rental_on_property_exception = args[:car_rental_on_property_exception] if args.key?(:car_rental_on_property_exception)
          @free_airport_shuttle = args[:free_airport_shuttle] if args.key?(:free_airport_shuttle)
          @free_airport_shuttle_exception = args[:free_airport_shuttle_exception] if args.key?(:free_airport_shuttle_exception)
          @free_private_car_service = args[:free_private_car_service] if args.key?(:free_private_car_service)
          @free_private_car_service_exception = args[:free_private_car_service_exception] if args.key?(:free_private_car_service_exception)
          @local_shuttle = args[:local_shuttle] if args.key?(:local_shuttle)
          @local_shuttle_exception = args[:local_shuttle_exception] if args.key?(:local_shuttle_exception)
          @private_car_service = args[:private_car_service] if args.key?(:private_car_service)
          @private_car_service_exception = args[:private_car_service_exception] if args.key?(:private_car_service_exception)
          @transfer = args[:transfer] if args.key?(:transfer)
          @transfer_exception = args[:transfer_exception] if args.key?(:transfer_exception)
        end
      end
      
      # Views available from the guest unit itself.
      class ViewsFromUnit
        include Google::Apis::Core::Hashable
      
        # Beach view. A guestroom that features a window through which guests can see
        # the beach.
        # Corresponds to the JSON property `beachView`
        # @return [Boolean]
        attr_accessor :beach_view
        alias_method :beach_view?, :beach_view
      
        # Beach view exception.
        # Corresponds to the JSON property `beachViewException`
        # @return [String]
        attr_accessor :beach_view_exception
      
        # City view. A guestroom that features a window through which guests can see the
        # buildings, parks and/or streets of the city.
        # Corresponds to the JSON property `cityView`
        # @return [Boolean]
        attr_accessor :city_view
        alias_method :city_view?, :city_view
      
        # City view exception.
        # Corresponds to the JSON property `cityViewException`
        # @return [String]
        attr_accessor :city_view_exception
      
        # Garden view. A guestroom that features a window through which guests can see a
        # garden.
        # Corresponds to the JSON property `gardenView`
        # @return [Boolean]
        attr_accessor :garden_view
        alias_method :garden_view?, :garden_view
      
        # Garden view exception.
        # Corresponds to the JSON property `gardenViewException`
        # @return [String]
        attr_accessor :garden_view_exception
      
        # Lake view.
        # Corresponds to the JSON property `lakeView`
        # @return [Boolean]
        attr_accessor :lake_view
        alias_method :lake_view?, :lake_view
      
        # Lake view exception.
        # Corresponds to the JSON property `lakeViewException`
        # @return [String]
        attr_accessor :lake_view_exception
      
        # Landmark view. A guestroom that features a window through which guests can see
        # a landmark such as the countryside, a golf course, the forest, a park, a rain
        # forst, a mountain or a slope.
        # Corresponds to the JSON property `landmarkView`
        # @return [Boolean]
        attr_accessor :landmark_view
        alias_method :landmark_view?, :landmark_view
      
        # Landmark view exception.
        # Corresponds to the JSON property `landmarkViewException`
        # @return [String]
        attr_accessor :landmark_view_exception
      
        # Ocean view. A guestroom that features a window through which guests can see
        # the ocean.
        # Corresponds to the JSON property `oceanView`
        # @return [Boolean]
        attr_accessor :ocean_view
        alias_method :ocean_view?, :ocean_view
      
        # Ocean view exception.
        # Corresponds to the JSON property `oceanViewException`
        # @return [String]
        attr_accessor :ocean_view_exception
      
        # Pool view. A guestroom that features a window through which guests can see the
        # hotel's swimming pool.
        # Corresponds to the JSON property `poolView`
        # @return [Boolean]
        attr_accessor :pool_view
        alias_method :pool_view?, :pool_view
      
        # Pool view exception.
        # Corresponds to the JSON property `poolViewException`
        # @return [String]
        attr_accessor :pool_view_exception
      
        # Valley view. A guestroom that features a window through which guests can see
        # over a valley.
        # Corresponds to the JSON property `valleyView`
        # @return [Boolean]
        attr_accessor :valley_view
        alias_method :valley_view?, :valley_view
      
        # Valley view exception.
        # Corresponds to the JSON property `valleyViewException`
        # @return [String]
        attr_accessor :valley_view_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beach_view = args[:beach_view] if args.key?(:beach_view)
          @beach_view_exception = args[:beach_view_exception] if args.key?(:beach_view_exception)
          @city_view = args[:city_view] if args.key?(:city_view)
          @city_view_exception = args[:city_view_exception] if args.key?(:city_view_exception)
          @garden_view = args[:garden_view] if args.key?(:garden_view)
          @garden_view_exception = args[:garden_view_exception] if args.key?(:garden_view_exception)
          @lake_view = args[:lake_view] if args.key?(:lake_view)
          @lake_view_exception = args[:lake_view_exception] if args.key?(:lake_view_exception)
          @landmark_view = args[:landmark_view] if args.key?(:landmark_view)
          @landmark_view_exception = args[:landmark_view_exception] if args.key?(:landmark_view_exception)
          @ocean_view = args[:ocean_view] if args.key?(:ocean_view)
          @ocean_view_exception = args[:ocean_view_exception] if args.key?(:ocean_view_exception)
          @pool_view = args[:pool_view] if args.key?(:pool_view)
          @pool_view_exception = args[:pool_view_exception] if args.key?(:pool_view_exception)
          @valley_view = args[:valley_view] if args.key?(:valley_view)
          @valley_view_exception = args[:valley_view_exception] if args.key?(:valley_view_exception)
        end
      end
      
      # Waste reduction practices implemented at the hotel.
      class WasteReduction
        include Google::Apis::Core::Hashable
      
        # Compostable food containers and cutlery. 100% of food service containers and
        # to-go cutlery are compostable, and reusable utensils are offered wherever
        # possible. Compostable materials are capable of undergoing biological
        # decomposition in a compost site, such that material is not visually
        # distinguishable and breaks down into carbon dioxide, water, inorganic
        # compounds, and biomass.
        # Corresponds to the JSON property `compostableFoodContainersAndCutlery`
        # @return [Boolean]
        attr_accessor :compostable_food_containers_and_cutlery
        alias_method :compostable_food_containers_and_cutlery?, :compostable_food_containers_and_cutlery
      
        # Compostable food containers and cutlery exception.
        # Corresponds to the JSON property `compostableFoodContainersAndCutleryException`
        # @return [String]
        attr_accessor :compostable_food_containers_and_cutlery_exception
      
        # Composts excess food. The property has a program and/or policy for diverting
        # waste from landfill by composting food and yard waste, either through compost
        # collection and off-site processing or on-site compost processing.
        # Corresponds to the JSON property `compostsExcessFood`
        # @return [Boolean]
        attr_accessor :composts_excess_food
        alias_method :composts_excess_food?, :composts_excess_food
      
        # Composts excess food exception.
        # Corresponds to the JSON property `compostsExcessFoodException`
        # @return [String]
        attr_accessor :composts_excess_food_exception
      
        # Donates excess food. The property has a program and/or policy for diverting
        # waste from landfill that may include efforts to donate for human consumption
        # or divert food for animal feed.
        # Corresponds to the JSON property `donatesExcessFood`
        # @return [Boolean]
        attr_accessor :donates_excess_food
        alias_method :donates_excess_food?, :donates_excess_food
      
        # Donates excess food exception.
        # Corresponds to the JSON property `donatesExcessFoodException`
        # @return [String]
        attr_accessor :donates_excess_food_exception
      
        # Food waste reduction program. The property has established a food waste
        # reduction and donation program, aiming to reduce food waste by half. These
        # programs typically use tools such as the Hotel Kitchen Toolkit and others to
        # track waste and measure progress.
        # Corresponds to the JSON property `foodWasteReductionProgram`
        # @return [Boolean]
        attr_accessor :food_waste_reduction_program
        alias_method :food_waste_reduction_program?, :food_waste_reduction_program
      
        # Food waste reduction program exception.
        # Corresponds to the JSON property `foodWasteReductionProgramException`
        # @return [String]
        attr_accessor :food_waste_reduction_program_exception
      
        # No single use plastic straws. The property bans single-use plastic straws.
        # Corresponds to the JSON property `noSingleUsePlasticStraws`
        # @return [Boolean]
        attr_accessor :no_single_use_plastic_straws
        alias_method :no_single_use_plastic_straws?, :no_single_use_plastic_straws
      
        # No single use plastic straws exception.
        # Corresponds to the JSON property `noSingleUsePlasticStrawsException`
        # @return [String]
        attr_accessor :no_single_use_plastic_straws_exception
      
        # No single use plastic water bottles. The property bans single-use plastic
        # water bottles.
        # Corresponds to the JSON property `noSingleUsePlasticWaterBottles`
        # @return [Boolean]
        attr_accessor :no_single_use_plastic_water_bottles
        alias_method :no_single_use_plastic_water_bottles?, :no_single_use_plastic_water_bottles
      
        # No single use plastic water bottles exception.
        # Corresponds to the JSON property `noSingleUsePlasticWaterBottlesException`
        # @return [String]
        attr_accessor :no_single_use_plastic_water_bottles_exception
      
        # No styrofoam food containers. The property eliminates the use of Styrofoam in
        # disposable food service items.
        # Corresponds to the JSON property `noStyrofoamFoodContainers`
        # @return [Boolean]
        attr_accessor :no_styrofoam_food_containers
        alias_method :no_styrofoam_food_containers?, :no_styrofoam_food_containers
      
        # No styrofoam food containers exception.
        # Corresponds to the JSON property `noStyrofoamFoodContainersException`
        # @return [String]
        attr_accessor :no_styrofoam_food_containers_exception
      
        # Recycling program. The property has a recycling program, aligned with LEED
        # waste requirements, and a policy outlining efforts to send less than 50% of
        # waste to landfill. The recycling program includes storage locations for
        # recyclable materials, including mixed paper, corrugated cardboard, glass,
        # plastics, and metals.
        # Corresponds to the JSON property `recyclingProgram`
        # @return [Boolean]
        attr_accessor :recycling_program
        alias_method :recycling_program?, :recycling_program
      
        # Recycling program exception.
        # Corresponds to the JSON property `recyclingProgramException`
        # @return [String]
        attr_accessor :recycling_program_exception
      
        # Refillable toiletry containers. The property has replaced miniature individual
        # containers with refillable amenity dispensers for shampoo, conditioner, soap,
        # and lotion.
        # Corresponds to the JSON property `refillableToiletryContainers`
        # @return [Boolean]
        attr_accessor :refillable_toiletry_containers
        alias_method :refillable_toiletry_containers?, :refillable_toiletry_containers
      
        # Refillable toiletry containers exception.
        # Corresponds to the JSON property `refillableToiletryContainersException`
        # @return [String]
        attr_accessor :refillable_toiletry_containers_exception
      
        # Safely disposes batteries. The property safely stores and disposes batteries.
        # Corresponds to the JSON property `safelyDisposesBatteries`
        # @return [Boolean]
        attr_accessor :safely_disposes_batteries
        alias_method :safely_disposes_batteries?, :safely_disposes_batteries
      
        # Safely disposes batteries exception.
        # Corresponds to the JSON property `safelyDisposesBatteriesException`
        # @return [String]
        attr_accessor :safely_disposes_batteries_exception
      
        # Safely disposes electronics. The property has a reputable recycling program
        # that keeps hazardous electronic parts and chemical compounds out of landfills,
        # dumps and other unauthorized abandonment sites, and recycles/reuses applicable
        # materials. (e.g. certified electronics recyclers).
        # Corresponds to the JSON property `safelyDisposesElectronics`
        # @return [Boolean]
        attr_accessor :safely_disposes_electronics
        alias_method :safely_disposes_electronics?, :safely_disposes_electronics
      
        # Safely disposes electronics exception.
        # Corresponds to the JSON property `safelyDisposesElectronicsException`
        # @return [String]
        attr_accessor :safely_disposes_electronics_exception
      
        # Safely disposes lightbulbs. The property safely stores and disposes lightbulbs.
        # Corresponds to the JSON property `safelyDisposesLightbulbs`
        # @return [Boolean]
        attr_accessor :safely_disposes_lightbulbs
        alias_method :safely_disposes_lightbulbs?, :safely_disposes_lightbulbs
      
        # Safely disposes lightbulbs exception.
        # Corresponds to the JSON property `safelyDisposesLightbulbsException`
        # @return [String]
        attr_accessor :safely_disposes_lightbulbs_exception
      
        # Safely handles hazardous substances. The property has a hazardous waste
        # management program aligned wit GreenSeal and LEED requirements, and meets all
        # regulatory requirements for hazardous waste disposal and recycling. Hazardous
        # means substances that are classified as "hazardous" by an authoritative body (
        # such as OSHA or DOT), are labeled with signal words such as "Danger," "Caution,
        # " "Warning," or are flammable, corrosive, or ignitable. Requirements include: -
        # The property shall maintain records of the efforts it has made to replace the
        # hazardous substances it uses with less hazardous alternatives. - An inventory
        # of the hazardous materials stored on-site. - Products intended for cleaning,
        # dishwashing, laundry, and pool maintenance shall be stored in clearly labeled
        # containers. These containers shall be checked regularly for leaks, and
        # replaced a necessary. - Spill containment devices shall be installed to
        # collect spills, drips, or leaching of chemicals.
        # Corresponds to the JSON property `safelyHandlesHazardousSubstances`
        # @return [Boolean]
        attr_accessor :safely_handles_hazardous_substances
        alias_method :safely_handles_hazardous_substances?, :safely_handles_hazardous_substances
      
        # Safely handles hazardous substances exception.
        # Corresponds to the JSON property `safelyHandlesHazardousSubstancesException`
        # @return [String]
        attr_accessor :safely_handles_hazardous_substances_exception
      
        # Soap donation program. The property participates in a soap donation program
        # such as Clean the World or something similar.
        # Corresponds to the JSON property `soapDonationProgram`
        # @return [Boolean]
        attr_accessor :soap_donation_program
        alias_method :soap_donation_program?, :soap_donation_program
      
        # Soap donation program exception.
        # Corresponds to the JSON property `soapDonationProgramException`
        # @return [String]
        attr_accessor :soap_donation_program_exception
      
        # Toiletry donation program. The property participates in a toiletry donation
        # program such as Clean the World or something similar.
        # Corresponds to the JSON property `toiletryDonationProgram`
        # @return [Boolean]
        attr_accessor :toiletry_donation_program
        alias_method :toiletry_donation_program?, :toiletry_donation_program
      
        # Toiletry donation program exception.
        # Corresponds to the JSON property `toiletryDonationProgramException`
        # @return [String]
        attr_accessor :toiletry_donation_program_exception
      
        # Water bottle filling stations. The property offers water stations throughout
        # the building for guest use.
        # Corresponds to the JSON property `waterBottleFillingStations`
        # @return [Boolean]
        attr_accessor :water_bottle_filling_stations
        alias_method :water_bottle_filling_stations?, :water_bottle_filling_stations
      
        # Water bottle filling stations exception.
        # Corresponds to the JSON property `waterBottleFillingStationsException`
        # @return [String]
        attr_accessor :water_bottle_filling_stations_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compostable_food_containers_and_cutlery = args[:compostable_food_containers_and_cutlery] if args.key?(:compostable_food_containers_and_cutlery)
          @compostable_food_containers_and_cutlery_exception = args[:compostable_food_containers_and_cutlery_exception] if args.key?(:compostable_food_containers_and_cutlery_exception)
          @composts_excess_food = args[:composts_excess_food] if args.key?(:composts_excess_food)
          @composts_excess_food_exception = args[:composts_excess_food_exception] if args.key?(:composts_excess_food_exception)
          @donates_excess_food = args[:donates_excess_food] if args.key?(:donates_excess_food)
          @donates_excess_food_exception = args[:donates_excess_food_exception] if args.key?(:donates_excess_food_exception)
          @food_waste_reduction_program = args[:food_waste_reduction_program] if args.key?(:food_waste_reduction_program)
          @food_waste_reduction_program_exception = args[:food_waste_reduction_program_exception] if args.key?(:food_waste_reduction_program_exception)
          @no_single_use_plastic_straws = args[:no_single_use_plastic_straws] if args.key?(:no_single_use_plastic_straws)
          @no_single_use_plastic_straws_exception = args[:no_single_use_plastic_straws_exception] if args.key?(:no_single_use_plastic_straws_exception)
          @no_single_use_plastic_water_bottles = args[:no_single_use_plastic_water_bottles] if args.key?(:no_single_use_plastic_water_bottles)
          @no_single_use_plastic_water_bottles_exception = args[:no_single_use_plastic_water_bottles_exception] if args.key?(:no_single_use_plastic_water_bottles_exception)
          @no_styrofoam_food_containers = args[:no_styrofoam_food_containers] if args.key?(:no_styrofoam_food_containers)
          @no_styrofoam_food_containers_exception = args[:no_styrofoam_food_containers_exception] if args.key?(:no_styrofoam_food_containers_exception)
          @recycling_program = args[:recycling_program] if args.key?(:recycling_program)
          @recycling_program_exception = args[:recycling_program_exception] if args.key?(:recycling_program_exception)
          @refillable_toiletry_containers = args[:refillable_toiletry_containers] if args.key?(:refillable_toiletry_containers)
          @refillable_toiletry_containers_exception = args[:refillable_toiletry_containers_exception] if args.key?(:refillable_toiletry_containers_exception)
          @safely_disposes_batteries = args[:safely_disposes_batteries] if args.key?(:safely_disposes_batteries)
          @safely_disposes_batteries_exception = args[:safely_disposes_batteries_exception] if args.key?(:safely_disposes_batteries_exception)
          @safely_disposes_electronics = args[:safely_disposes_electronics] if args.key?(:safely_disposes_electronics)
          @safely_disposes_electronics_exception = args[:safely_disposes_electronics_exception] if args.key?(:safely_disposes_electronics_exception)
          @safely_disposes_lightbulbs = args[:safely_disposes_lightbulbs] if args.key?(:safely_disposes_lightbulbs)
          @safely_disposes_lightbulbs_exception = args[:safely_disposes_lightbulbs_exception] if args.key?(:safely_disposes_lightbulbs_exception)
          @safely_handles_hazardous_substances = args[:safely_handles_hazardous_substances] if args.key?(:safely_handles_hazardous_substances)
          @safely_handles_hazardous_substances_exception = args[:safely_handles_hazardous_substances_exception] if args.key?(:safely_handles_hazardous_substances_exception)
          @soap_donation_program = args[:soap_donation_program] if args.key?(:soap_donation_program)
          @soap_donation_program_exception = args[:soap_donation_program_exception] if args.key?(:soap_donation_program_exception)
          @toiletry_donation_program = args[:toiletry_donation_program] if args.key?(:toiletry_donation_program)
          @toiletry_donation_program_exception = args[:toiletry_donation_program_exception] if args.key?(:toiletry_donation_program_exception)
          @water_bottle_filling_stations = args[:water_bottle_filling_stations] if args.key?(:water_bottle_filling_stations)
          @water_bottle_filling_stations_exception = args[:water_bottle_filling_stations_exception] if args.key?(:water_bottle_filling_stations_exception)
        end
      end
      
      # Water conservation practices implemented at the hotel.
      class WaterConservation
        include Google::Apis::Core::Hashable
      
        # Independent organization audits water use. The property conducts a water
        # conservation audit every 5 years, the results of which are either verified by
        # a third-party and/or published in external communications. A water
        # conservation audit is a detailed assessment of the facility, providing
        # recommendations to existing operations and procedures to improve water
        # efficiency, available incentives or rebates, and opportunities for
        # improvements through renovations or upgrades. Examples of organizations who
        # conduct credible third party audits include: Engie Impact, and local utility
        # providers (they often provide energy and water audits).
        # Corresponds to the JSON property `independentOrganizationAuditsWaterUse`
        # @return [Boolean]
        attr_accessor :independent_organization_audits_water_use
        alias_method :independent_organization_audits_water_use?, :independent_organization_audits_water_use
      
        # Independent organization audits water use exception.
        # Corresponds to the JSON property `independentOrganizationAuditsWaterUseException`
        # @return [String]
        attr_accessor :independent_organization_audits_water_use_exception
      
        # Linen reuse program. The property offers a linen reuse program.
        # Corresponds to the JSON property `linenReuseProgram`
        # @return [Boolean]
        attr_accessor :linen_reuse_program
        alias_method :linen_reuse_program?, :linen_reuse_program
      
        # Linen reuse program exception.
        # Corresponds to the JSON property `linenReuseProgramException`
        # @return [String]
        attr_accessor :linen_reuse_program_exception
      
        # Towel reuse program. The property offers a towel reuse program.
        # Corresponds to the JSON property `towelReuseProgram`
        # @return [Boolean]
        attr_accessor :towel_reuse_program
        alias_method :towel_reuse_program?, :towel_reuse_program
      
        # Towel reuse program exception.
        # Corresponds to the JSON property `towelReuseProgramException`
        # @return [String]
        attr_accessor :towel_reuse_program_exception
      
        # Water saving showers. All of the property's guest rooms have shower heads that
        # use no more than 2.0 gallons per minute (gpm).
        # Corresponds to the JSON property `waterSavingShowers`
        # @return [Boolean]
        attr_accessor :water_saving_showers
        alias_method :water_saving_showers?, :water_saving_showers
      
        # Water saving showers exception.
        # Corresponds to the JSON property `waterSavingShowersException`
        # @return [String]
        attr_accessor :water_saving_showers_exception
      
        # Water saving sinks. All of the property's guest rooms have bathroom faucets
        # that use a maximum of 1.5 gallons per minute (gpm), public restroom faucets do
        # not exceed 0.5 gpm, and kitchen faucets (excluding faucets used exclusively
        # for filling operations) do not exceed 2.2 gpm.
        # Corresponds to the JSON property `waterSavingSinks`
        # @return [Boolean]
        attr_accessor :water_saving_sinks
        alias_method :water_saving_sinks?, :water_saving_sinks
      
        # Water saving sinks exception.
        # Corresponds to the JSON property `waterSavingSinksException`
        # @return [String]
        attr_accessor :water_saving_sinks_exception
      
        # Water saving toilets. All of the property's toilets use 1.6 gallons per flush,
        # or less.
        # Corresponds to the JSON property `waterSavingToilets`
        # @return [Boolean]
        attr_accessor :water_saving_toilets
        alias_method :water_saving_toilets?, :water_saving_toilets
      
        # Water saving toilets exception.
        # Corresponds to the JSON property `waterSavingToiletsException`
        # @return [String]
        attr_accessor :water_saving_toilets_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @independent_organization_audits_water_use = args[:independent_organization_audits_water_use] if args.key?(:independent_organization_audits_water_use)
          @independent_organization_audits_water_use_exception = args[:independent_organization_audits_water_use_exception] if args.key?(:independent_organization_audits_water_use_exception)
          @linen_reuse_program = args[:linen_reuse_program] if args.key?(:linen_reuse_program)
          @linen_reuse_program_exception = args[:linen_reuse_program_exception] if args.key?(:linen_reuse_program_exception)
          @towel_reuse_program = args[:towel_reuse_program] if args.key?(:towel_reuse_program)
          @towel_reuse_program_exception = args[:towel_reuse_program_exception] if args.key?(:towel_reuse_program_exception)
          @water_saving_showers = args[:water_saving_showers] if args.key?(:water_saving_showers)
          @water_saving_showers_exception = args[:water_saving_showers_exception] if args.key?(:water_saving_showers_exception)
          @water_saving_sinks = args[:water_saving_sinks] if args.key?(:water_saving_sinks)
          @water_saving_sinks_exception = args[:water_saving_sinks_exception] if args.key?(:water_saving_sinks_exception)
          @water_saving_toilets = args[:water_saving_toilets] if args.key?(:water_saving_toilets)
          @water_saving_toilets_exception = args[:water_saving_toilets_exception] if args.key?(:water_saving_toilets_exception)
        end
      end
      
      # Guest facilities at the property to promote or maintain health, beauty, and
      # fitness.
      class Wellness
        include Google::Apis::Core::Hashable
      
        # Doctor on call. The hotel has a contract with a medical professional who
        # provides services to hotel guests should they fall ill during their stay. The
        # doctor may or may not have an on-site office or be at the hotel at all times.
        # Corresponds to the JSON property `doctorOnCall`
        # @return [Boolean]
        attr_accessor :doctor_on_call
        alias_method :doctor_on_call?, :doctor_on_call
      
        # Doctor on call exception.
        # Corresponds to the JSON property `doctorOnCallException`
        # @return [String]
        attr_accessor :doctor_on_call_exception
      
        # Elliptical machine. An electric, stationary fitness machine with pedals that
        # simulates climbing, walking or running and provides a user-controlled range of
        # speeds and tensions. May not have arm-controlled levers to work out the upper
        # body as well. Commonly found in a gym, fitness room, health center, or health
        # club.
        # Corresponds to the JSON property `ellipticalMachine`
        # @return [Boolean]
        attr_accessor :elliptical_machine
        alias_method :elliptical_machine?, :elliptical_machine
      
        # Elliptical machine exception.
        # Corresponds to the JSON property `ellipticalMachineException`
        # @return [String]
        attr_accessor :elliptical_machine_exception
      
        # Fitness center. A room or building at the hotel containing equipment to
        # promote physical activity, such as treadmills, elliptical machines, stationary
        # bikes, weight machines, free weights, and/or stretching mats. Use of the
        # fitness center can be free or for a fee. May or may not be staffed. May or may
        # not offer instructor-led classes in various styles of physical conditioning.
        # May or may not be open 24/7. May or may not include locker rooms and showers.
        # Also known as health club, gym, fitness room, health center.
        # Corresponds to the JSON property `fitnessCenter`
        # @return [Boolean]
        attr_accessor :fitness_center
        alias_method :fitness_center?, :fitness_center
      
        # Fitness center exception.
        # Corresponds to the JSON property `fitnessCenterException`
        # @return [String]
        attr_accessor :fitness_center_exception
      
        # Free fitness center. Guests may use the fitness center for free.
        # Corresponds to the JSON property `freeFitnessCenter`
        # @return [Boolean]
        attr_accessor :free_fitness_center
        alias_method :free_fitness_center?, :free_fitness_center
      
        # Free fitness center exception.
        # Corresponds to the JSON property `freeFitnessCenterException`
        # @return [String]
        attr_accessor :free_fitness_center_exception
      
        # Free weights. Individual handheld fitness equipment of varied weights used for
        # upper body strength training or bodybuilding. Also known as barbells,
        # dumbbells, or kettlebells. Often stored on a rack with the weights arranged
        # from light to heavy. Commonly found in a gym, fitness room, health center, or
        # health club.
        # Corresponds to the JSON property `freeWeights`
        # @return [Boolean]
        attr_accessor :free_weights
        alias_method :free_weights?, :free_weights
      
        # Free weights exception.
        # Corresponds to the JSON property `freeWeightsException`
        # @return [String]
        attr_accessor :free_weights_exception
      
        # Massage. A service provided by a trained massage therapist involving the
        # physical manipulation of a guest's muscles in order to achieve relaxation or
        # pain relief.
        # Corresponds to the JSON property `massage`
        # @return [Boolean]
        attr_accessor :massage
        alias_method :massage?, :massage
      
        # Massage exception.
        # Corresponds to the JSON property `massageException`
        # @return [String]
        attr_accessor :massage_exception
      
        # Salon. A room at the hotel where professionals provide hair styling services
        # such as shampooing, blow drying, hair dos, hair cutting and hair coloring.
        # Also known as hairdresser or beauty salon.
        # Corresponds to the JSON property `salon`
        # @return [Boolean]
        attr_accessor :salon
        alias_method :salon?, :salon
      
        # Salon exception.
        # Corresponds to the JSON property `salonException`
        # @return [String]
        attr_accessor :salon_exception
      
        # Sauna. A wood-paneled room heated to a high temperature where guests sit on
        # built-in wood benches for the purpose of perspiring and relaxing their muscles.
        # Can be dry or slightly wet heat. Not a steam room.
        # Corresponds to the JSON property `sauna`
        # @return [Boolean]
        attr_accessor :sauna
        alias_method :sauna?, :sauna
      
        # Sauna exception.
        # Corresponds to the JSON property `saunaException`
        # @return [String]
        attr_accessor :sauna_exception
      
        # Spa. A designated area, room or building at the hotel offering health and
        # beauty treatment through such means as steam baths, exercise equipment, and
        # massage. May also offer facials, nail care, and hair care. Services are
        # usually available by appointment and for an additional fee. Does not apply if
        # hotel only offers a steam room; must offer other beauty and/or health
        # treatments as well.
        # Corresponds to the JSON property `spa`
        # @return [Boolean]
        attr_accessor :spa
        alias_method :spa?, :spa
      
        # Spa exception.
        # Corresponds to the JSON property `spaException`
        # @return [String]
        attr_accessor :spa_exception
      
        # Treadmill. An electric stationary fitness machine that simulates a moving path
        # to promote walking or running within a range of user-controlled speeds and
        # inclines. Also known as running machine. Commonly found in a gym, fitness room,
        # health center, or health club.
        # Corresponds to the JSON property `treadmill`
        # @return [Boolean]
        attr_accessor :treadmill
        alias_method :treadmill?, :treadmill
      
        # Treadmill exception.
        # Corresponds to the JSON property `treadmillException`
        # @return [String]
        attr_accessor :treadmill_exception
      
        # Weight machine. Non-electronic fitness equipment designed for the user to
        # target the exertion of different muscles. Usually incorporates a padded seat,
        # a stack of flat weights and various bars and pulleys. May be designed for
        # toning a specific part of the body or may involve different user-controlled
        # settings, hardware and pulleys so as to provide an overall workout in one
        # machine. Commonly found in a gym, fitness center, fitness room, or health club.
        # Corresponds to the JSON property `weightMachine`
        # @return [Boolean]
        attr_accessor :weight_machine
        alias_method :weight_machine?, :weight_machine
      
        # Weight machine exception.
        # Corresponds to the JSON property `weightMachineException`
        # @return [String]
        attr_accessor :weight_machine_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @doctor_on_call = args[:doctor_on_call] if args.key?(:doctor_on_call)
          @doctor_on_call_exception = args[:doctor_on_call_exception] if args.key?(:doctor_on_call_exception)
          @elliptical_machine = args[:elliptical_machine] if args.key?(:elliptical_machine)
          @elliptical_machine_exception = args[:elliptical_machine_exception] if args.key?(:elliptical_machine_exception)
          @fitness_center = args[:fitness_center] if args.key?(:fitness_center)
          @fitness_center_exception = args[:fitness_center_exception] if args.key?(:fitness_center_exception)
          @free_fitness_center = args[:free_fitness_center] if args.key?(:free_fitness_center)
          @free_fitness_center_exception = args[:free_fitness_center_exception] if args.key?(:free_fitness_center_exception)
          @free_weights = args[:free_weights] if args.key?(:free_weights)
          @free_weights_exception = args[:free_weights_exception] if args.key?(:free_weights_exception)
          @massage = args[:massage] if args.key?(:massage)
          @massage_exception = args[:massage_exception] if args.key?(:massage_exception)
          @salon = args[:salon] if args.key?(:salon)
          @salon_exception = args[:salon_exception] if args.key?(:salon_exception)
          @sauna = args[:sauna] if args.key?(:sauna)
          @sauna_exception = args[:sauna_exception] if args.key?(:sauna_exception)
          @spa = args[:spa] if args.key?(:spa)
          @spa_exception = args[:spa_exception] if args.key?(:spa_exception)
          @treadmill = args[:treadmill] if args.key?(:treadmill)
          @treadmill_exception = args[:treadmill_exception] if args.key?(:treadmill_exception)
          @weight_machine = args[:weight_machine] if args.key?(:weight_machine)
          @weight_machine_exception = args[:weight_machine_exception] if args.key?(:weight_machine_exception)
        end
      end
    end
  end
end
