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
      
      class Accessibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Business
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EcoCertification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnergyEfficiency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnhancedCleaning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Families
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodAndDrink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetGoogleUpdatedLodgingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestUnitFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestUnitType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthAndSafety
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Housekeeping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncreasedFoodSafety
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageSpoken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaAccessibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaEating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaSleeping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lodging
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LodgingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinimizedContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Parking
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonalProtection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhysicalDistancing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pools
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Services
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sustainability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SustainabilityCertifications
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SustainableSourcing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Transportation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewsFromUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WasteReduction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WaterConservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Wellness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Accessibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobility_accessible, as: 'mobilityAccessible'
          property :mobility_accessible_elevator, as: 'mobilityAccessibleElevator'
          property :mobility_accessible_elevator_exception, as: 'mobilityAccessibleElevatorException'
          property :mobility_accessible_exception, as: 'mobilityAccessibleException'
          property :mobility_accessible_parking, as: 'mobilityAccessibleParking'
          property :mobility_accessible_parking_exception, as: 'mobilityAccessibleParkingException'
          property :mobility_accessible_pool, as: 'mobilityAccessiblePool'
          property :mobility_accessible_pool_exception, as: 'mobilityAccessiblePoolException'
        end
      end
      
      class Activities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beach_access, as: 'beachAccess'
          property :beach_access_exception, as: 'beachAccessException'
          property :beach_front, as: 'beachFront'
          property :beach_front_exception, as: 'beachFrontException'
          property :bicycle_rental, as: 'bicycleRental'
          property :bicycle_rental_exception, as: 'bicycleRentalException'
          property :boutique_stores, as: 'boutiqueStores'
          property :boutique_stores_exception, as: 'boutiqueStoresException'
          property :casino, as: 'casino'
          property :casino_exception, as: 'casinoException'
          property :free_bicycle_rental, as: 'freeBicycleRental'
          property :free_bicycle_rental_exception, as: 'freeBicycleRentalException'
          property :free_watercraft_rental, as: 'freeWatercraftRental'
          property :free_watercraft_rental_exception, as: 'freeWatercraftRentalException'
          property :game_room, as: 'gameRoom'
          property :game_room_exception, as: 'gameRoomException'
          property :golf, as: 'golf'
          property :golf_exception, as: 'golfException'
          property :horseback_riding, as: 'horsebackRiding'
          property :horseback_riding_exception, as: 'horsebackRidingException'
          property :nightclub, as: 'nightclub'
          property :nightclub_exception, as: 'nightclubException'
          property :private_beach, as: 'privateBeach'
          property :private_beach_exception, as: 'privateBeachException'
          property :scuba, as: 'scuba'
          property :scuba_exception, as: 'scubaException'
          property :snorkeling, as: 'snorkeling'
          property :snorkeling_exception, as: 'snorkelingException'
          property :tennis, as: 'tennis'
          property :tennis_exception, as: 'tennisException'
          property :water_skiing, as: 'waterSkiing'
          property :water_skiing_exception, as: 'waterSkiingException'
          property :watercraft_rental, as: 'watercraftRental'
          property :watercraft_rental_exception, as: 'watercraftRentalException'
        end
      end
      
      class Business
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_center, as: 'businessCenter'
          property :business_center_exception, as: 'businessCenterException'
          property :meeting_rooms, as: 'meetingRooms'
          property :meeting_rooms_count, as: 'meetingRoomsCount'
          property :meeting_rooms_count_exception, as: 'meetingRoomsCountException'
          property :meeting_rooms_exception, as: 'meetingRoomsException'
        end
      end
      
      class Connectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_wifi, as: 'freeWifi'
          property :free_wifi_exception, as: 'freeWifiException'
          property :public_area_wifi_available, as: 'publicAreaWifiAvailable'
          property :public_area_wifi_available_exception, as: 'publicAreaWifiAvailableException'
          property :public_internet_terminal, as: 'publicInternetTerminal'
          property :public_internet_terminal_exception, as: 'publicInternetTerminalException'
          property :wifi_available, as: 'wifiAvailable'
          property :wifi_available_exception, as: 'wifiAvailableException'
        end
      end
      
      class EcoCertification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :awarded, as: 'awarded'
          property :awarded_exception, as: 'awardedException'
          property :eco_certificate, as: 'ecoCertificate'
        end
      end
      
      class EnergyEfficiency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carbon_free_energy_sources, as: 'carbonFreeEnergySources'
          property :carbon_free_energy_sources_exception, as: 'carbonFreeEnergySourcesException'
          property :energy_conservation_program, as: 'energyConservationProgram'
          property :energy_conservation_program_exception, as: 'energyConservationProgramException'
          property :energy_efficient_heating_and_cooling_systems, as: 'energyEfficientHeatingAndCoolingSystems'
          property :energy_efficient_heating_and_cooling_systems_exception, as: 'energyEfficientHeatingAndCoolingSystemsException'
          property :energy_efficient_lighting, as: 'energyEfficientLighting'
          property :energy_efficient_lighting_exception, as: 'energyEfficientLightingException'
          property :energy_saving_thermostats, as: 'energySavingThermostats'
          property :energy_saving_thermostats_exception, as: 'energySavingThermostatsException'
          property :green_building_design, as: 'greenBuildingDesign'
          property :green_building_design_exception, as: 'greenBuildingDesignException'
          property :independent_organization_audits_energy_use, as: 'independentOrganizationAuditsEnergyUse'
          property :independent_organization_audits_energy_use_exception, as: 'independentOrganizationAuditsEnergyUseException'
        end
      end
      
      class EnhancedCleaning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commercial_grade_disinfectant_cleaning, as: 'commercialGradeDisinfectantCleaning'
          property :commercial_grade_disinfectant_cleaning_exception, as: 'commercialGradeDisinfectantCleaningException'
          property :common_areas_enhanced_cleaning, as: 'commonAreasEnhancedCleaning'
          property :common_areas_enhanced_cleaning_exception, as: 'commonAreasEnhancedCleaningException'
          property :employees_trained_cleaning_procedures, as: 'employeesTrainedCleaningProcedures'
          property :employees_trained_cleaning_procedures_exception, as: 'employeesTrainedCleaningProceduresException'
          property :employees_trained_thorough_hand_washing, as: 'employeesTrainedThoroughHandWashing'
          property :employees_trained_thorough_hand_washing_exception, as: 'employeesTrainedThoroughHandWashingException'
          property :employees_wear_protective_equipment, as: 'employeesWearProtectiveEquipment'
          property :employees_wear_protective_equipment_exception, as: 'employeesWearProtectiveEquipmentException'
          property :guest_rooms_enhanced_cleaning, as: 'guestRoomsEnhancedCleaning'
          property :guest_rooms_enhanced_cleaning_exception, as: 'guestRoomsEnhancedCleaningException'
        end
      end
      
      class Families
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :babysitting, as: 'babysitting'
          property :babysitting_exception, as: 'babysittingException'
          property :kids_activities, as: 'kidsActivities'
          property :kids_activities_exception, as: 'kidsActivitiesException'
          property :kids_club, as: 'kidsClub'
          property :kids_club_exception, as: 'kidsClubException'
          property :kids_friendly, as: 'kidsFriendly'
          property :kids_friendly_exception, as: 'kidsFriendlyException'
        end
      end
      
      class FoodAndDrink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bar, as: 'bar'
          property :bar_exception, as: 'barException'
          property :breakfast_available, as: 'breakfastAvailable'
          property :breakfast_available_exception, as: 'breakfastAvailableException'
          property :breakfast_buffet, as: 'breakfastBuffet'
          property :breakfast_buffet_exception, as: 'breakfastBuffetException'
          property :buffet, as: 'buffet'
          property :buffet_exception, as: 'buffetException'
          property :dinner_buffet, as: 'dinnerBuffet'
          property :dinner_buffet_exception, as: 'dinnerBuffetException'
          property :free_breakfast, as: 'freeBreakfast'
          property :free_breakfast_exception, as: 'freeBreakfastException'
          property :restaurant, as: 'restaurant'
          property :restaurant_exception, as: 'restaurantException'
          property :restaurants_count, as: 'restaurantsCount'
          property :restaurants_count_exception, as: 'restaurantsCountException'
          property :room_service, as: 'roomService'
          property :room_service_exception, as: 'roomServiceException'
          property :table_service, as: 'tableService'
          property :table_service_exception, as: 'tableServiceException'
          property :twenty_four_hour_room_service, as: 'twentyFourHourRoomService'
          property :twenty_four_hour_room_service_exception, as: 'twentyFourHourRoomServiceException'
          property :vending_machine, as: 'vendingMachine'
          property :vending_machine_exception, as: 'vendingMachineException'
        end
      end
      
      class GetGoogleUpdatedLodgingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diff_mask, as: 'diffMask'
          property :lodging, as: 'lodging', class: Google::Apis::MybusinesslodgingV1::Lodging, decorator: Google::Apis::MybusinesslodgingV1::Lodging::Representation
      
        end
      end
      
      class GuestUnitFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bungalow_or_villa, as: 'bungalowOrVilla'
          property :bungalow_or_villa_exception, as: 'bungalowOrVillaException'
          property :connecting_unit_available, as: 'connectingUnitAvailable'
          property :connecting_unit_available_exception, as: 'connectingUnitAvailableException'
          property :executive_floor, as: 'executiveFloor'
          property :executive_floor_exception, as: 'executiveFloorException'
          property :max_adult_occupants_count, as: 'maxAdultOccupantsCount'
          property :max_adult_occupants_count_exception, as: 'maxAdultOccupantsCountException'
          property :max_child_occupants_count, as: 'maxChildOccupantsCount'
          property :max_child_occupants_count_exception, as: 'maxChildOccupantsCountException'
          property :max_occupants_count, as: 'maxOccupantsCount'
          property :max_occupants_count_exception, as: 'maxOccupantsCountException'
          property :private_home, as: 'privateHome'
          property :private_home_exception, as: 'privateHomeException'
          property :suite, as: 'suite'
          property :suite_exception, as: 'suiteException'
          property :tier, as: 'tier'
          property :tier_exception, as: 'tierException'
          property :total_living_areas, as: 'totalLivingAreas', class: Google::Apis::MybusinesslodgingV1::LivingArea, decorator: Google::Apis::MybusinesslodgingV1::LivingArea::Representation
      
          property :views, as: 'views', class: Google::Apis::MybusinesslodgingV1::ViewsFromUnit, decorator: Google::Apis::MybusinesslodgingV1::ViewsFromUnit::Representation
      
        end
      end
      
      class GuestUnitType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :codes, as: 'codes'
          property :features, as: 'features', class: Google::Apis::MybusinesslodgingV1::GuestUnitFeatures, decorator: Google::Apis::MybusinesslodgingV1::GuestUnitFeatures::Representation
      
          property :label, as: 'label'
        end
      end
      
      class HealthAndSafety
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enhanced_cleaning, as: 'enhancedCleaning', class: Google::Apis::MybusinesslodgingV1::EnhancedCleaning, decorator: Google::Apis::MybusinesslodgingV1::EnhancedCleaning::Representation
      
          property :increased_food_safety, as: 'increasedFoodSafety', class: Google::Apis::MybusinesslodgingV1::IncreasedFoodSafety, decorator: Google::Apis::MybusinesslodgingV1::IncreasedFoodSafety::Representation
      
          property :minimized_contact, as: 'minimizedContact', class: Google::Apis::MybusinesslodgingV1::MinimizedContact, decorator: Google::Apis::MybusinesslodgingV1::MinimizedContact::Representation
      
          property :personal_protection, as: 'personalProtection', class: Google::Apis::MybusinesslodgingV1::PersonalProtection, decorator: Google::Apis::MybusinesslodgingV1::PersonalProtection::Representation
      
          property :physical_distancing, as: 'physicalDistancing', class: Google::Apis::MybusinesslodgingV1::PhysicalDistancing, decorator: Google::Apis::MybusinesslodgingV1::PhysicalDistancing::Representation
      
        end
      end
      
      class Housekeeping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_housekeeping, as: 'dailyHousekeeping'
          property :daily_housekeeping_exception, as: 'dailyHousekeepingException'
          property :housekeeping_available, as: 'housekeepingAvailable'
          property :housekeeping_available_exception, as: 'housekeepingAvailableException'
          property :turndown_service, as: 'turndownService'
          property :turndown_service_exception, as: 'turndownServiceException'
        end
      end
      
      class IncreasedFoodSafety
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dining_areas_additional_sanitation, as: 'diningAreasAdditionalSanitation'
          property :dining_areas_additional_sanitation_exception, as: 'diningAreasAdditionalSanitationException'
          property :disposable_flatware, as: 'disposableFlatware'
          property :disposable_flatware_exception, as: 'disposableFlatwareException'
          property :food_preparation_and_serving_additional_safety, as: 'foodPreparationAndServingAdditionalSafety'
          property :food_preparation_and_serving_additional_safety_exception, as: 'foodPreparationAndServingAdditionalSafetyException'
          property :individual_packaged_meals, as: 'individualPackagedMeals'
          property :individual_packaged_meals_exception, as: 'individualPackagedMealsException'
          property :single_use_food_menus, as: 'singleUseFoodMenus'
          property :single_use_food_menus_exception, as: 'singleUseFoodMenusException'
        end
      end
      
      class LanguageSpoken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :spoken, as: 'spoken'
          property :spoken_exception, as: 'spokenException'
        end
      end
      
      class LivingArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility, as: 'accessibility', class: Google::Apis::MybusinesslodgingV1::LivingAreaAccessibility, decorator: Google::Apis::MybusinesslodgingV1::LivingAreaAccessibility::Representation
      
          property :eating, as: 'eating', class: Google::Apis::MybusinesslodgingV1::LivingAreaEating, decorator: Google::Apis::MybusinesslodgingV1::LivingAreaEating::Representation
      
          property :features, as: 'features', class: Google::Apis::MybusinesslodgingV1::LivingAreaFeatures, decorator: Google::Apis::MybusinesslodgingV1::LivingAreaFeatures::Representation
      
          property :layout, as: 'layout', class: Google::Apis::MybusinesslodgingV1::LivingAreaLayout, decorator: Google::Apis::MybusinesslodgingV1::LivingAreaLayout::Representation
      
          property :sleeping, as: 'sleeping', class: Google::Apis::MybusinesslodgingV1::LivingAreaSleeping, decorator: Google::Apis::MybusinesslodgingV1::LivingAreaSleeping::Representation
      
        end
      end
      
      class LivingAreaAccessibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ada_compliant_unit, as: 'adaCompliantUnit'
          property :ada_compliant_unit_exception, as: 'adaCompliantUnitException'
          property :hearing_accessible_doorbell, as: 'hearingAccessibleDoorbell'
          property :hearing_accessible_doorbell_exception, as: 'hearingAccessibleDoorbellException'
          property :hearing_accessible_fire_alarm, as: 'hearingAccessibleFireAlarm'
          property :hearing_accessible_fire_alarm_exception, as: 'hearingAccessibleFireAlarmException'
          property :hearing_accessible_unit, as: 'hearingAccessibleUnit'
          property :hearing_accessible_unit_exception, as: 'hearingAccessibleUnitException'
          property :mobility_accessible_bathtub, as: 'mobilityAccessibleBathtub'
          property :mobility_accessible_bathtub_exception, as: 'mobilityAccessibleBathtubException'
          property :mobility_accessible_shower, as: 'mobilityAccessibleShower'
          property :mobility_accessible_shower_exception, as: 'mobilityAccessibleShowerException'
          property :mobility_accessible_toilet, as: 'mobilityAccessibleToilet'
          property :mobility_accessible_toilet_exception, as: 'mobilityAccessibleToiletException'
          property :mobility_accessible_unit, as: 'mobilityAccessibleUnit'
          property :mobility_accessible_unit_exception, as: 'mobilityAccessibleUnitException'
        end
      end
      
      class LivingAreaEating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coffee_maker, as: 'coffeeMaker'
          property :coffee_maker_exception, as: 'coffeeMakerException'
          property :cookware, as: 'cookware'
          property :cookware_exception, as: 'cookwareException'
          property :dishwasher, as: 'dishwasher'
          property :dishwasher_exception, as: 'dishwasherException'
          property :indoor_grill, as: 'indoorGrill'
          property :indoor_grill_exception, as: 'indoorGrillException'
          property :kettle, as: 'kettle'
          property :kettle_exception, as: 'kettleException'
          property :kitchen_available, as: 'kitchenAvailable'
          property :kitchen_available_exception, as: 'kitchenAvailableException'
          property :microwave, as: 'microwave'
          property :microwave_exception, as: 'microwaveException'
          property :minibar, as: 'minibar'
          property :minibar_exception, as: 'minibarException'
          property :outdoor_grill, as: 'outdoorGrill'
          property :outdoor_grill_exception, as: 'outdoorGrillException'
          property :oven, as: 'oven'
          property :oven_exception, as: 'ovenException'
          property :refrigerator, as: 'refrigerator'
          property :refrigerator_exception, as: 'refrigeratorException'
          property :sink, as: 'sink'
          property :sink_exception, as: 'sinkException'
          property :snackbar, as: 'snackbar'
          property :snackbar_exception, as: 'snackbarException'
          property :stove, as: 'stove'
          property :stove_exception, as: 'stoveException'
          property :tea_station, as: 'teaStation'
          property :tea_station_exception, as: 'teaStationException'
          property :toaster, as: 'toaster'
          property :toaster_exception, as: 'toasterException'
        end
      end
      
      class LivingAreaFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :air_conditioning, as: 'airConditioning'
          property :air_conditioning_exception, as: 'airConditioningException'
          property :bathtub, as: 'bathtub'
          property :bathtub_exception, as: 'bathtubException'
          property :bidet, as: 'bidet'
          property :bidet_exception, as: 'bidetException'
          property :dryer, as: 'dryer'
          property :dryer_exception, as: 'dryerException'
          property :electronic_room_key, as: 'electronicRoomKey'
          property :electronic_room_key_exception, as: 'electronicRoomKeyException'
          property :fireplace, as: 'fireplace'
          property :fireplace_exception, as: 'fireplaceException'
          property :hairdryer, as: 'hairdryer'
          property :hairdryer_exception, as: 'hairdryerException'
          property :heating, as: 'heating'
          property :heating_exception, as: 'heatingException'
          property :inunit_safe, as: 'inunitSafe'
          property :inunit_safe_exception, as: 'inunitSafeException'
          property :inunit_wifi_available, as: 'inunitWifiAvailable'
          property :inunit_wifi_available_exception, as: 'inunitWifiAvailableException'
          property :ironing_equipment, as: 'ironingEquipment'
          property :ironing_equipment_exception, as: 'ironingEquipmentException'
          property :pay_per_view_movies, as: 'payPerViewMovies'
          property :pay_per_view_movies_exception, as: 'payPerViewMoviesException'
          property :private_bathroom, as: 'privateBathroom'
          property :private_bathroom_exception, as: 'privateBathroomException'
          property :shower, as: 'shower'
          property :shower_exception, as: 'showerException'
          property :toilet, as: 'toilet'
          property :toilet_exception, as: 'toiletException'
          property :tv, as: 'tv'
          property :tv_casting, as: 'tvCasting'
          property :tv_casting_exception, as: 'tvCastingException'
          property :tv_exception, as: 'tvException'
          property :tv_streaming, as: 'tvStreaming'
          property :tv_streaming_exception, as: 'tvStreamingException'
          property :universal_power_adapters, as: 'universalPowerAdapters'
          property :universal_power_adapters_exception, as: 'universalPowerAdaptersException'
          property :washer, as: 'washer'
          property :washer_exception, as: 'washerException'
        end
      end
      
      class LivingAreaLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :balcony, as: 'balcony'
          property :balcony_exception, as: 'balconyException'
          property :living_area_sq_meters, as: 'livingAreaSqMeters'
          property :living_area_sq_meters_exception, as: 'livingAreaSqMetersException'
          property :loft, as: 'loft'
          property :loft_exception, as: 'loftException'
          property :non_smoking, as: 'nonSmoking'
          property :non_smoking_exception, as: 'nonSmokingException'
          property :patio, as: 'patio'
          property :patio_exception, as: 'patioException'
          property :stairs, as: 'stairs'
          property :stairs_exception, as: 'stairsException'
        end
      end
      
      class LivingAreaSleeping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beds_count, as: 'bedsCount'
          property :beds_count_exception, as: 'bedsCountException'
          property :bunk_beds_count, as: 'bunkBedsCount'
          property :bunk_beds_count_exception, as: 'bunkBedsCountException'
          property :cribs_count, as: 'cribsCount'
          property :cribs_count_exception, as: 'cribsCountException'
          property :double_beds_count, as: 'doubleBedsCount'
          property :double_beds_count_exception, as: 'doubleBedsCountException'
          property :feather_pillows, as: 'featherPillows'
          property :feather_pillows_exception, as: 'featherPillowsException'
          property :hypoallergenic_bedding, as: 'hypoallergenicBedding'
          property :hypoallergenic_bedding_exception, as: 'hypoallergenicBeddingException'
          property :king_beds_count, as: 'kingBedsCount'
          property :king_beds_count_exception, as: 'kingBedsCountException'
          property :memory_foam_pillows, as: 'memoryFoamPillows'
          property :memory_foam_pillows_exception, as: 'memoryFoamPillowsException'
          property :other_beds_count, as: 'otherBedsCount'
          property :other_beds_count_exception, as: 'otherBedsCountException'
          property :queen_beds_count, as: 'queenBedsCount'
          property :queen_beds_count_exception, as: 'queenBedsCountException'
          property :roll_away_beds_count, as: 'rollAwayBedsCount'
          property :roll_away_beds_count_exception, as: 'rollAwayBedsCountException'
          property :single_or_twin_beds_count, as: 'singleOrTwinBedsCount'
          property :single_or_twin_beds_count_exception, as: 'singleOrTwinBedsCountException'
          property :sofa_beds_count, as: 'sofaBedsCount'
          property :sofa_beds_count_exception, as: 'sofaBedsCountException'
          property :synthetic_pillows, as: 'syntheticPillows'
          property :synthetic_pillows_exception, as: 'syntheticPillowsException'
        end
      end
      
      class Lodging
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility, as: 'accessibility', class: Google::Apis::MybusinesslodgingV1::Accessibility, decorator: Google::Apis::MybusinesslodgingV1::Accessibility::Representation
      
          property :activities, as: 'activities', class: Google::Apis::MybusinesslodgingV1::Activities, decorator: Google::Apis::MybusinesslodgingV1::Activities::Representation
      
          property :all_units, as: 'allUnits', class: Google::Apis::MybusinesslodgingV1::GuestUnitFeatures, decorator: Google::Apis::MybusinesslodgingV1::GuestUnitFeatures::Representation
      
          property :business, as: 'business', class: Google::Apis::MybusinesslodgingV1::Business, decorator: Google::Apis::MybusinesslodgingV1::Business::Representation
      
          property :common_living_area, as: 'commonLivingArea', class: Google::Apis::MybusinesslodgingV1::LivingArea, decorator: Google::Apis::MybusinesslodgingV1::LivingArea::Representation
      
          property :connectivity, as: 'connectivity', class: Google::Apis::MybusinesslodgingV1::Connectivity, decorator: Google::Apis::MybusinesslodgingV1::Connectivity::Representation
      
          property :families, as: 'families', class: Google::Apis::MybusinesslodgingV1::Families, decorator: Google::Apis::MybusinesslodgingV1::Families::Representation
      
          property :food_and_drink, as: 'foodAndDrink', class: Google::Apis::MybusinesslodgingV1::FoodAndDrink, decorator: Google::Apis::MybusinesslodgingV1::FoodAndDrink::Representation
      
          collection :guest_units, as: 'guestUnits', class: Google::Apis::MybusinesslodgingV1::GuestUnitType, decorator: Google::Apis::MybusinesslodgingV1::GuestUnitType::Representation
      
          property :health_and_safety, as: 'healthAndSafety', class: Google::Apis::MybusinesslodgingV1::HealthAndSafety, decorator: Google::Apis::MybusinesslodgingV1::HealthAndSafety::Representation
      
          property :housekeeping, as: 'housekeeping', class: Google::Apis::MybusinesslodgingV1::Housekeeping, decorator: Google::Apis::MybusinesslodgingV1::Housekeeping::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::MybusinesslodgingV1::LodgingMetadata, decorator: Google::Apis::MybusinesslodgingV1::LodgingMetadata::Representation
      
          property :name, as: 'name'
          property :parking, as: 'parking', class: Google::Apis::MybusinesslodgingV1::Parking, decorator: Google::Apis::MybusinesslodgingV1::Parking::Representation
      
          property :pets, as: 'pets', class: Google::Apis::MybusinesslodgingV1::Pets, decorator: Google::Apis::MybusinesslodgingV1::Pets::Representation
      
          property :policies, as: 'policies', class: Google::Apis::MybusinesslodgingV1::Policies, decorator: Google::Apis::MybusinesslodgingV1::Policies::Representation
      
          property :pools, as: 'pools', class: Google::Apis::MybusinesslodgingV1::Pools, decorator: Google::Apis::MybusinesslodgingV1::Pools::Representation
      
          property :property, as: 'property', class: Google::Apis::MybusinesslodgingV1::Property, decorator: Google::Apis::MybusinesslodgingV1::Property::Representation
      
          property :services, as: 'services', class: Google::Apis::MybusinesslodgingV1::Services, decorator: Google::Apis::MybusinesslodgingV1::Services::Representation
      
          property :some_units, as: 'someUnits', class: Google::Apis::MybusinesslodgingV1::GuestUnitFeatures, decorator: Google::Apis::MybusinesslodgingV1::GuestUnitFeatures::Representation
      
          property :sustainability, as: 'sustainability', class: Google::Apis::MybusinesslodgingV1::Sustainability, decorator: Google::Apis::MybusinesslodgingV1::Sustainability::Representation
      
          property :transportation, as: 'transportation', class: Google::Apis::MybusinesslodgingV1::Transportation, decorator: Google::Apis::MybusinesslodgingV1::Transportation::Representation
      
          property :wellness, as: 'wellness', class: Google::Apis::MybusinesslodgingV1::Wellness, decorator: Google::Apis::MybusinesslodgingV1::Wellness::Representation
      
        end
      end
      
      class LodgingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
        end
      end
      
      class MinimizedContact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contactless_checkin_checkout, as: 'contactlessCheckinCheckout'
          property :contactless_checkin_checkout_exception, as: 'contactlessCheckinCheckoutException'
          property :digital_guest_room_keys, as: 'digitalGuestRoomKeys'
          property :digital_guest_room_keys_exception, as: 'digitalGuestRoomKeysException'
          property :housekeeping_scheduled_request_only, as: 'housekeepingScheduledRequestOnly'
          property :housekeeping_scheduled_request_only_exception, as: 'housekeepingScheduledRequestOnlyException'
          property :no_high_touch_items_common_areas, as: 'noHighTouchItemsCommonAreas'
          property :no_high_touch_items_common_areas_exception, as: 'noHighTouchItemsCommonAreasException'
          property :no_high_touch_items_guest_rooms, as: 'noHighTouchItemsGuestRooms'
          property :no_high_touch_items_guest_rooms_exception, as: 'noHighTouchItemsGuestRoomsException'
          property :plastic_keycards_disinfected, as: 'plasticKeycardsDisinfected'
          property :plastic_keycards_disinfected_exception, as: 'plasticKeycardsDisinfectedException'
          property :room_bookings_buffer, as: 'roomBookingsBuffer'
          property :room_bookings_buffer_exception, as: 'roomBookingsBufferException'
        end
      end
      
      class Parking
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :electric_car_charging_stations, as: 'electricCarChargingStations'
          property :electric_car_charging_stations_exception, as: 'electricCarChargingStationsException'
          property :free_parking, as: 'freeParking'
          property :free_parking_exception, as: 'freeParkingException'
          property :free_self_parking, as: 'freeSelfParking'
          property :free_self_parking_exception, as: 'freeSelfParkingException'
          property :free_valet_parking, as: 'freeValetParking'
          property :free_valet_parking_exception, as: 'freeValetParkingException'
          property :parking_available, as: 'parkingAvailable'
          property :parking_available_exception, as: 'parkingAvailableException'
          property :self_parking_available, as: 'selfParkingAvailable'
          property :self_parking_available_exception, as: 'selfParkingAvailableException'
          property :valet_parking_available, as: 'valetParkingAvailable'
          property :valet_parking_available_exception, as: 'valetParkingAvailableException'
        end
      end
      
      class PaymentOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cash, as: 'cash'
          property :cash_exception, as: 'cashException'
          property :cheque, as: 'cheque'
          property :cheque_exception, as: 'chequeException'
          property :credit_card, as: 'creditCard'
          property :credit_card_exception, as: 'creditCardException'
          property :debit_card, as: 'debitCard'
          property :debit_card_exception, as: 'debitCardException'
          property :mobile_nfc, as: 'mobileNfc'
          property :mobile_nfc_exception, as: 'mobileNfcException'
        end
      end
      
      class PersonalProtection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_areas_offer_sanitizing_items, as: 'commonAreasOfferSanitizingItems'
          property :common_areas_offer_sanitizing_items_exception, as: 'commonAreasOfferSanitizingItemsException'
          property :face_mask_required, as: 'faceMaskRequired'
          property :face_mask_required_exception, as: 'faceMaskRequiredException'
          property :guest_room_hygiene_kits_available, as: 'guestRoomHygieneKitsAvailable'
          property :guest_room_hygiene_kits_available_exception, as: 'guestRoomHygieneKitsAvailableException'
          property :protective_equipment_available, as: 'protectiveEquipmentAvailable'
          property :protective_equipment_available_exception, as: 'protectiveEquipmentAvailableException'
        end
      end
      
      class Pets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cats_allowed, as: 'catsAllowed'
          property :cats_allowed_exception, as: 'catsAllowedException'
          property :dogs_allowed, as: 'dogsAllowed'
          property :dogs_allowed_exception, as: 'dogsAllowedException'
          property :pets_allowed, as: 'petsAllowed'
          property :pets_allowed_exception, as: 'petsAllowedException'
          property :pets_allowed_free, as: 'petsAllowedFree'
          property :pets_allowed_free_exception, as: 'petsAllowedFreeException'
        end
      end
      
      class PhysicalDistancing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_areas_physical_distancing_arranged, as: 'commonAreasPhysicalDistancingArranged'
          property :common_areas_physical_distancing_arranged_exception, as: 'commonAreasPhysicalDistancingArrangedException'
          property :physical_distancing_required, as: 'physicalDistancingRequired'
          property :physical_distancing_required_exception, as: 'physicalDistancingRequiredException'
          property :safety_dividers, as: 'safetyDividers'
          property :safety_dividers_exception, as: 'safetyDividersException'
          property :shared_areas_limited_occupancy, as: 'sharedAreasLimitedOccupancy'
          property :shared_areas_limited_occupancy_exception, as: 'sharedAreasLimitedOccupancyException'
          property :wellness_areas_have_private_spaces, as: 'wellnessAreasHavePrivateSpaces'
          property :wellness_areas_have_private_spaces_exception, as: 'wellnessAreasHavePrivateSpacesException'
        end
      end
      
      class Policies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_inclusive_available, as: 'allInclusiveAvailable'
          property :all_inclusive_available_exception, as: 'allInclusiveAvailableException'
          property :all_inclusive_only, as: 'allInclusiveOnly'
          property :all_inclusive_only_exception, as: 'allInclusiveOnlyException'
          property :checkin_time, as: 'checkinTime', class: Google::Apis::MybusinesslodgingV1::TimeOfDay, decorator: Google::Apis::MybusinesslodgingV1::TimeOfDay::Representation
      
          property :checkin_time_exception, as: 'checkinTimeException'
          property :checkout_time, as: 'checkoutTime', class: Google::Apis::MybusinesslodgingV1::TimeOfDay, decorator: Google::Apis::MybusinesslodgingV1::TimeOfDay::Representation
      
          property :checkout_time_exception, as: 'checkoutTimeException'
          property :kids_stay_free, as: 'kidsStayFree'
          property :kids_stay_free_exception, as: 'kidsStayFreeException'
          property :max_child_age, as: 'maxChildAge'
          property :max_child_age_exception, as: 'maxChildAgeException'
          property :max_kids_stay_free_count, as: 'maxKidsStayFreeCount'
          property :max_kids_stay_free_count_exception, as: 'maxKidsStayFreeCountException'
          property :payment_options, as: 'paymentOptions', class: Google::Apis::MybusinesslodgingV1::PaymentOptions, decorator: Google::Apis::MybusinesslodgingV1::PaymentOptions::Representation
      
          property :smoke_free_property, as: 'smokeFreeProperty'
          property :smoke_free_property_exception, as: 'smokeFreePropertyException'
        end
      end
      
      class Pools
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult_pool, as: 'adultPool'
          property :adult_pool_exception, as: 'adultPoolException'
          property :hot_tub, as: 'hotTub'
          property :hot_tub_exception, as: 'hotTubException'
          property :indoor_pool, as: 'indoorPool'
          property :indoor_pool_exception, as: 'indoorPoolException'
          property :indoor_pools_count, as: 'indoorPoolsCount'
          property :indoor_pools_count_exception, as: 'indoorPoolsCountException'
          property :lazy_river, as: 'lazyRiver'
          property :lazy_river_exception, as: 'lazyRiverException'
          property :lifeguard, as: 'lifeguard'
          property :lifeguard_exception, as: 'lifeguardException'
          property :outdoor_pool, as: 'outdoorPool'
          property :outdoor_pool_exception, as: 'outdoorPoolException'
          property :outdoor_pools_count, as: 'outdoorPoolsCount'
          property :outdoor_pools_count_exception, as: 'outdoorPoolsCountException'
          property :pool, as: 'pool'
          property :pool_exception, as: 'poolException'
          property :pools_count, as: 'poolsCount'
          property :pools_count_exception, as: 'poolsCountException'
          property :wading_pool, as: 'wadingPool'
          property :wading_pool_exception, as: 'wadingPoolException'
          property :water_park, as: 'waterPark'
          property :water_park_exception, as: 'waterParkException'
          property :waterslide, as: 'waterslide'
          property :waterslide_exception, as: 'waterslideException'
          property :wave_pool, as: 'wavePool'
          property :wave_pool_exception, as: 'wavePoolException'
        end
      end
      
      class Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :built_year, as: 'builtYear'
          property :built_year_exception, as: 'builtYearException'
          property :floors_count, as: 'floorsCount'
          property :floors_count_exception, as: 'floorsCountException'
          property :last_renovated_year, as: 'lastRenovatedYear'
          property :last_renovated_year_exception, as: 'lastRenovatedYearException'
          property :rooms_count, as: 'roomsCount'
          property :rooms_count_exception, as: 'roomsCountException'
        end
      end
      
      class Services
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baggage_storage, as: 'baggageStorage'
          property :baggage_storage_exception, as: 'baggageStorageException'
          property :concierge, as: 'concierge'
          property :concierge_exception, as: 'conciergeException'
          property :convenience_store, as: 'convenienceStore'
          property :convenience_store_exception, as: 'convenienceStoreException'
          property :currency_exchange, as: 'currencyExchange'
          property :currency_exchange_exception, as: 'currencyExchangeException'
          property :elevator, as: 'elevator'
          property :elevator_exception, as: 'elevatorException'
          property :front_desk, as: 'frontDesk'
          property :front_desk_exception, as: 'frontDeskException'
          property :full_service_laundry, as: 'fullServiceLaundry'
          property :full_service_laundry_exception, as: 'fullServiceLaundryException'
          property :gift_shop, as: 'giftShop'
          property :gift_shop_exception, as: 'giftShopException'
          collection :languages_spoken, as: 'languagesSpoken', class: Google::Apis::MybusinesslodgingV1::LanguageSpoken, decorator: Google::Apis::MybusinesslodgingV1::LanguageSpoken::Representation
      
          property :self_service_laundry, as: 'selfServiceLaundry'
          property :self_service_laundry_exception, as: 'selfServiceLaundryException'
          property :social_hour, as: 'socialHour'
          property :social_hour_exception, as: 'socialHourException'
          property :twenty_four_hour_front_desk, as: 'twentyFourHourFrontDesk'
          property :twenty_four_hour_front_desk_exception, as: 'twentyFourHourFrontDeskException'
          property :wake_up_calls, as: 'wakeUpCalls'
          property :wake_up_calls_exception, as: 'wakeUpCallsException'
        end
      end
      
      class Sustainability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :energy_efficiency, as: 'energyEfficiency', class: Google::Apis::MybusinesslodgingV1::EnergyEfficiency, decorator: Google::Apis::MybusinesslodgingV1::EnergyEfficiency::Representation
      
          property :sustainability_certifications, as: 'sustainabilityCertifications', class: Google::Apis::MybusinesslodgingV1::SustainabilityCertifications, decorator: Google::Apis::MybusinesslodgingV1::SustainabilityCertifications::Representation
      
          property :sustainable_sourcing, as: 'sustainableSourcing', class: Google::Apis::MybusinesslodgingV1::SustainableSourcing, decorator: Google::Apis::MybusinesslodgingV1::SustainableSourcing::Representation
      
          property :waste_reduction, as: 'wasteReduction', class: Google::Apis::MybusinesslodgingV1::WasteReduction, decorator: Google::Apis::MybusinesslodgingV1::WasteReduction::Representation
      
          property :water_conservation, as: 'waterConservation', class: Google::Apis::MybusinesslodgingV1::WaterConservation, decorator: Google::Apis::MybusinesslodgingV1::WaterConservation::Representation
      
        end
      end
      
      class SustainabilityCertifications
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breeam_certification, as: 'breeamCertification'
          property :breeam_certification_exception, as: 'breeamCertificationException'
          collection :eco_certifications, as: 'ecoCertifications', class: Google::Apis::MybusinesslodgingV1::EcoCertification, decorator: Google::Apis::MybusinesslodgingV1::EcoCertification::Representation
      
          property :leed_certification, as: 'leedCertification'
          property :leed_certification_exception, as: 'leedCertificationException'
        end
      end
      
      class SustainableSourcing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eco_friendly_toiletries, as: 'ecoFriendlyToiletries'
          property :eco_friendly_toiletries_exception, as: 'ecoFriendlyToiletriesException'
          property :locally_sourced_food_and_beverages, as: 'locallySourcedFoodAndBeverages'
          property :locally_sourced_food_and_beverages_exception, as: 'locallySourcedFoodAndBeveragesException'
          property :organic_cage_free_eggs, as: 'organicCageFreeEggs'
          property :organic_cage_free_eggs_exception, as: 'organicCageFreeEggsException'
          property :organic_food_and_beverages, as: 'organicFoodAndBeverages'
          property :organic_food_and_beverages_exception, as: 'organicFoodAndBeveragesException'
          property :responsible_purchasing_policy, as: 'responsiblePurchasingPolicy'
          property :responsible_purchasing_policy_exception, as: 'responsiblePurchasingPolicyException'
          property :responsibly_sources_seafood, as: 'responsiblySourcesSeafood'
          property :responsibly_sources_seafood_exception, as: 'responsiblySourcesSeafoodException'
          property :vegan_meals, as: 'veganMeals'
          property :vegan_meals_exception, as: 'veganMealsException'
          property :vegetarian_meals, as: 'vegetarianMeals'
          property :vegetarian_meals_exception, as: 'vegetarianMealsException'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class Transportation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airport_shuttle, as: 'airportShuttle'
          property :airport_shuttle_exception, as: 'airportShuttleException'
          property :car_rental_on_property, as: 'carRentalOnProperty'
          property :car_rental_on_property_exception, as: 'carRentalOnPropertyException'
          property :free_airport_shuttle, as: 'freeAirportShuttle'
          property :free_airport_shuttle_exception, as: 'freeAirportShuttleException'
          property :free_private_car_service, as: 'freePrivateCarService'
          property :free_private_car_service_exception, as: 'freePrivateCarServiceException'
          property :local_shuttle, as: 'localShuttle'
          property :local_shuttle_exception, as: 'localShuttleException'
          property :private_car_service, as: 'privateCarService'
          property :private_car_service_exception, as: 'privateCarServiceException'
          property :transfer, as: 'transfer'
          property :transfer_exception, as: 'transferException'
        end
      end
      
      class ViewsFromUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beach_view, as: 'beachView'
          property :beach_view_exception, as: 'beachViewException'
          property :city_view, as: 'cityView'
          property :city_view_exception, as: 'cityViewException'
          property :garden_view, as: 'gardenView'
          property :garden_view_exception, as: 'gardenViewException'
          property :lake_view, as: 'lakeView'
          property :lake_view_exception, as: 'lakeViewException'
          property :landmark_view, as: 'landmarkView'
          property :landmark_view_exception, as: 'landmarkViewException'
          property :ocean_view, as: 'oceanView'
          property :ocean_view_exception, as: 'oceanViewException'
          property :pool_view, as: 'poolView'
          property :pool_view_exception, as: 'poolViewException'
          property :valley_view, as: 'valleyView'
          property :valley_view_exception, as: 'valleyViewException'
        end
      end
      
      class WasteReduction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compostable_food_containers_and_cutlery, as: 'compostableFoodContainersAndCutlery'
          property :compostable_food_containers_and_cutlery_exception, as: 'compostableFoodContainersAndCutleryException'
          property :composts_excess_food, as: 'compostsExcessFood'
          property :composts_excess_food_exception, as: 'compostsExcessFoodException'
          property :donates_excess_food, as: 'donatesExcessFood'
          property :donates_excess_food_exception, as: 'donatesExcessFoodException'
          property :food_waste_reduction_program, as: 'foodWasteReductionProgram'
          property :food_waste_reduction_program_exception, as: 'foodWasteReductionProgramException'
          property :no_single_use_plastic_straws, as: 'noSingleUsePlasticStraws'
          property :no_single_use_plastic_straws_exception, as: 'noSingleUsePlasticStrawsException'
          property :no_single_use_plastic_water_bottles, as: 'noSingleUsePlasticWaterBottles'
          property :no_single_use_plastic_water_bottles_exception, as: 'noSingleUsePlasticWaterBottlesException'
          property :no_styrofoam_food_containers, as: 'noStyrofoamFoodContainers'
          property :no_styrofoam_food_containers_exception, as: 'noStyrofoamFoodContainersException'
          property :recycling_program, as: 'recyclingProgram'
          property :recycling_program_exception, as: 'recyclingProgramException'
          property :refillable_toiletry_containers, as: 'refillableToiletryContainers'
          property :refillable_toiletry_containers_exception, as: 'refillableToiletryContainersException'
          property :safely_disposes_batteries, as: 'safelyDisposesBatteries'
          property :safely_disposes_batteries_exception, as: 'safelyDisposesBatteriesException'
          property :safely_disposes_electronics, as: 'safelyDisposesElectronics'
          property :safely_disposes_electronics_exception, as: 'safelyDisposesElectronicsException'
          property :safely_disposes_lightbulbs, as: 'safelyDisposesLightbulbs'
          property :safely_disposes_lightbulbs_exception, as: 'safelyDisposesLightbulbsException'
          property :safely_handles_hazardous_substances, as: 'safelyHandlesHazardousSubstances'
          property :safely_handles_hazardous_substances_exception, as: 'safelyHandlesHazardousSubstancesException'
          property :soap_donation_program, as: 'soapDonationProgram'
          property :soap_donation_program_exception, as: 'soapDonationProgramException'
          property :toiletry_donation_program, as: 'toiletryDonationProgram'
          property :toiletry_donation_program_exception, as: 'toiletryDonationProgramException'
          property :water_bottle_filling_stations, as: 'waterBottleFillingStations'
          property :water_bottle_filling_stations_exception, as: 'waterBottleFillingStationsException'
        end
      end
      
      class WaterConservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :independent_organization_audits_water_use, as: 'independentOrganizationAuditsWaterUse'
          property :independent_organization_audits_water_use_exception, as: 'independentOrganizationAuditsWaterUseException'
          property :linen_reuse_program, as: 'linenReuseProgram'
          property :linen_reuse_program_exception, as: 'linenReuseProgramException'
          property :towel_reuse_program, as: 'towelReuseProgram'
          property :towel_reuse_program_exception, as: 'towelReuseProgramException'
          property :water_saving_showers, as: 'waterSavingShowers'
          property :water_saving_showers_exception, as: 'waterSavingShowersException'
          property :water_saving_sinks, as: 'waterSavingSinks'
          property :water_saving_sinks_exception, as: 'waterSavingSinksException'
          property :water_saving_toilets, as: 'waterSavingToilets'
          property :water_saving_toilets_exception, as: 'waterSavingToiletsException'
        end
      end
      
      class Wellness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doctor_on_call, as: 'doctorOnCall'
          property :doctor_on_call_exception, as: 'doctorOnCallException'
          property :elliptical_machine, as: 'ellipticalMachine'
          property :elliptical_machine_exception, as: 'ellipticalMachineException'
          property :fitness_center, as: 'fitnessCenter'
          property :fitness_center_exception, as: 'fitnessCenterException'
          property :free_fitness_center, as: 'freeFitnessCenter'
          property :free_fitness_center_exception, as: 'freeFitnessCenterException'
          property :free_weights, as: 'freeWeights'
          property :free_weights_exception, as: 'freeWeightsException'
          property :massage, as: 'massage'
          property :massage_exception, as: 'massageException'
          property :salon, as: 'salon'
          property :salon_exception, as: 'salonException'
          property :sauna, as: 'sauna'
          property :sauna_exception, as: 'saunaException'
          property :spa, as: 'spa'
          property :spa_exception, as: 'spaException'
          property :treadmill, as: 'treadmill'
          property :treadmill_exception, as: 'treadmillException'
          property :weight_machine, as: 'weightMachine'
          property :weight_machine_exception, as: 'weightMachineException'
        end
      end
    end
  end
end
