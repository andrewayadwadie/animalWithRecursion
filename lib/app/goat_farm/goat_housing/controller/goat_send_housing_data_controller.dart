import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../goat_general_management/service/goat_send_general_data_service.dart';
import 'goat_animal_pens_radio_controller.dart';
import 'goat_barn_umberella_radio_controller.dart';
import 'goat_clean_floor_radio_controller.dart';
import 'goat_clean_watering_radio_controller.dart';
import 'goat_drinking_radio_controller.dart';
import 'goat_farm_fence_radio_controller.dart';
import 'goat_feeding_clean_radio_controller.dart';
import 'goat_feeding_status_radio_controller.dart';
import 'goat_fence_broken_or_not_radio_controller.dart';
import 'goat_housig_floor_type_controller.dart';
import 'goat_housing_textfield_controller.dart';
import 'goat_location_feeding_controller.dart';
import 'goat_watering_location_radio_controlling.dart';

class GoatHousingSendDataController extends GetxController {
  GoatPensRadioController pensRadioCtrl = Get.put(GoatPensRadioController());
  GoatBarnUmberellaController barnUmberellaCtrl =
      Get.put(GoatBarnUmberellaController());
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendGoatHerdDataController sendDataCtrl =
      Get.put(SendGoatHerdDataController());
  GoatBrokenFenceController broken = Get.put(GoatBrokenFenceController());
  GoatHousingFloorTypeController floortypeCtrl =
      Get.put(GoatHousingFloorTypeController());

  GoatCleanFloorController cleanFloorCtrl = Get.put(GoatCleanFloorController());
  GoatWateringLocationController wateringLocationCtrl =
      Get.put(GoatWateringLocationController());

  GoatCleanWateringController cleanWateringCtrl =
      Get.put(GoatCleanWateringController());
  GoatDinkingRadioController dinkingCtrl =
      Get.put(GoatDinkingRadioController());
  GoatFeedingLocationController feedingLocationCtrl =
      Get.put(GoatFeedingLocationController());
  GoatCleanFeedingController cleanFeedingCtrl =
      Get.put(GoatCleanFeedingController());
  GoatFeedingStausRadioController feedingStatusCtrl =
      Get.put(GoatFeedingStausRadioController());
  GoatHousingTextFieldController textCtrl =
      Get.put(GoatHousingTextFieldController());

  GoatFenceController fenceCtrl = Get.put(GoatFenceController());
  void fillGoatHousingAnswerList() {
    //!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(id: 48, answer: textCtrl.barnsNo);
    sendDataCtrl.addAnswer(id: 49, answer: textCtrl.barnArea);
    sendDataCtrl.addAnswer(id: 50, answer: textCtrl.animalBarn);
    sendDataCtrl.addAnswer(id: 62, answer: textCtrl.wateringNo);
    sendDataCtrl.addAnswer(id: 69, answer: textCtrl.drinkNo);
    sendDataCtrl.addAnswer(id: 70, answer: textCtrl.feedsNo);
    sendDataCtrl.addAnswer(id: 77, answer: textCtrl.regimenfeedsNo);
    //!--------------------------
    //* Radio button
    if (pensRadioCtrl.charcter == GoatPensRadio.yes) {
      sendDataCtrl.addAnswer(id: 46, answer: "");
    } else if (pensRadioCtrl.charcter == GoatPensRadio.no) {
      sendDataCtrl.addAnswer(id: 47, answer: "");
    } else if (pensRadioCtrl.charcter == GoatPensRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 322, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (barnUmberellaCtrl.charcter == GoatBarnUmberella.yes) {
      sendDataCtrl.addAnswer(id: 51, answer: "");
    } else if (barnUmberellaCtrl.charcter == GoatBarnUmberella.no) {
      sendDataCtrl.addAnswer(id: 52, answer: "");
    } else if (barnUmberellaCtrl.charcter == GoatBarnUmberella.noAnswer) {
      sendDataCtrl.addAnswer(id: 323, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (fenceCtrl.charcter == GoatFence.yes) {
      sendDataCtrl.addAnswer(id: 420, answer: "");
    } else if (fenceCtrl.charcter == GoatFence.no) {
      sendDataCtrl.addAnswer(id: 421, answer: "");
    } else if (fenceCtrl.charcter == GoatFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 422, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (broken.charcter == GoatBrokenFence.broken) {
      sendDataCtrl.addAnswer(id: 53, answer: "");
    } else if (broken.charcter == GoatBrokenFence.good) {
      sendDataCtrl.addAnswer(id: 54, answer: "");
    } else if (broken.charcter == GoatBrokenFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 324, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (floortypeCtrl.floorTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 55, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 56, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 57, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 4) {
      sendDataCtrl.addAnswer(id: 58, answer: "");
    }
    if (floortypeCtrl.floorTypeId.value == 5) {
      sendDataCtrl.addAnswer(id: 59, answer: "");
    }
    if (floortypeCtrl.floorTypeText.value == 'Floor Type') {
      sendDataCtrl.addAnswer(id: 325, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFloorCtrl.charcter == GoatCleanFloor.clean) {
      sendDataCtrl.addAnswer(id: 60, answer: "");
    } else if (cleanFloorCtrl.charcter == GoatCleanFloor.unClean) {
      sendDataCtrl.addAnswer(id: 61, answer: "");
    } else if (cleanFloorCtrl.charcter == GoatCleanFloor.noAnswer) {
      sendDataCtrl.addAnswer(id: 326, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wateringLocationCtrl.charcter == GoatWateringLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 63, answer: "");
    } else if (wateringLocationCtrl.charcter == GoatWateringLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 64, answer: "");
    } else if (wateringLocationCtrl.charcter == GoatWateringLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 327, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanWateringCtrl.charcter == GoatCleanWatering.clean) {
      sendDataCtrl.addAnswer(id: 65, answer: "");
    } else if (cleanWateringCtrl.charcter == GoatCleanWatering.unClean) {
      sendDataCtrl.addAnswer(id: 66, answer: "");
    } else if (cleanWateringCtrl.charcter == GoatCleanWatering.noAnswer) {
      sendDataCtrl.addAnswer(id: 328, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (dinkingCtrl.charcter == GoatDinkingRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 67, answer: "");
    } else if (dinkingCtrl.charcter == GoatDinkingRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 68, answer: "");
    } else if (dinkingCtrl.charcter == GoatDinkingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 329, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingLocationCtrl.charcter == GoatFeedingLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 71, answer: "");
    } else if (feedingLocationCtrl.charcter == GoatFeedingLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 72, answer: "");
    } else if (feedingLocationCtrl.charcter == GoatFeedingLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 330, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == GoatCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 73, answer: "");
    } else if (cleanFeedingCtrl.charcter == GoatCleanFeeding.unClean) {
      sendDataCtrl.addAnswer(id: 74, answer: "");
    } else if (cleanFeedingCtrl.charcter == GoatCleanFeeding.noAnswer) {
      sendDataCtrl.addAnswer(id: 331, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingStatusCtrl.charcter == GoatFeedingStausRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 75, answer: "");
    } else if (feedingStatusCtrl.charcter ==
        GoatFeedingStausRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 76, answer: "");
    } else if (feedingStatusCtrl.charcter == GoatFeedingStausRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 332, answer: "");
    }
  }

  void sendGoatHousingData(BuildContext context) async {
    var res = await SendGoatGeneralDataService.sendGoatGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setGoatStatusValue(2);

      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      sendDataCtrl.answers.clear();
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
      sendDataCtrl.answers.clear();
      Get.snackbar(
        'Error',
        "there are problem ,can't send data.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    } else if (res.runtimeType == String) {
      sendDataCtrl.answers.clear();
      Get.snackbar(
        'Error',
        "there are problem ,can't send data.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    }
    log("message : $res");
  }
}
