import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../horse_general_management/service/horse_send_general_data_service.dart';
import 'horse_animal_pens_radio_controller.dart';
import 'horse_barn_umberella_radio_controller.dart';
import 'horse_clean_floor_radio_controller.dart';
import 'horse_clean_watering_radio_controller.dart';
import 'horse_drinking_radio_controller.dart';
import 'horse_farm_fence_radio_controller.dart';
import 'horse_feeding_clean_radio_controller.dart';
import 'horse_feeding_status_radio_controller.dart';
import 'horse_fence_broken_or_not_radio_controller.dart';
import 'horse_housig_floor_type_controller.dart';
import 'horse_housing_textfield_controller.dart';
import 'horse_location_feeding_controller.dart';
import 'horse_watering_location_radio_controlling.dart';

class HorseHousingSendDataController extends GetxController {
  HorsePensRadioController pensRadioCtrl = Get.put(HorsePensRadioController());
  HorseBarnUmberellaController barnUmberellaCtrl =
      Get.put(HorseBarnUmberellaController());
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());
  HorseBrokenFenceController broken = Get.put(HorseBrokenFenceController());
  HorseHousingFloorTypeController floortypeCtrl =
      Get.put(HorseHousingFloorTypeController());

  HorseCleanFloorController cleanFloorCtrl =
      Get.put(HorseCleanFloorController());
  HorseWateringLocationController wateringLocationCtrl =
      Get.put(HorseWateringLocationController());

  HorseCleanWateringController cleanWateringCtrl =
      Get.put(HorseCleanWateringController());
  HorseDinkingRadioController dinkingCtrl =
      Get.put(HorseDinkingRadioController());
  HorseFeedingLocationController feedingLocationCtrl =
      Get.put(HorseFeedingLocationController());
  HorseCleanFeedingController cleanFeedingCtrl =
      Get.put(HorseCleanFeedingController());
  HorseFeedingStausRadioController feedingStatusCtrl =
      Get.put(HorseFeedingStausRadioController());
  HorseHousingTextFieldController textCtrl =
      Get.put(HorseHousingTextFieldController());
  HorseFenceController fenceCtrl = Get.put(HorseFenceController());
  void fillHorseHousingAnswerList() {
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
    if (pensRadioCtrl.charcter == HorsePensRadio.yes) {
      sendDataCtrl.addAnswer(id: 46, answer: "");
    } else if (pensRadioCtrl.charcter == HorsePensRadio.no) {
      sendDataCtrl.addAnswer(id: 47, answer: "");
    } else if (pensRadioCtrl.charcter == HorsePensRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 322, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (fenceCtrl.charcter == HorseFence.yes) {
      sendDataCtrl.addAnswer(id: 420, answer: "");
    } else if (fenceCtrl.charcter == HorseFence.no) {
      sendDataCtrl.addAnswer(id: 421, answer: "");
    } else if (fenceCtrl.charcter == HorseFence.noAnswer) {
      sendDataCtrl.addAnswer(id: 422, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (barnUmberellaCtrl.charcter == HorseBarnUmberella.yes) {
      sendDataCtrl.addAnswer(id: 51, answer: "");
    } else if (barnUmberellaCtrl.charcter == HorseBarnUmberella.no) {
      sendDataCtrl.addAnswer(id: 52, answer: "");
    } else if (barnUmberellaCtrl.charcter == HorseBarnUmberella.noAnswer) {
      sendDataCtrl.addAnswer(id: 323, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (broken.charcter == HorseBrokenFence.broken) {
      sendDataCtrl.addAnswer(id: 53, answer: "");
    } else if (broken.charcter == HorseBrokenFence.good) {
      sendDataCtrl.addAnswer(id: 54, answer: "");
    } else if (broken.charcter == HorseBrokenFence.noAnswer) {
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
    if (cleanFloorCtrl.charcter == HorseCleanFloor.clean) {
      sendDataCtrl.addAnswer(id: 60, answer: "");
    } else if (cleanFloorCtrl.charcter == HorseCleanFloor.unClean) {
      sendDataCtrl.addAnswer(id: 61, answer: "");
    } else if (cleanFloorCtrl.charcter == HorseCleanFloor.noAnswer) {
      sendDataCtrl.addAnswer(id: 326, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (wateringLocationCtrl.charcter == HorseWateringLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 63, answer: "");
    } else if (wateringLocationCtrl.charcter ==
        HorseWateringLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 64, answer: "");
    } else if (wateringLocationCtrl.charcter ==
        HorseWateringLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 327, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanWateringCtrl.charcter == HorseCleanWatering.clean) {
      sendDataCtrl.addAnswer(id: 65, answer: "");
    } else if (cleanWateringCtrl.charcter == HorseCleanWatering.unClean) {
      sendDataCtrl.addAnswer(id: 66, answer: "");
    } else if (cleanWateringCtrl.charcter == HorseCleanWatering.noAnswer) {
      sendDataCtrl.addAnswer(id: 328, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (dinkingCtrl.charcter == HorseDinkingRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 67, answer: "");
    } else if (dinkingCtrl.charcter == HorseDinkingRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 68, answer: "");
    } else if (dinkingCtrl.charcter == HorseDinkingRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 329, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingLocationCtrl.charcter == HorseFeedingLocation.underCanopy) {
      sendDataCtrl.addAnswer(id: 71, answer: "");
    } else if (feedingLocationCtrl.charcter == HorseFeedingLocation.outdoors) {
      sendDataCtrl.addAnswer(id: 72, answer: "");
    } else if (feedingLocationCtrl.charcter == HorseFeedingLocation.noAnswer) {
      sendDataCtrl.addAnswer(id: 330, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (cleanFeedingCtrl.charcter == HorseCleanFeeding.clean) {
      sendDataCtrl.addAnswer(id: 73, answer: "");
    } else if (cleanFeedingCtrl.charcter == HorseCleanFeeding.unClean) {
      sendDataCtrl.addAnswer(id: 74, answer: "");
    } else if (cleanFeedingCtrl.charcter == HorseCleanFeeding.noAnswer) {
      sendDataCtrl.addAnswer(id: 331, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feedingStatusCtrl.charcter == HorseFeedingStausRadio.availableAllDay) {
      sendDataCtrl.addAnswer(id: 75, answer: "");
    } else if (feedingStatusCtrl.charcter ==
        HorseFeedingStausRadio.specificTimesaDay) {
      sendDataCtrl.addAnswer(id: 76, answer: "");
    } else if (feedingStatusCtrl.charcter == HorseFeedingStausRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 332, answer: "");
    }
  }

  void sendHorseHousingData(BuildContext context) async {
    var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setHorseStatusValue(2);

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
